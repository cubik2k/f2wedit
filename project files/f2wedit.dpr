program F2Wedit;

// wersja v1.3.1.12
// data: 17-02-2010
// autor: Cubik
// strona domowa: http://cubik2k.w.interia.pl


uses
  Forms,
  Unit_Main in 'Unit_Main.pas' {Form_Main},
  Unit_About in 'Unit_About.pas' {AboutBox},
  Unit_msg_edit in 'Unit_msg_edit.pas' {Form_edit_msg},
  unpack in 'unpack.pas',
  show_new_inv_frm in 'show_new_inv_frm.pas' {Form1_frm_viewer},
  Unit_select_dat_files in 'Unit_select_dat_files.pas' {Form_select_dat_files};

{  DelphiIni in 'DelphiIni.PAS';}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'F2wedit';
  Application.HintHidePause:=100000;

  Application.CreateForm(TForm_Main, Form_Main);
  Application.Run;
end.
