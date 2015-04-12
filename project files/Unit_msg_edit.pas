unit Unit_msg_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, IniFiles;

type
  TForm_edit_msg = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RichEdit_msg: TRichEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Procedure Zapisz_RichEdit;
  public
    { Public declarations }
  end;

var
  Form_edit_msg: TForm_edit_msg;

implementation

uses Unit_Main;

{$R *.dfm}

procedure TForm_edit_msg.FormCreate(Sender: TObject);
begin
  Form_edit_msg.Caption:='Editing "proto.msg" - '+Application.Title;
  RichEdit_msg.PlainText := True;
  if fileExists(F2Folder+sciezka_do_pro_item_msg+'proto.msg') then
  RichEdit_msg.Lines.LoadFromFile(F2Folder+sciezka_do_pro_item_msg+'proto.msg')
  else
  begin
    ShowMessage('"proto.msg" not exists');
    Form_edit_msg:=nil;
  end;
end;

procedure TForm_edit_msg.Zapisz_RichEdit;
var i,max_i:Integer;
    Lista:TStringList;
begin
  Cursor:=crHourGlass;
  Update;
  RichEdit_msg.Lines.SaveToFile(F2Folder+sciezka_do_pro_item_msg+'proto.msg');
  with Form_Main do
  begin
    if FileExists(F2Folder+sciezka_do_pro_item_msg+perk_msg) then
    begin
      FileSetAttr(F2Folder+sciezka_do_pro_item_msg+perk_msg,$00000020);{ustawia atrybut archive dla pliku pro_item.msg}
      Msg2Ini(F2Folder+sciezka_do_pro_item_msg+perk_msg,F2Folder+sciezka_do_pro_item_msg+perk_ini);
      perk_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+perk_ini);
      try
        Lista := TStringList.Create;
        try
          for i:=1 to 119 do Lista.Add(perk_msg_INI.ReadString('Descriptions',IntToStr(100+i),''));
          Lista.Add('None');
          ComboBox_Perk.Items.Clear;
          ComboBox_Perk.Items.AddStrings(Lista);

          ComboBox_Armor_Perk.Items.Clear;
          ComboBox_Armor_Perk.Items.AddStrings(Lista);

          ComboBox_WD_effect.Items.Clear;
          ComboBox_WD_effect.Items.AddStrings(Lista);
        finally
          Lista.Free;
        end;
      finally
        perk_msg_INI.Free;
      end;
    end;

    if FileExists(F2Folder+sciezka_do_pro_item_msg+pro_misc_msg) then
    begin
      FileSetAttr(F2Folder+sciezka_do_pro_item_msg+pro_misc_msg,$00000020);{ustawia atrybut archive dla pliku pro_item.msg}
      Msg2Ini(F2Folder+sciezka_do_pro_item_msg+pro_misc_msg,F2Folder+sciezka_do_pro_item_msg+pro_misc_ini);
      pro_misc_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_misc_ini);
      try
        Lista := TStringList.Create;
        try
          Lista.Add('None');
          for i:=1 to 50 do Lista.Add(pro_misc_msg_INI.ReadString('Descriptions',IntToStr(100*i),''));
          ComboboxFiringFrame.Items.Clear;
          ComboboxFiringFrame.Items.AddStrings(Lista);
        finally
          Lista.Free;
        end;
      finally
        pro_misc_msg_INI.Free;
      end;
    end;

    if FileExists(F2Folder+sciezka_do_pro_item_msg+proto_msg) then
    begin
      FileSetAttr(F2Folder+sciezka_do_pro_item_msg+proto_msg,$00000020);{ustawia atrybut archive dla pliku pro_item.msg}
      Msg2Ini(F2Folder+sciezka_do_pro_item_msg+proto_msg,F2Folder+sciezka_do_pro_item_msg+proto_ini);
      proto_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+proto_ini);
      try
        Lista := TStringList.Create;
        try
          for i:=0 to 6 do Lista.Add(proto_msg_INI.ReadString('Descriptions',IntToStr(250+i),''));
          ComboboxDmgType.Items.Clear;
          ComboboxDmgType.Items.AddStrings(Lista);
        finally
          Lista.Free;
        end;
        Lista := TStringList.Create;
        try
          for i:=0 to 7 do Lista.Add(proto_msg_INI.ReadString('Descriptions',IntToStr(100+i),''));
          ComboBox_Material_Type.Items.Clear;
          Combobox_Material_Type.Items.AddStrings(Lista);
        finally
          Lista.Free;
        end;
      finally
        proto_msg_INI.Free;
      end;

      proto_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+proto_ini);
      try
        max_i:=0;
        while length(proto_msg_INI.ReadString('Descriptions',IntToStr(300+max_i),''))<>0 do
        begin
          Inc(max_i);
        end;
        Lista := TStringList.Create;
        try
          for i:=0 to max_i-1 do Lista.Add(proto_msg_INI.ReadString('Descriptions',IntToStr(300+i),''));
          ComboBoxAmmoType.Items.Clear;
          ComboboxAmmoType.Items.AddStrings(Lista);
          ComboBoxCaliberType.Items.Clear;
          ComboboxCaliberType.Items.AddStrings(Lista);
        finally
          Lista.Free;
        end;
      finally
        proto_msg_INI.Free;
      end;
    end;
  end;
  Cursor:=crDefault;
  Update;
end;

procedure TForm_edit_msg.BitBtn1Click(Sender: TObject);
begin
  Form_Edit_msg.Hide;
  Zapisz_RichEdit;
  Close;  
  Form_Main.Enabled:=True;
  Form_Main.UpdateList;
end;

procedure TForm_edit_msg.FormDestroy(Sender: TObject);
begin
  Form_Edit_msg:=nil;
end;

procedure TForm_edit_msg.BitBtn2Click(Sender: TObject);
begin
  Close;
  Form_Main.Enabled:=True;
end;

procedure TForm_edit_msg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
