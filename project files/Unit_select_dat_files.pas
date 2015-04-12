unit Unit_select_dat_files;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Inifiles, FileCtrl;

type
  TForm_select_dat_files = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    BitBtn4: TBitBtn;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_select_dat_files: TForm_select_dat_files;
  dat_files_in_game_dir:String[1];

implementation

uses Unit_Main;

{$R *.dfm}





procedure TForm_select_dat_files.BitBtn4Click(Sender: TObject);
begin
  SelectDirectory('Select Fallout (1/2) MAIN directory:','',F2Folder);
  Edit4.Text:=F2Folder;

  CheckBox2.Caption:='Select *.DAT files from game directory: ' + '[' + F2Folder  + ']';

  if CheckBox2.Checked=True then
  begin
    plik_master_dat:=F2Folder+'\master.dat';
    plik_critter_dat:=F2Folder+'\critter.dat';
    //plik_patch000_dat:=F2Folder+'\patch000.dat';
    //plik_patch000_dat:='';

    Edit1.Text:=plik_master_dat;
    Edit2.Text:=plik_critter_dat;
    //Edit3.Text:=plik_patch000_dat;

    Edit1.Enabled:=False;
    Edit2.Enabled:=False;
    //Edit3.Enabled:=False;

    BitBtn1.Enabled:=False;
    BitBtn2.Enabled:=False;
    //BitBtn3.Enabled:=False;
  end;
end;

procedure TForm_select_dat_files.BitBtn1Click(Sender: TObject);
begin
  PromptForFileName(plik_master_dat,
                       'master.dat file (*.dat)|*.dat',
                       '*.dat',
                       'Select MASTER.DAT file',
                       '',
                       False);  // Means not a Save dialog
  Edit1.Text:=plik_master_dat;
end;

procedure TForm_select_dat_files.BitBtn2Click(Sender: TObject);
begin
  PromptForFileName(plik_critter_dat,
                       'critter.dat file (*.dat)|*.dat',
                       '*.dat',
                       'Select CRITTER.DAT file',
                       '',
                       False);  // Means not a Save dialog
  Edit2.Text:=plik_critter_dat;
end;

procedure TForm_select_dat_files.BitBtn3Click(Sender: TObject);
begin
  PromptForFileName(plik_patch000_dat,
                       'patch file (*.dat)|*.dat',
                       '*.dat',
                       'Select any PATCH file',
                       '',
                       False);  // Means not a Save dialog
  Edit3.Text:=plik_patch000_dat;
end;



procedure TForm_select_dat_files.Button1Click(Sender: TObject);    //'OK'
begin
  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    program_INI.WriteString('Main', 'Fallout2_Directory', F2Folder);
    program_INI.WriteString('Main', 'master_dat', plik_master_dat);
    program_INI.WriteString('Main', 'critter_dat', plik_critter_dat);
    program_INI.WriteString('Main', 'patch000_dat', plik_patch000_dat);

    if CheckBox1.Checked=True then
      ReadOnlyAttr:='1'
    else
      ReadOnlyAttr:='0';

    program_INI.WriteString('Main','ReadOnlyAttr',ReadOnlyAttr);


    if CheckBox2.Checked=True then
      dat_files_in_game_dir:='1'
    else
      dat_files_in_game_dir:='0';

    program_INI.WriteString('Main','dat_files_in_game_dir',dat_files_in_game_dir);


    if CheckBox3.Checked=True then
      game_language:='\german\'
    else
      game_language:='\english\';

    program_INI.WriteString('Main','game_language',game_language);

  finally
    program_INI.Free;
  end;

  Close();
end;

procedure TForm_select_dat_files.Button2Click(Sender: TObject);     //'Cancel'
begin
  Close();
end;

procedure TForm_select_dat_files.FormCreate(Sender: TObject);
begin
  Label1.Font.Color:=clRed;
  Label2.Font.Color:=clRed;
  Label1.Caption:='PLEASE PAY ATTENTION WHICH FALLOUT GAME YOU SELECT.';
  Label2.Caption:='ATTENTION! *.DAT FILES MUST CORRESPOND WITH THE PROPER VERSION OF GAME.';
//  CheckBox3.Caption:='\english\';
  CheckBox3.Caption:='Set this for FO2 - German version';

  if FileExists(ExtractFilePath(Application.ExeName) + f2wedit_ini) then
  begin

    program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
    //program_INI := TINIFile.Create(ExtractFilePath('f2wedit.exe') + f2wedit_ini);
    try
      //ShowMessage('tworze okno setupu');
      F2Folder:=program_INI.ReadString('Main','Fallout2_Directory','');
      plik_master_dat:=program_INI.ReadString('Main','master_dat','');
      plik_critter_dat:=program_INI.ReadString('Main','critter_dat','');
      plik_patch000_dat:=program_INI.ReadString('Main','patch000_dat','');

      game_language:=program_INI.ReadString('Main','game_language','');
      ReadOnlyAttr:=program_INI.ReadString('Main','ReadOnlyAttr','1');
      dat_files_in_game_dir:=program_INI.ReadString('Main','dat_files_in_game_dir','0');


      //ShowMessage(F2Folder);
      Edit4.Text:=F2Folder;
      Edit1.Text:=plik_master_dat;
      Edit2.Text:=plik_critter_dat;
      Edit3.Text:=plik_patch000_dat;

      CheckBox2.Caption:='Select *.DAT files from game directory: ' + '[' + F2Folder  + ']';

      if ReadOnlyAttr='0' then
      begin
        CheckBox1.Checked:=False;
        Form_Main.readonly1.Checked:=false;
        Form_Main.archive1.Checked:=true;
      end
      else
      begin
        CheckBox1.Checked:=True;
        Form_Main.readonly1.Checked:=true;
        Form_Main.archive1.Checked:=false;
      end;


      if dat_files_in_game_dir='1' then
      begin
        CheckBox2.Checked:=True;
        Edit1.Enabled:=False;
        Edit2.Enabled:=False;
        //Edit3.Enabled:=False;
        BitBtn1.Enabled:=False;
        BitBtn2.Enabled:=False;
        //BitBtn3.Enabled:=False;
      end
      else
      begin
        CheckBox2.Checked:=False;
        Edit1.Enabled:=True;
        Edit2.Enabled:=True;
        Edit3.Enabled:=True;
        BitBtn1.Enabled:=True;
        BitBtn2.Enabled:=True;
        BitBtn3.Enabled:=True;
      end;



      if game_language='\german\' then
      begin
        CheckBox3.Checked:=True;
      end
      else
      begin
        CheckBox3.Checked:=False;
      end;


    finally
      program_INI.Free;
    end;
  end;
end;

procedure TForm_select_dat_files.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked=True then
  begin
    if Length(F2Folder)>3 then
    begin
      plik_master_dat:=F2Folder+'\master.dat';
      plik_critter_dat:=F2Folder+'\critter.dat';
      //plik_patch000_dat:=F2Folder+'\patch000.dat';
      plik_patch000_dat:='';

      Edit1.Text:=plik_master_dat;
      Edit2.Text:=plik_critter_dat;
      //Edit3.Text:=plik_patch000_dat;


      dat_files_in_game_dir:='1';
      Edit1.Enabled:=False;
      Edit2.Enabled:=False;
      //Edit3.Enabled:=False;

      BitBtn1.Enabled:=False;
      BitBtn2.Enabled:=False;
      //BitBtn3.Enabled:=False;
    end
    else
      ShowMessage('First set the path to the directory with the game!')
  end
  else
  begin
    dat_files_in_game_dir:='0';

    Edit1.Enabled:=True;
    Edit2.Enabled:=True;
    Edit3.Enabled:=True;

    BitBtn1.Enabled:=True;
    BitBtn2.Enabled:=True;
    BitBtn3.Enabled:=True;
  end;

end;

end.
