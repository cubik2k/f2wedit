unit Unit_About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ShellApi, MPlayer;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2a: TLabel;
    BitBtn_OK: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn_OKClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label10Click(Sender: TObject);
    procedure Label10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    function GetVersion(sFileName:string): string;
    procedure Label14Click(Sender: TObject);
    procedure Label14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;
  wersja:String;
  data:string='10 September, 2014';    // wersja='1.4.9.28';
  autor:string='Cubik: cubik2k@gmail.com';
  nazwa_programu:string='Items prototype editor for Fallout 1/2';
  email:string='mailto:cubik2k@gmail.com';
  credits:string='Thanks to TeamX for documentation of proto files.';
  credits_2:string='Thanks to Jargo for "unpack.pas" unit.';
  credits_3:string='Thanks to Timeslip for sfall v1.37 (and up) with additional weapon animations codes from o-t.';
  credits_4:string='Thanks to ABel [TeamX] for "Fallout 1 DAT-file extractor v1.2" Delphi source code.';
  url:string='homepage';

implementation

uses Unit_Main;

{$R *.dfm}
function TAboutBox.GetVersion(sFileName:string): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(sFileName), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(sFileName), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;


procedure TAboutBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  Form_Main.Update;
end;

procedure TAboutBox.FormDestroy(Sender: TObject);
begin
  AboutBox:=nil;
end;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
  wersja:=GetVersion('f2wedit.exe');
  Label1.Caption:=Application.Title;
  Label2.Caption:=wersja;
  Label2a.Caption:=data;
  Label3.Caption:=autor;
  Label4.Caption:=nazwa_programu;
  Label7.Caption:=credits;
  Label8.Caption:=credits_2;
  Label11.Caption:=credits_3;
  Label12.Caption:=credits_4;

  Label10.Caption:=url;
//  Label7.Caption:='url';
end;

procedure TAboutBox.BitBtn_OKClick(Sender: TObject);
begin
  AboutBox.Close;
  AboutBox:=nil;
end;

procedure TAboutBox.Label3Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', Pchar(email), nil, nil, SW_SHOWNORMAL);
end;

procedure TAboutBox.Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label3.Font.Color:=clRed;
  Label3.Font.Style := [fsUnderline,fsBold];
end;

procedure TAboutBox.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label3.Font.Color:=clMaroon;
  Label3.Font.Style:=[fsBold];

  Label10.Font.Color:=clMaroon;
  Label10.Font.Style:=[fsBold];

end;

procedure TAboutBox.Label10Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','http://cubik2k.w.interia.pl',nil,nil,SW_SHOWNORMAL);
end;

procedure TAboutBox.Label10MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label10.Font.Color:=clRed;
  Label10.Font.Style := [fsUnderline,fsBold];
end;

procedure TAboutBox.Label14Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','http://www.nma-fallout.com/showthread.php?196393-New-tools-for-Fallout-1-2',nil,nil,SW_SHOWNORMAL);

end;

procedure TAboutBox.Label14MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label14.Font.Color:=clRed;
  Label14.Font.Style := [fsUnderline,fsBold];
end;

end.



