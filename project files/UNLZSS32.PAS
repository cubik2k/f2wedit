{
  Changed by Alexander Belyakov: only decompression procs were kept,
  the unit was renamed from LZSS32 to UNLZSS32. UnSquash was
  changed to work directly with input file, and user's buffer is now
  used as the output. ScanHelp comments were removed.
  Also, to extract files from Fallout1 DAT-files, the Binary Tree
  should be filles with 0x20 instead of 0.


  LZ77 compression for 32-bit Delphi 2: Ported by C.J.Rankin from
  the 16-bit unit LZSSUnit.

  Rumour has it that the Pentium Pro cannot handle `partial register
  loads' efficiently; apparently, assigning a value to AL,AH,AX (e.g.)
  and then reading EAX, or assigning AL,AH and reading AX causes the
  pipelines to stall. Call me optimistic/pedantic, but I have tried to
  avoid this where possible.


  Original unit credits:
   Assembler Programmer: Andy Tam, Pascal Conversion: Douglas Webb,
   Unit Conversion and Dynamic Memory Allocation: Andrew Eigus.

   Written by Andrew Eigus (aka: Mr. Byte) of:
   Fidonet: 2:5100/33,
   Internet: aeigus@fgate.castle.riga.lv, aeigus@kristin.cclu.lv.
}
unit UNLZSS32;

interface

const Log2TLZSSWord = 2;

type TLZSSWord = Cardinal;

const
  LZRWBufSize = 32000{8192};  { Read Buffer Size }

const
  N         = 4096;
  F         =   18;
  Threshold =    2;
  Nul       = N*SizeOf(TLZSSWord);

var
  InBufPtr:  TLZSSWord = LZRWBufSize;
  InBufSize: TLZSSWord = LZRWBufSize;
  OutBufPtr: TLZSSWord = 0;

type
  TLZRWBuffer = array[0..LZRWBufSize - 1] of Byte; { file buffers }

  TLZTextBuf = array[0..N + F - 2] of Byte;
  TLeftMomTree = array[0..N] of TLZSSWord;
  TRightTree = array[0..N + 256] of TLZSSWord;

  PBinaryTree = ^TBinaryTree;
  TBinaryTree = record
                  TextBuf: TLZTextBuf;
                  Left:    TLeftMomTree;
                  Right:   TRightTree;
                  Mom:     TLeftMomTree
                end;

function LZUnSquash (var f: file; var buffer; size: integer): integer;

implementation
var BinaryTree: TBinaryTree;
    InBuf:     TLZRWBuffer;
    OutBuf:    TLZRWBuffer;

    usersFile: ^file;
    usersBuffer: pointer;
    packedLen: integer;
    unpackedLen: integer;

function LZSS_Read: TLZSSWord;    { Returns # of bytes read }
var len: integer;
begin
  if packedLen > LZRWBufSize then len := LZRWBufSize else len := packedLen;
  if len = 0 then Result := 0
  else begin
     blockRead(UsersFile^, InBuf, len, Result);
     dec (packedLen, len);
  end;
end; { LZSS_Read }

function LZSS_Write: TLZSSWord;  { Returns # of bytes written }
begin
  move (OutBuf, usersBuffer^, OutBufPtr);
  inc (integer(usersBuffer), OutBufPtr);
  inc (unpackedLen, OutBufPtr);
  result := outbufptr;
end; { LZSS_Write }

procedure GetC; assembler;
{
  GetC : return a character from the buffer
          RETURN : AL = input char
                   Carry set when EOF
}
asm
{                                          }
{ Check for characters in Input Buffer ... }
{                                          }
  MOV EAX, InBufPtr
  CMP EAX, InBufSize
  JB @GetC2
{                                           }
{ All chars read. Need to refill buffer ... }
{                                           }
  PUSHAD
  CALL LZSS_Read
  MOV InBufSize, EAX
  TEST EAX, EAX
  POPAD
  JNZ @GetC1
{                                        }
{ No bytes read, so EOF: set carry flag. }
{                                        }
  STC
  JMP @Exit
@GetC1:
  XOR EAX, EAX
@GetC2:
  PUSH EBX
  MOV EBX, offset InBuf
  MOV EBX, [EBX+EAX]    // Only interested in BL
  INC EAX
  MOV [OFFSET InBufPtr], EAX
  MOV EAX, EBX  // Only interested in AL
  POP EBX
  CLC
@Exit:
end;

procedure PutC; assembler;
{
  PutC : put a character into the output buffer
             Entry : AL = output char
}
asm
  PUSH EBX
{                               }
{ Store AL in Output buffer ... }
{                               }
  MOV EBX, [OFFSET OutBufPtr]
  PUSH EDI
  MOV EDI, offset OutBuf
  MOV [EBX+EDI], AL
  POP EDI
{                                  }
{ Check whether buffer is full ... }
{                                  }
  INC EBX
  CMP EBX, LZRWBufSize
  MOV [OFFSET OutBufPtr], EBX
  POP EBX
  JB @Exit
{                                                                          }
{ Buffer *IS* full, so flush it (having just set OutBufPtr to LZWRBufSize) }
{                                                                          }
  PUSHAD
  CALL LZSS_Write  // Returns bytes written in EAX ... (not!)
  POPAD
  XOR EAX, EAX
  MOV [OFFSET OutBufPtr], EAX
@Exit:
end;

procedure LZDecode; assembler;
asm
{                                       }
{ Need to preserve registers for Delphi }
{                                       }
  PUSHAD
{                }
{ Initialise ... }
{                }
  XOR EDX, EDX
  MOV EDI, N-F
  MOV ESI, OFFSET BinaryTree // First field in BTree is TextBuf
{                }
{ Main loops ... }
{                }
@Decode2:
  SHR EDX, 1
  TEST DH, DH
  JNZ @Decode3
  CALL GetC
  JC @Exit
  MOV DH, $FF
  MOV DL, AL
@Decode3:
  CALL GetC
  JC @Exit
// Two alternatives ... Either:
  TEST DL, 1
  JZ @Decode4
// Or:
//  bt edx, 0
//  jnc @Decode4
  MOV [ESI+EDI], AL
  INC EDI
  AND EDI, N-1
  CALL PutC
  JMP @Decode2
@Decode4:
  MOV EBX, EAX   // Only require MOV BL, AL
  CALL GetC
  JC @Exit
  MOV BH, AL
  SHR BH, 4
  MOVZX ECX, AL
  AND CL, $F
  ADD CL, Threshold
  INC ECX
@Decode5:
  AND EBX, N-1
  MOV EAX, [ESI+EBX]  // Only interested in AL ...
  MOV [ESI+EDI], AL
  INC EDI
  AND EDI, N-1
  CALL PutC
  INC EBX
  DEC ECX
  JNZ @Decode5
  JMP @Decode2
{                                               }
{ Restore registers and flush Output buffer ... }
{                                               }
@Exit:
  POPAD
  CALL LZSS_Write
end;

function LZUnSquash(var f: file; var buffer; size: integer): integer;
Begin
   InBufPtr := LZRWBufSize;
   InBufSize := LZRWBufSize;
   OutBufPtr := 0;
//    FillChar(BinaryTree.TextBuf, SizeOf(TLZTextBuf), 0);
   FillChar(BinaryTree.TextBuf, SizeOf(TLZTextBuf), 32);

   usersFile := @f;
   usersBuffer := @buffer;
   packedLen := size;
   unpackedLen := 0;

   LZDecode;

   result := unpackedLen;
End; { LZUnSquash }

end.