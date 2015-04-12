unit unpack;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, Buttons, StrUtils, Zlib,
  FileCtrl;


  type TDanePliku = record
    filename:string;
    packedsize: Integer;
    unpackedsize:integer;
    compresed:integer;
    position:longint;
  end;

  function znajdz_plik(FileName,szukamy:string):Longint;
//  function znajdz_plik_wg_rozmiaru_i_nazwy(FileName,szukamy:string;rozmiar:LongInt):Longint;

  procedure MyCreateDir(s: string);
  procedure wypakuj_plik(DatName,FileName,size,packedsize,pos:string;spakowany:integer;sciezka_docelowa:string);
  procedure comprstreamtofile(st:Tstream;filename:string;realsize:longword);

  var
     buffer:pointer;
     DatFileName,MainDir:string;
     plik_z_dat:TDanePliku;


  const
     BufSize=$10000 ;

implementation
uses unit_main;

{
*************************************************************
*  Wyszukuje podany plik i zwraca jego dane do rekordu plik *
*************************************************************
}
function znajdz_plik(FileName,szukamy:string):Longint;
var
   f: file;
   listsize,size: Longint;
   buf: Longint;
   nazwa:array[0..250] of Char;
   znaleziony_plik:string;
   buf1:string[13];

begin
  result:=0;
  if not fileexists(Filename) then
  begin
    result:=0;
    exit;
  end;

  AssignFile(f, FileName);
  Reset(f,1);
                             //Wczytanie headera
  Seek(F, FileSize(F)-8);
  BlockRead(F, listsize, 4);
//  listsize:= listsize-4;
  BlockRead(F, size, 4);
//  position:=size-listsize-4;
  Seek(F, size-listsize-4);

                             //Pêtla sprawdzaj¹ca wszystkie pozycje
//  repeat
  while (FilePos(F)< (size-8)) do
  begin
    nazwa:='';
    znaleziony_plik:='';
    buf:=0;
    BlockRead(F, Buf, 4);
    BlockRead(F, nazwa, Buf);
//    znaleziony_plik:=extractfilename(nazwa);
    znaleziony_plik:=extractfiledir(nazwa)+'\'+extractfilename(nazwa);
//        showmessage('::'+znaleziony_plik+'::');
    if lowercase(szukamy)=lowercase(znaleziony_plik) then
    begin
//           showmessage('::'+znaleziony_plik+'::'+' w ' + FileName);
      plik_z_dat.filename:=znaleziony_plik;
      BlockRead(F, plik_z_dat.compresed, 1);
      BlockRead(F, plik_z_dat.unpackedsize, 4);
      BlockRead(F, plik_z_dat.packedsize, 4);
      BlockRead(F, plik_z_dat.position, 4);
      result:=1;
      break;
    end;
{    BlockRead(F, buf, 1);
    BlockRead(F, buf, 4);
    BlockRead(F, buf, 4);
    BlockRead(F, buf, 4);}
    BlockRead(F, buf1, 13);
//        showmessage(inttostr((size-8)-FilePos(F)));
  end;
//  until (FilePos(F)>= (size-8));

  CloseFile(f);
end;


{
*********************************************************
*   Procedura wypakowuje wybrany plik z FALLOUT2 *.dat  *
*********************************************************
}
procedure wypakuj_plik(DatName,FileName,size,packedsize,pos:string;spakowany:integer;sciezka_docelowa:string);
var
   f,f2: file;
   position,filesize,l,r: Longint;
//   Buf: PChar;
   plik_zapakowany:Tfilestream;
//   nazwa:string ;

begin
//    MyCreateDir(F2Folder+sciezka_docelowa);
    mainDir:=extractfiledir(application.ExeName)+ '\';
//    MainDir:='c:\';
    position:=strtoint(pos);
    filesize:=strtoint(packedsize);

    if not fileexists(DatName) then
       exit;
    try
      buffer:=nil;
      getmem (buffer, bufSize);
      AssignFile(f, DatName);
      Reset(f,1);
      Seek(F, position);
//      Showmessage('ustawiona pozycja :'+inttostr(position));
      l:=filesize;
      AssignFile(f2,MainDir+'Tempundat.tmp');
      rewrite(f2,1);
      while l>0 do
      begin
//      showmessage('Start petli zapisu');
         if filesize>bufsize then r:=bufSize else r:=l;
         blockread(f, buffer^ ,r ,r);
         blockwrite(f2,buffer^,r);
         l:=l-r;
      end;
      finally
      CloseFile(f);
      CloseFile(f2);
      freemem (buffer, bufSize);
      end;
//      showmessage('Koniec petli');
//      application.ProcessMessages;
      if (fileexists(MainDir+'Tempundat.tmp')) then
      begin
         if (spakowany=1) then
          begin
           try
             plik_zapakowany:=Tfilestream.Create(MainDir+'Tempundat.tmp',fmOpenRead);
//             showmessage('Otwarto plik do rozpakowania');
             comprstreamtofile(plik_zapakowany,sciezka_docelowa+extractfilename(FileName),strtoint(size));
//             showmessage('Rozpakowano');
           finally
              plik_zapakowany.Free;
           end;
          end
          else
          begin
             renamefile(MainDir+'Tempundat.tmp',sciezka_docelowa+extractfilename(FileName));
             showmessage('zmieniono nazwe pliku');
          end;
      end
      else
      ShowMessage(Pchar('Nie uda³o siê utworzyæ pliku'));

      deletefile(MainDir+'Tempundat.tmp');
end;



{
*********************************************************
*   Dekompresuje zapakowany plik w archiwum             *
*********************************************************
}
procedure comprstreamtofile(st:Tstream;filename:string;realsize:longword);
var
decs:tdecompressionstream;
fs:tfilestream;
begin
// create the decompression stream it automaticaly takes the
// stream provided by st
decs:=tdecompressionstream.Create(st);
decs.Position:=0;
// thats the file where the decompressed content will be written to
fs:=tfilestream.Create(filename,fmcreate or fmsharedenywrite);
//showmessage('copy from the decs stream to the file');
fs.CopyFrom(decs,realsize);
//showmessage('Delphi should do that on itself but you never know');
fs.free;
decs.free;
end;


{
*********************************************************
*   Tworzy podan¹ œcie¿kê folderów (from F1 undat)      *
*********************************************************
}
procedure MyCreateDir(s: string);
var i:integer;
    p, r: string;
begin
   if s='' then exit;
   if s[Length(s)]<>'\' then s:=s+'\';
   r:='';
   i:=1;
   while i<>0 do
   begin
      i:=pos('\',s);
      if i<>0 then
      begin
         p:=copy(s,1,i-1);
         delete(s,1,i);
         r:=r+p+'\';
         CreateDir(r);
      end;
   end;
end;
      {
function znajdz_plik_wg_rozmiaru_i_nazwy(FileName,szukamy:string;rozmiar:LongInt):Longint;
var
   f: file;
   listsize,size,position: Longint;
   buf: Longint;
   nazwa:array[0..250] of Char;
   znaleziony_plik:string;

begin
  result:=0;
  if not fileexists(Filename) then
  begin
    result:=0;
    exit;
  end;

  AssignFile(f, FileName);
  Reset(f,1);
                             //Wczytanie headera
  Seek(F, FileSize(F)-8);
  BlockRead(F, listsize, 4);
  listsize:= (listsize-4);
  BlockRead(F, size, 4);
  position:=(size-listsize)-8;
  Seek(F, position);
                             //Pêtla sprawdzaj¹ca wszystkie pozycje
//  while (FilePos(F) < (size-8)) do
//  begin
  repeat
    nazwa:='';
    znaleziony_plik:='';
    buf:=0;
    BlockRead(F, Buf, 4);
    BlockRead(F, nazwa, Buf);
    znaleziony_plik:=extractfilename(nazwa);
    znaleziony_plik:=extractfiledir(nazwa)+'\'+znaleziony_plik;
//        showmessage('::'+znaleziony_plik+'::');

    if lowercase(szukamy)=lowercase(znaleziony_plik) then
    begin
//           showmessage('::'+znaleziony_plik+'::'+' w ' + FileName);
      plik_z_dat.filename:=znaleziony_plik;
      BlockRead(F, plik_z_dat.compresed, 1);
      BlockRead(F, plik_z_dat.unpackedsize, 4);
      BlockRead(F, plik_z_dat.packedsize, 4);
      BlockRead(F, plik_z_dat.position, 4);
      if plik_z_dat.unpackedsize=rozmiar then
      begin
        result:=1;
      end;
      break;
    end;
    BlockRead(F, buf, 1);
    BlockRead(F, buf, 4);
    BlockRead(F, buf, 4);
    BlockRead(F, buf, 4);
//        showmessage(inttostr((size-8)-FilePos(F)));
  until (FilePos(F)>= (size-8));
//  end;

  CloseFile(f);
end; }
end.
