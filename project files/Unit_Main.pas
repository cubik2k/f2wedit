{
  f2wedit is a tool for editing items *.pro files in Fallout/Fallout2.

  Written by Pawel Mazur (cubik2k)

  It was written with using unit:
    UNLZSS32.pas - written by Andrew Eigus (aka: Mr. Byte) of:
      Fidonet: 2:5100/33,
      Internet: aeigus@fgate.castle.riga.lv, aeigus@kristin.cclu.lv.

    unpack.pas - written by Jargo, legendary Polish modder of Fallout2, creator of FSE (Fallout Script Editor), scripting tutorials and few mods, admin of Fallout Modding Center (FMC) in very past time (2003-2007 year)  

}
unit Unit_Main;

interface

uses
  Windows, SysUtils,  Forms,
  Buttons, FileCtrl, Menus, ComCtrls, StdCtrls, Controls,
  Classes, ExtCtrls, Dialogs, Graphics, IniFiles, ShellAPI, messages,
  ExtDlgs, unlzss32;


type
  TForm_Main = class(TForm)
    ListViewFiles: TListView;
    PageControl1: TPageControl;
    TabSheetArmor: TTabSheet;
    TabSheetContainer: TTabSheet;
    TabSheetDrug: TTabSheet;
    TabSheetWeapon: TTabSheet;
    TabSheetAmmo: TTabSheet;
    TabSheetMisc: TTabSheet;
    TabSheetKey: TTabSheet;
    MainMenu1: TMainMenu;
    Plik1: TMenuItem;
    Ustawienia1: TMenuItem;
    Help1: TMenuItem;
    Save1: TMenuItem;
    Exit1: TMenuItem;
    About1: TMenuItem;
    N2: TMenuItem;
    Armor1: TMenuItem;
    Weapon1: TMenuItem;
    Ammo1: TMenuItem;
    All1: TMenuItem;
    N3: TMenuItem;
    Ustawienia2: TMenuItem;
    Setup1: TMenuItem;
    Readme1: TMenuItem;
    Drugs1: TMenuItem;
    Misc1: TMenuItem;
    Keys1: TMenuItem;
    Container1: TMenuItem;
    New1: TMenuItem;
    New_Weapon: TMenuItem;
    New_Ammo: TMenuItem;
    New_Armor: TMenuItem;
    New_Drug: TMenuItem;
    Container3: TMenuItem;
    Key2: TMenuItem;
    Misc3: TMenuItem;
    Panel5: TPanel;
    StaticText38: TStaticText;
    StaticText40: TStaticText;
    StaticText39: TStaticText;
    Label1: TLabel;
    EditDRnormal: TEdit;
    EditDTnormal: TEdit;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    EditDTexplosion: TEdit;
    EditDTEMP: TEdit;
    EditDTelectrical: TEdit;
    EditDTplasma: TEdit;
    EditDTfire: TEdit;
    EditDTlaser: TEdit;
    EditDRlaser: TEdit;
    EditDRfire: TEdit;
    EditDRplasma: TEdit;
    EditDRelectrical: TEdit;
    EditDREMP: TEdit;
    EditDRexplosion: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Panel8: TPanel;
    StaticText25: TStaticText;
    ComboBoxAmmoType: TComboBox;
    StaticText26: TStaticText;
    Panel9: TPanel;
    ComboBoxATmode1: TComboBox;
    ComboBoxATmode2: TComboBox;
    ComboBoxDefaultAmmo: TComboBox;
    Label28: TLabel;
    Label29: TLabel;
    EditRangeMode1: TEdit;
    EditRangeMode2: TEdit;
    Label30: TLabel;
    EditAPmode1: TEdit;
    EditAPmode2: TEdit;
    Panel6: TPanel;
    StaticText22: TStaticText;
    ComboBoxDmgType: TComboBox;
    StaticText28: TStaticText;
    ComboBoxFiringFrame: TComboBox;
    Panel11: TPanel;
    StaticText27: TStaticText;
    ComboBoxHoldFrame: TComboBox;
    CheckBox_1Hand: TCheckBox;
    CheckBox_2Hand: TCheckBox;
    CheckBox_BigGun: TCheckBox;
    CheckBox_Use: TCheckBox;
    Panel12: TPanel;
    EditMinDmg: TEdit;
    EditMaxDmg: TEdit;
    StaticText6: TStaticText;
    StaticText8: TStaticText;
    StaticText3: TStaticText;
    ComboBox_Perk: TComboBox;
    Label23: TLabel;
    Panel13: TPanel;
    StaticText9: TStaticText;
    EditMinStrenght: TEdit;
    archive1: TMenuItem;
    readonly1: TMenuItem;
    N5: TMenuItem;
    Editprotomsg1: TMenuItem;
    BitBtnSave: TBitBtn;
    Label32: TLabel;
    ComboBox_Scripts: TComboBox;
    Label9: TLabel;
    Edit_ItemID: TEdit;
    StaticTextWeight: TStaticText;
    EditWeight: TEdit;
    StaticTextPrice: TStaticText;
    EditPrice: TEdit;
    Label_material: TLabel;
    ComboBox_Material_Type: TComboBox;
    Edit_item_name: TEdit;
    Editor: TRichEdit;
    Label31: TLabel;
    Label26: TLabel;
    ComboBoxInventoryFrame: TComboBox;
    StaticText2: TStaticText;
    Image1: TImage;
    Image2: TImage;
    StaticText1: TStaticText;
    ComboBoxGroundFrame: TComboBox;
    StaticText31: TStaticText;
    EditArmorClass: TEdit;
    Label2: TLabel;
    Label27: TLabel;
    ComboBox_Armor_Perk: TComboBox;
    Panel1: TPanel;
    Label25: TLabel;
    Edit_max_size: TEdit;
    Panel2: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ComboBox_Stat1: TComboBox;
    ComboBox_Stat2: TComboBox;
    ComboBox_Stat3: TComboBox;
    Edit_mid_begin: TEdit;
    Edit_long_begin: TEdit;
    Label10: TLabel;
    Label22: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    Label12: TLabel;
    Label20: TLabel;
    Edit_st1_imm: TEdit;
    Edit_st2_imm: TEdit;
    Edit_st3_imm: TEdit;
    Edit_st1_mid: TEdit;
    Edit_st2_mid: TEdit;
    Edit_st3_mid: TEdit;
    Edit_st1_long: TEdit;
    Edit_st2_long: TEdit;
    Edit_st3_long: TEdit;
    Label24: TLabel;
    ComboBox_WD_effect: TComboBox;
    Label18: TLabel;
    Edit_addict_begin: TEdit;
    Label19: TLabel;
    Edit_addict_rate: TEdit;
    Panel3: TPanel;
    EditDmgmodA: TEdit;
    EditDmgmodB: TEdit;
    EditAmmoInMag: TEdit;
    ComboBoxCaliberType: TComboBox;
    EditACmod: TEdit;
    EditDRmod: TEdit;
    Panel4: TPanel;
    Panel7: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Image3: TImage;
    Image4: TImage;
    ComboBox_FireSoundID: TComboBox;
    StaticText30: TStaticText;
    ComboBox_CriticalFail: TComboBox;
    StaticText24: TStaticText;
    Label43: TLabel;
    CheckBoxUse_Cont: TCheckBox;
    CheckBoxUseOn_Cont: TCheckBox;
    CheckBoxLook_Cont: TCheckBox;
    CheckBoxTalk_Cont: TCheckBox;
    CheckBoxPickup_Cont: TCheckBox;
    CheckBoxMagicHands_Cont: TCheckBox;
    CheckBoxCantPickup_Cont: TCheckBox;
    Label44: TLabel;
    Label42: TLabel;
    CheckBoxUse_Key: TCheckBox;
    CheckBoxUseOn_Key: TCheckBox;
    CheckBoxLook_Key: TCheckBox;
    CheckBoxTalk_Key: TCheckBox;
    CheckBoxPickup_Key: TCheckBox;
    Label41: TLabel;
    CheckBoxUse_Misc: TCheckBox;
    CheckBoxUseOn_Misc: TCheckBox;
    CheckBoxLook_Misc: TCheckBox;
    CheckBoxTalk_Misc: TCheckBox;
    CheckBoxPickup_Misc: TCheckBox;
    Label47: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    EditPowerPID_Misc: TEdit;
    EditPowerType_misc: TEdit;
    EditCharges_Misc: TEdit;
    StaticText29: TStaticText;
    EditAmmoCapacity: TEdit;
    StaticText23: TStaticText;
    EditBurstRound: TEdit;
    Label48: TLabel;
    Label50: TLabel;
    Unpack_dat_files: TMenuItem;
    BitBtn_EDIT: TBitBtn;
    N4: TMenuItem;
    Unpackfiles1: TMenuItem;
    Weapon2: TMenuItem;
    Ammo2: TMenuItem;
    Drug1: TMenuItem;
    Armor2: TMenuItem;
    Container2: TMenuItem;
    Key1: TMenuItem;
    Misc2: TMenuItem;
    N6: TMenuItem;
    Allfiles1: TMenuItem;
    Enable1: TMenuItem;
    Disable1: TMenuItem;
    Label51: TLabel;
    Edit_ItemSize: TEdit;
    Label49: TLabel;
    BitBtn1: TBitBtn;
    Edit_Search: TEdit;
    BitBtnCancel: TBitBtn;
    Checkforupdate1: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    SavePictureDialog2: TSavePictureDialog;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Saveasbmp1: TMenuItem;
    Cancel1: TMenuItem;
    N7: TMenuItem;
    Cancel2: TMenuItem;
    N8: TMenuItem;
    Saveasbmp2: TMenuItem;
    Homepage1: TMenuItem;
    N9: TMenuItem;
    Image5: TImage;
    Label52: TLabel;
    Image6: TImage;
    ools1: TMenuItem;
    Addnewinvenfrm1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Properties1: TMenuItem;
    OpenDialog2: TOpenDialog;
    Properties2: TMenuItem;
    StatusBar1: TStatusBar;
    ProgressBar1: TProgressBar;
    N1: TMenuItem;
    ExtractFRMfiles1: TMenuItem;
    N10: TMenuItem;
    Options1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ListViewFilesSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure EditorKeyPress(Sender: TObject; var Key: Char);
    procedure Exit1Click(Sender: TObject);
    procedure ComboBoxChange(Sender: TObject);
    procedure Ammo1Click(Sender: TObject);
    procedure All1Click(Sender: TObject);
    procedure Weapon1Click(Sender: TObject);
    procedure Armor1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure ComboBoxDefaultAmmoKeyPress(Sender: TObject; var Key: Char);
    procedure Drugs1Click(Sender: TObject);
    procedure Misc1Click(Sender: TObject);
    procedure Keys1Click(Sender: TObject);
    procedure Container1Click(Sender: TObject);
    procedure Edit_item_nameClick(Sender: TObject);
    procedure EditorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBoxInventoryFrameChange(Sender: TObject);
    procedure ComboBoxGroundFrameChange(Sender: TObject);
    procedure Readme1Click(Sender: TObject);
    procedure New_AmmoClick(Sender: TObject);
    procedure New_WeaponClick(Sender: TObject);
    procedure New_ArmorClick(Sender: TObject);
    procedure New_DrugClick(Sender: TObject);
    procedure Container3Click(Sender: TObject);
    procedure Key2Click(Sender: TObject);
    procedure Misc3Click(Sender: TObject);
    procedure CheckBox_1HandClick(Sender: TObject);
    procedure CheckBox_2HandClick(Sender: TObject);
    procedure CheckBox_BigGunClick(Sender: TObject);
    procedure archive1Click(Sender: TObject);
    procedure readonly1Click(Sender: TObject);
    procedure Editprotomsg1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox_CriticalFailChange(Sender: TObject);
    procedure BitBtn_EDITClick(Sender: TObject);
    procedure Armor2Click(Sender: TObject);
    procedure Allfiles1Click(Sender: TObject);
    procedure Weapon2Click(Sender: TObject);
    procedure Ammo2Click(Sender: TObject);
    procedure Drug1Click(Sender: TObject);
    procedure Misc2Click(Sender: TObject);
    procedure Container2Click(Sender: TObject);
    procedure Key1Click(Sender: TObject);
    procedure Disable1Click(Sender: TObject);
    procedure Enable1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit_SearchClick(Sender: TObject);
    procedure Edit_SearchKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_CriticalFailDropDown(Sender: TObject);
    procedure ComboBox_FireSoundIDDropDown(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure Checkforupdate1Click(Sender: TObject);
    procedure Saveasbmp1Click(Sender: TObject);
    procedure Saveasbmp2Click(Sender: TObject);
    procedure Homepage1Click(Sender: TObject);
    procedure Saveasbmp32bit1Click(Sender: TObject);
    procedure Saveimageasbmp32bit1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Addnewinvenfrm1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Convertbmptofrm1Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure ExtractFRMfiles1Click(Sender: TObject);
    procedure CheckBoxUse_ContMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Options1Click(Sender: TObject);
    procedure CheckBox_1HandMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox_2HandMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox_BigGunMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);


  private
    { Private declarations }

    procedure All_components_Not_Visible;
    procedure All_components_Visible;

    procedure UpdateList_Items(rozmiar_pliku:Byte);
    procedure UpdateList_Items_and_unpack(rozmiar_pliku:Integer);
    procedure UpdateList_and_unpack_all;

    procedure Update_ile_plikow_pro;
    procedure Lista_ammo;

    procedure Show_Frm(NazwaPlikuObrazka_FRM:String;numer_okienka:Byte);

    procedure ListOfGroundFrame;
    procedure ListOfInventoryFrame;
    procedure ListOfArmorFrame;

    Procedure Ini2Msg(nazwa_ini,nazwa_msg:String);
    Procedure CheckF2weditIni;
    Function Sprawdzanie_plikow:Boolean;{nowsza wersja proc chekF2weditIni}


    Procedure ZapiszWartosc(NazwaPliku:String;pozycja:Integer;Ile_bajtow:Byte;EditText:String);

    Procedure New_Item(rozmiar_pliku:Byte;item_type:Byte);

    Procedure Czytaj_BasicAttributes(ActualFile:String);
    Procedure Czytaj_Ammo(ActualFile:String);
    Procedure Czytaj_Armor(ActualFile:String);
    Procedure Czytaj_Weapon(ActualFile:String);
    Procedure Czytaj_Container(ActualFile:String);{container attributes}
    Procedure Czytaj_Drug(ActualFile:String);{drug attributes}
    Procedure Czytaj_Misc(ActualFile:String);{misc attributes}
    Procedure Czytaj_Key(ActualFile:String);{key attributes}

    Procedure Zapisz_BasicAttributes(ActualFile:String);
    Procedure Zapisz_Ammo(ActualFile:String);
    Procedure Zapisz_Armor(ActualFile:String);
    Procedure Zapisz_Weapon(ActualFile:String);
    Procedure Zapisz_Container(ActualFile:String);{container attributes}
    Procedure Zapisz_Drug(ActualFile:String);{drug attributes}
    Procedure Zapisz_Misc(ActualFile:String);{misc attributes}
    Procedure Zapisz_Key(ActualFile:String);{key attributes}

    Procedure Zapisz(ActualFile:string);{Ogólna procedura zapisu danych}

    Procedure Wypakowuj_plik_critter(MainPath,path,nazwa_pliku:String);

    Procedure Wypakowuj_plik_wg_rozmiaru(MainPath,path,nazwa_pliku:String{;rozmiar:Longint});{wypakowuje wskazany plik z plikow *.dat}


    Procedure UstawAtrybut(s:string);

    function GetExeVersion(sFileName:string): string;

    procedure Addnewinvenfrm(nazwa_pliku_inven_frm:String);

  public
    { Public declarations }
    Function CzytajWartosc(NazwaPliku:String;pozycja:Integer;Ile_bajtow:Byte):Integer;
    Procedure Wypakowuj_plik(MainPath,path,nazwa_pliku:String);{wypakowuje wskazany plik z plikow *.dat}

    procedure ShowSelected(Item:TListItem);
    procedure UpdateList;
    Procedure Msg2Ini(nazwa_msg,nazwa_ini:String);
    function FindTextLV(ListView: TListView; Text: string; SelectItem: integer): boolean;



    // FO1 unpacker
    function ReadReverseDD(var f:file):longint;
    function ReadString(var f:file):string;
    function TrailZeros(d:longint):string;
    procedure Unpack (len: integer);
    procedure MyCreateDir (s: string);
    procedure CopyPlik(var ffrom:file; sto:string; l, att:longint);
    Procedure WypakujFO1(dat_file:String; sciezka_plik:String);

    // ustawianie atrybutu plików bez zmiany daty modyfikacji
    procedure UstawAtrybutPliku(nazwa_pliku:String; atrybut:Integer);

  end;



const
  Items_pro_LstFileName='items.lst';
  Item_LstFileName='items.lst';
  Inven_LstFileName='inven.lst';
  //added 04-05-2008
  Critters_LstFileName='critters.lst';

  pro_misc_msg='pro_misc.msg';
  pro_misc_ini='pro_misc.ini';


  stat_msg='stat.msg'; //added 6-05-2008
  stat_ini='stat.ini';

  perk_msg='perk.msg';
  perk_ini='perk.ini';

  pro_item_msg='pro_item.msg';
  pro_item_ini='pro_item.ini';

  proto_msg='proto.msg';
  proto_ini='proto.ini';

  f2wedit_ini='f2wedit.ini';
  TemporaryEditorFile='editor.txt';
  
  sciezka_do_plikow_pro_items='\data\proto\items\';
  sciezka_do_plikow_art_items_lst='\data\art\items\';
  sciezka_do_plikow_art_inven_lst='\data\art\inven\';
  //added 04-05-2008
  sciezka_do_plikow_art_critters_lst='\data\art\critters\';

  kolor1:array[0..229] of Byte = ({255}65,236,220,204,188,176,160,144,128,116,100,84,72,56,40,32,252,236,220,208,192,176,164,148,132,120,104,88,76,60,44,32,236,216,196,176,160,144,128,112,96,84,68,56,44,36,24,16,252,196,104,76,56,40,36,28,252,252,228,204,184,164,144,124,108,88,72,52,32,216,180,152,120,92,64,40,112,84,56,104,112,112,96,76,56,156,120,88,64,56,48,40,32,28,20,16,24,16,8,4,4,140,120,100,80,64,48,44,40,32,28,24,156,56,80,88,56,188,172,160,148,136,124,112,100,88,252,252,252,252,252,252,252,252,224,196,168,144,116,88,64,252,252,252,252,252,252,252,252,220,192,164,132,104,76,48,248,216,200,188,172,156,140,124,112,96,80,64,52,252,232,212,196,176,160,144,132,120,108,92,72,60,252,248,244,240,240,240,216,192,168,144,120,96,72,56,100,20,0,80,0,140,28,104,48,140,72,12,60,108,120,136,148,88,96,60,56,52,48,40,252,240,208,152,104,80,52,24,0,0);
  kolor2:array[0..229] of Byte = ({255}110,236,220,204,188,176,160,144,128,116,100,84,72,56,40,32,236,216,196,176,160,144,128,112,96,84,68,56,44,36,24,16,236,216,196,176,160,144,128,112,96,84,68,56,44,36,24,16,176,96,36,20,12,16,4,12,252,252,216,184,156,136,120,104,88,72,56,40,24,252,216,184,152,120,88,56,96,72,48,120,120,104,96,68,48,172,148,124,104,88,76,68,60,48,40,32,48,36,28,20,12,156,148,136,124,108,88,76,68,56,48,40,164,72,88,104,64,188,164,144,124,104,88,72,60,48,204,176,152,124,100,72,48,0,0,0,0,0,0,0,0,224,196,184,172,156,148,136,124,108,96,80,68,52,36,24,212,176,160,144,128,116,100,88,76,64,52,40,32,228,200,172,144,116,92,76,60,44,32,20,12,4,232,212,192,176,160,148,128,112,96,80,64,48,36,24,228,152,164,80,108,140,28,80,40,112,56,12,60,116,132,148,164,104,112,248,212,180,148,116,252,236,184,124,88,64,40,16,0,0);
  kolor3:array[0..229] of Byte = ({255}155,236,220,204,188,176,160,144,128,116,100,84,72,56,40,32,236,216,196,176,160,144,128,112,96,84,68,56,44,36,24,16,252,236,220,208,192,176,164,148,132,120,104,88,76,60,44,32,240,168,96,72,52,36,36,24,200,124,12,28,40,48,36,24,16,8,4,0,0,156,132,112,92,72,52,32,80,52,32,80,32,40,36,36,32,156,120,88,64,88,72,60,44,36,24,16,24,12,4,0,0,156,152,148,144,140,140,124,108,92,76,64,164,104,88,132,80,188,152,124,96,76,52,36,20,8,204,176,152,124,100,72,48,0,0,0,0,0,0,0,0,200,148,120,96,72,44,20,0,0,0,0,0,0,0,0,164,120,100,84,68,52,40,28,20,8,4,0,0,184,152,124,100,76,56,44,32,24,16,8,4,0,220,188,160,132,108,92,84,72,64,56,48,36,28,20,100,20,0,72,0,132,28,56,32,96,40,12,60,108,120,136,148,96,104,0,8,16,20,24,252,208,136,80,60,36,28,12,0,0);

  bufSize=$10000;


var
  changed_Background:Boolean; // dodane 07-04-2009 zeby zmieniac kolor image5 naprzemiennie

  Form_Main: TForm_Main;
  F2Folder:String; {folder gdzie zainstalowany jest fallout2}
  ActualFolder:String;
  ActualFile:String;

  plik_master_dat, plik_critter_dat, plik_patch000_dat:String;
  game_language:String;
  sciezka_do_pro_item_msg:String;
  plik:file of Byte;


  w1,w2,w3,w4:Byte;
  wsp1,wsp2:Byte;
    {basic item attributes}
  item_id:Integer;
  item_id_Long:Integer;
  item_type:Integer;
  item_weight:Integer;
  item_price:Integer;

  ActualIndex:Integer;
  Ile_plikow_pro:Integer;{oblicza ile plikow pro znalazl}
  Ile_plikow_pro_armor:Integer;
  Ile_plikow_pro_weapon:Integer;
  Ile_plikow_pro_ammo:Integer;

  ReadOnlyAttr:String='1';
  New_item_test:Boolean=False;

  ile_ammo:Integer;

   plik_frm:file of Byte;
   numer_koloru:Byte;
   rozmiar_pliku:LongInt;
//   first_data_offset:LongInt;
   SizeX,SizeY:Integer;
   first_frame_offset:LongInt;
   NazwaPlikuObrazka_FRM:String;


   FLAG_dec:Integer;
   FLAG_hex_string:String[8];
   Default: Integer;




   pro_misc_msg_INI:TIniFile;
   pro_item_msg_INI :TIniFile;
   proto_msg_INI:TIniFile;
   perk_msg_INI :TIniFile;
   stat_msg_INI:TIniFile; //added 6-05-2008

   program_INI :TIniFile;

//   added 22-10-2006
   use_master_dat:boolean;
   Selected_Item:TListItem;
//   added 28-10-2006
   ViewFile_Button_klikniety:boolean;
//   added 13-05-2008
   jezyk_gry:String;

// added 09-06-2008
   Wypakowuj_plik_boolean:Boolean;

// added 08-04-2009
   nazwa_pliku_inven_frm_dla_form1:String;
   nazwa_pliku_bmp:string;

   Rct: TRect; // wstawione na nowo 14-11-2009 dla zmiany wypelnienia backgorund obrazkow itemow


   FO1_active:Boolean;
   op: integer;
   f, f1: file;
   DirCnt, i,j: integer;
   dirs: array [1..100] of string;
   FileCnt: integer;
   buffer: pointer;

   LightRadius:Integer; // offset: 0x000C; rozmiar: 4 byte; zakres wartosci: 0..8 light hexes
   LightIntensity: Integer; // offset: 0x0010; rozmiar: 4 byte; zakres wartosci: 0..65536 (0x0000FFFF). According to Fallout 2 mapper, this value is interpreted as 0..100%.

    // TransNone, TransWall, TransGlass, TransSteam and TransEnergy flags are mutually exclusive. (te FLAGi wzajemnie sie wykluczaja)
   FLAGS:Integer; // offset: 0x0014; rozmiar: 4 byte;
{    wartosci i znaczenie:
    0x00000008 - Flat
    0x00000010 - NoBlock (doesn't block the tile)
    0x00000800 - MultiHex
    0x00001000 - No Highlight (doesn't highlight the border; used for containers)
    0x00004000 - TransRed
    0x00008000 - TransNone (opaque)
    0x00010000 - TransWall
    0x00020000 - TransGlass
    0x00040000 - TransSteam
    0x00080000 - TransEnergy
    0x20000000 - LightThru
    0x80000000 - ShootThru
}


  FlagsExt:Integer; // offset: 0x0018, rozmiar: 3 byte


implementation

uses Unit_About, Unit_msg_edit, unpack, show_new_inv_frm,
  Unit_select_dat_files;


{$R *.dfm}

procedure TForm_Main.Convertbmptofrm1Click(Sender: TObject);
var fileSource{, fileDest}: string;
begin
  if OpenDialog2.Execute then
  begin
    filesource:= ExtractFileName(OpenDialog2.FileName);

    //    ShellExecute(Handle, 'open', PChar('command.com'), PChar('/c copy file1.txt file2.txt'), nil, SW_SHOW);

    ShellExecute(Handle, 'open', PChar('bmp2frm.bat'), PChar(filesource), nil, SW_SHOW);


//    WinExec('bmp2frm.bat', SW_SHOW);
//    shellExecute(alchemy %1 bmp2frm.tmp -w -o -f fallout.pal -d0 -8
//bmp2frm_core %1
  end;
end;


procedure TForm_Main.Addnewinvenfrm1Click(Sender: TObject);
var fileSource, fileDest: string;
begin
  if OpenDialog1.Execute then
  begin
    if not FileExists(F2Folder+sciezka_do_plikow_art_inven_lst+ExtractFileName(OpenDialog1.FileName)) then begin
      fileSource := OpenDialog1.FileName;
      fileDest := F2Folder+sciezka_do_plikow_art_inven_lst+ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(fileSource), PChar(fileDest), False);
      Addnewinvenfrm(ExtractFileName(OpenDialog1.FileName));
    end
    else
    begin
      if MessageDlg('Copying frm file to Fallout directory'+#10#13+'File '+ExtractFileName(OpenDialog1.FileName)+' exists in destination directory. Overwrite?', mtCustom, mbOKCancel, 0) = mrOK then
      begin
        fileSource := OpenDialog1.FileName;
        fileDest := F2Folder+sciezka_do_plikow_art_inven_lst+ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(fileSource), PChar(fileDest), False);
        Addnewinvenfrm(ExtractFileName(OpenDialog1.FileName));
      end;                 
    end;
  end;
end;

procedure TForm_Main.Addnewinvenfrm(nazwa_pliku_inven_frm:String);
var plikT:Textfile;
    plikT_:Textfile;
    linia:string;
    czy_istnieje_linia:Boolean;
begin
  if FileExists(F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName) then
  begin
    UstawAtrybutPliku(F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName,$00000020);{ustawia atrybut archive dla pliku art/inven/inven.lst}
    AssignFile(plikT,F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName);
    Reset(plikT);
    Assignfile(plikT_,F2Folder+sciezka_do_plikow_art_inven_lst+'items.$$$');
    Rewrite(plikT_);

    czy_istnieje_linia:=False;

    While not Eof(plikT) do
    begin
      Readln(plikT,linia);
      Writeln(plikT_,linia);
      If linia=nazwa_pliku_inven_frm then czy_istnieje_linia:=True;
    end;
    CloseFile(plikT);
    Flush(plikT_);
    CloseFile(plikT_);

    DeleteFile(F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName);
    RenameFile(F2Folder+sciezka_do_plikow_art_inven_lst+'items.$$$',F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName);


    if czy_istnieje_linia=True then
    begin
      ShowMessage('Line "'+nazwa_pliku_inven_frm+'" just exists in "inven.lst" file. Could not be added again!' +#10#13+'Change the name of your new frm file.');
    end
    else
    begin
      AssignFile(plikT,F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName);
      Append(plikT);
      Writeln(plikT,nazwa_pliku_inven_frm);
      Flush(plikT);
      CloseFile(plikT);

      nazwa_pliku_inven_frm_dla_form1:=F2Folder+sciezka_do_plikow_art_inven_lst+nazwa_pliku_inven_frm;


      ListOfInventoryFrame;

      If not Assigned(Form1_frm_viewer) then
      begin
        Form1_frm_viewer:=TForm1_frm_viewer.Create(nil);   // dlaczego 'nil' a nie 'Application' ?? Nie wiem ;) ale na razie dzia³a 08/12/2006
        Form1_frm_viewer.ShowModal;
      end
      else
      begin
        Form1_frm_viewer.Close;
        Form1_frm_viewer.Destroy;
        Form1_frm_viewer:=TForm1_frm_viewer.Create(nil);         // dlaczego 'nil' a nie 'Application' ?? Nie wiem ;) ale na razie dzia³a 08/12/2006
        Form1_frm_viewer.ShowModal;
      end;


      czy_istnieje_linia:=False; // tak na wszelki wypadek, gdyby jeszcze raz prbowa³ to zeby miec pewnosc ze jest ok
    end;

    ShowSelected(Selected_Item);
  end;
end;


Procedure TForm_Main.New_Item(rozmiar_pliku:Byte;item_type:Byte);
var nazwa_pliku_pro:String[12];
    nazwa_tymcz:String[8];
    nazwa_pliku:String;
    bajt:Byte;
    iter:Byte;
    numer:Integer;

    plikT_:Textfile;
    plikT:Textfile;

begin
// plik *.lst musi byc przepisany od nowa po to aby na koncu pliku po ostatniej pozycji wpisanej by³ znka konca wiersza i czyli jakby taki writeln, bo inaczej wpisanie nowego elemntu do pliku mogloby zorbic takie cos jak po Write
  if FileExists(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName) then
  begin
    UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName,$00000020);{ustawia atrybut archive dla pliku proto/../items.lst}

    Assignfile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
    Reset(plikT);
    Assignfile(plikT_,F2Folder+sciezka_do_plikow_pro_items+'items.$$$');
    Rewrite(plikT_);

    While not Eof(plikT) do
    begin
      Readln(plikT,nazwa_pliku_pro);
      Writeln(plikT_,nazwa_pliku_pro);
    end;
    CloseFile(plikT);
    Flush(plikT_);
    CloseFile(plikT_);

    DeleteFile(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
    RenameFile(F2Folder+sciezka_do_plikow_pro_items+'items.$$$',F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);

    nazwa_tymcz:=nazwa_pliku_pro;
    numer:=StrToInt(nazwa_tymcz);
    if (numer>=1) and (numer<10) then
    nazwa_pliku_pro:='0000000'+IntToStr(numer+1)+'.pro';

    if (numer>9) and (numer<100) then
    nazwa_pliku_pro:='000000'+IntToStr(numer+1)+'.pro';

    if (numer>99) and (numer<1000) then
    nazwa_pliku_pro:='00000'+IntToStr(numer+1)+'.pro';

    if (numer>999) and (numer<10000) then
    nazwa_pliku_pro:='0000'+IntToStr(numer+1)+'.pro';

    Assignfile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
    Append(plikT);
    Writeln(plikT,nazwa_pliku_pro);
    Flush(plikT);
    CloseFile(plikT);
  end;


  nazwa_pliku:=F2Folder+sciezka_do_plikow_pro_items+nazwa_pliku_pro;
  If FileExists(nazwa_pliku) then
    UstawAtrybutPliku(nazwa_pliku,$00000020);{ustawia atrybut archive dla pliku pro, ktory bedzie nadpisany jesli nie ma go w /proto/../items.lst}
  bajt:=0;
  Assignfile(plik,nazwa_pliku);
  Rewrite(plik);
  For iter:=0 to rozmiar_pliku-1 do
  Write(plik,bajt);
  CloseFile(plik);


  ZapiszWartosc(nazwa_pliku,$2,2,intToStr(numer+1));
  ZapiszWartosc(nazwa_pliku,$4,4,intToStr(100*(numer+1)));


  if item_type=4{ammo} then     //01-06-2005 - sprawdzone i dobrze dzia³a
  begin
    ZapiszWartosc(nazwa_pliku,20,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,23,1,intToStr(8));
    ZapiszWartosc(nazwa_pliku,26,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,28,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,29,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,30,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,31,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,35,1,intToStr(4)); {ammo=4}
    ZapiszWartosc(nazwa_pliku,39,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,43,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,47,1,intToStr(1));{waga - mapper nadaje tu wartosc 10}
    ZapiszWartosc(nazwa_pliku,52,1,intToStr(7));
    ZapiszWartosc(nazwa_pliku,56,1,intToStr(48));
    ZapiszWartosc(nazwa_pliku,64,1,intToStr(20));{ilosc amunicji w magazynku - domyslnie 20}
    ZapiszWartosc(nazwa_pliku,76,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,80,1,intToStr(1));
  end;

  if item_type=3{weapon} then       //01-06-2005 - sprawdzone i dobrze dzia³a
  begin
    ZapiszWartosc(nazwa_pliku,20,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,23,1,intToStr(8));
    ZapiszWartosc(nazwa_pliku,26,1,intToStr(160)); // 1hand
    ZapiszWartosc(nazwa_pliku,28,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,29,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,30,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,31,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,35,1,intToStr(3));{weapon=3}
    ZapiszWartosc(nazwa_pliku,39,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,43,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,47,1,intToStr(1));{waga - mapper nadaje tu wartosc 10}
    ZapiszWartosc(nazwa_pliku,52,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,53,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,54,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,55,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,56,1,intToStr(48));

    ZapiszWartosc(nazwa_pliku,81,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,82,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,83,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,84,1,intToStr(255));

    ZapiszWartosc(nazwa_pliku,101,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,102,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,103,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,104,1,intToStr(255));

    ZapiszWartosc(nazwa_pliku,113,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,114,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,115,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,116,1,intToStr(255));

    ZapiszWartosc(nazwa_pliku,$79,1,intToStr(0));

  end;

  if item_type=2{drug} then
  begin                             //01-06-2005 - sprawdzone i dobrze dzia³a
    ZapiszWartosc(nazwa_pliku,20,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,23,1,intToStr(8));
    ZapiszWartosc(nazwa_pliku,26,1,intToStr(176));
    ZapiszWartosc(nazwa_pliku,28,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,29,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,30,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,31,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,35,1,intToStr(2)); {drug=2}
    ZapiszWartosc(nazwa_pliku,39,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,43,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,47,1,intToStr(1));{waga - mapper nadaje tu wartosc 10}
    ZapiszWartosc(nazwa_pliku,52,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,53,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,54,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,55,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,56,1,intToStr(48));

    ZapiszWartosc(nazwa_pliku,61,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,62,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,63,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,64,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,65,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,66,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,67,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,68,1,intToStr(255));
  end;

  if item_type=0{armor} then        //01-06-2005 - sprawdzone i dobrze dzia³a
  begin
    ZapiszWartosc(nazwa_pliku,20,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,23,1,intToStr(8));
    ZapiszWartosc(nazwa_pliku,26,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,28,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,29,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,30,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,31,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,35,1,intToStr(0)); {armor=0}
    ZapiszWartosc(nazwa_pliku,39,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,43,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,47,1,intToStr(1));{waga - mapper nadaje tu wartosc 10}
    ZapiszWartosc(nazwa_pliku,52,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,53,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,54,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,55,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,56,1,intToStr(48));

    ZapiszWartosc(nazwa_pliku,117,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,118,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,119,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,120,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,121,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,122,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,123,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,124,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,125,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,126,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,127,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,128,1,intToStr(255));
  end;

  if item_type=1{container} then    //30-05-2005 - sprawdzone i dobrze dzia³a
  begin
    ZapiszWartosc(nazwa_pliku,20,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,23,1,intToStr(8));
    ZapiszWartosc(nazwa_pliku,26,1,intToStr(40));

    ZapiszWartosc(nazwa_pliku,28,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,29,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,30,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,31,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,35,1,intToStr(1)); {container=1}
    ZapiszWartosc(nazwa_pliku,39,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,43,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,47,1,intToStr(1));{waga - mapper nadaje tu wartosc 10}
    ZapiszWartosc(nazwa_pliku,52,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,53,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,54,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,55,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,56,1,intToStr(48));

    ZapiszWartosc(nazwa_pliku,60,1,intToStr(250));
  end;

  if item_type=6{key} then     //30-05-2005 - sprawdzone i dobrze dzia³a
  begin
    ZapiszWartosc(nazwa_pliku,20,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,23,1,intToStr(8));
    ZapiszWartosc(nazwa_pliku,26,1,intToStr(176));
    ZapiszWartosc(nazwa_pliku,28,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,29,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,30,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,31,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,35,1,intToStr(6)); {key=6}
    ZapiszWartosc(nazwa_pliku,39,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,43,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,47,1,intToStr(1));{waga - mapper nadaje tu wartosc 10}
    ZapiszWartosc(nazwa_pliku,52,1,intToStr(7));
    ZapiszWartosc(nazwa_pliku,56,1,intToStr(48));

    ZapiszWartosc(nazwa_pliku,57,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,58,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,59,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,60,1,intToStr(255));
  end;

  if item_type=5{misc} then    //30-05-2005 - sprawdzone i dobrze dzia³a
  begin
    ZapiszWartosc(nazwa_pliku,20,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,23,1,intToStr(8));
    ZapiszWartosc(nazwa_pliku,26,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,28,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,29,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,30,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,31,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,35,1,intToStr(5)); {misc=5}
    ZapiszWartosc(nazwa_pliku,39,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,43,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,47,1,intToStr(1));{waga - mapper nadaje tu wartosc 10}

    ZapiszWartosc(nazwa_pliku,52,1,intToStr(255)); // zmiana z 7 na 255, 28-01-2006
    ZapiszWartosc(nazwa_pliku,53,1,intToStr(255)); // dodane 28-01-2006
    ZapiszWartosc(nazwa_pliku,54,1,intToStr(255)); // dodane 28-01-2006
    ZapiszWartosc(nazwa_pliku,55,1,intToStr(255)); // dodane 28-01-2006

    ZapiszWartosc(nazwa_pliku,56,1,intToStr(48));

    ZapiszWartosc(nazwa_pliku,57,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,58,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,59,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,60,1,intToStr(255));

    // dodane 28-01-2006
    ZapiszWartosc(nazwa_pliku,64,1,intToStr(20));
    ZapiszWartosc(nazwa_pliku,65,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,66,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,67,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,68,1,intToStr(255));
  end;

end;




{Funkcja przeszukuje dwie kolumny ListView (Caption i SubItems[0])
Jeœli natrafi na podobn¹ do Textu frazê to zaznacza wpis w ListView.

Funkcja szuka dalej po klikniêciu przycisku od ostatniego miejsca, w którym
znaleziono podobn¹ do Textu frazê.

Created by Opi (17.11.2006)}
function TForm_Main.FindTextLV(ListView: TListView; Text: string; SelectItem: integer): boolean;
var
 x, y: integer;
 tmp: string;
begin
 {SprawdŸ czy Text ma wiêcej ni¿ 2 znaki, inaczej przeka¿ Wynik jako pusty
 i zakoñcz dzaia³anie ca³ej funkcji}
 if (Text = '') or (Length(Text) < 2) then
   begin
    Result := False;
    Exit;
   end;

 {Odznacz wszystkie wpisy w ListView, inaczej przekazany parametr nie spe³ni warunku}
 ListView.Selected := ListView.Items[-1];

 {Przekazany parametr jest teraz potrzebny do miejsca sk¹d rozpocznie siê
 iteracja, czyli od szukania Textu w ListView od kolejnego wpisu, dziêki czemu
 znalezione zostan¹ tak¿e inne pasuj¹ce do siebie Texty z innych komórek}
 y := SelectItem;
 Result := False;//ListView.FindCaption( 0, AnsiLowerCase(Text), False, True, False);

 for x := y to ListView.Items.Count-1 do
   begin
    {Pobranie do zmiennej nazwy szukanego ci¹gu}
    tmp := AnsiLowerCase(ListView.Items[x].Caption);

    {Przetworzenie stringa tak, aby sprawdziæ, czy szukana fraza jest
    identyczna jak nazwa Itema w ListView, tzn.:
    Obciêcie Wpisu w ListView o d³ugoœæ szukanego Textu}
    Delete(tmp, Length(Text) + 1, Length(Text) + 200);

    {Jeœli Text jest zgodny z wpisem z ListView, to zaznacz ten wpis w ListView
    i zakoñcz dzia³anie funkcji z wynikiem = nr komórki w której znaleziono frazê}
    if tmp = AnsiLowerCase(Text) then
      begin
       ListView.SetFocus;

       {Zaznacz i przewiñ na znalezion¹ pozycje}
       ListView.Selected := ListView.Items[x];
       ListView.Scroll(0, (ListView.Items[x].Top) - 100);

       Result := True;
       Break;
      end
    else
      begin
       {Pobranie do zmiennej nazwy szukanego ci¹gu ponownie, bo tmp zosta³ pociêty}
       tmp := AnsiLowerCase(ListView.Items.Item[x].SubItems[0]);

       {Przetworzenie stringa tak, aby sprawdziæ, czy szukana fraza jest
       identyczna jak nazwa PodItema w ListView, tzn.:
       Obciêcie Wpisu w ListView o d³ugoœæ szukanego Textu}
       Delete(tmp, Length(Text) + 1, Length(Text) + 200);

       {Jeœli Text jest zgodny z wpisem z PodItema w ListView, to zaznacz ten wpis
       w ListView i zakoñcz dzia³anie funkcji z wynikiem = nr komórki w której znaleziono frazê}
       if tmp = AnsiLowerCase(Text) then
         begin
          ListView.SetFocus;

          {Zaznacz i przewiñ na znalezion¹ pozycje}
          ListView.Selected := ListView.Items[x];
          ListView.Scroll(0, (ListView.Items[x].Top) - 100);

          Result := True;
          Break;
         end
       else
       {Jeœli nadal nie jest to identyczny Text co we wpisie w ListView to przeszukuj
       pojedynczo literka za literk¹ Items w ListView}
       if Pos(AnsiLowerCase(Text), AnsiLowerCase(ListView.Items[x].Caption)) > 0 then
         begin
          ListView.SetFocus;

          {Zaznacz wybrana pozycje i przewin na wybrana pozycje}
          ListView.Selected := ListView.Items[x];
          ListView.Scroll(0, (ListView.Items[x].Top) - 100);

          Result := True;
          Break;
         end
       else
       {Jeœli nadal nie jest to identyczny Text co Items w ListView to przeszukuj
       pojedynczo literka za literk¹ PodItems w ListView}
       if Pos(AnsiLowerCase(Text), AnsiLowerCase(ListView.Items.Item[x].SubItems[0])) > 0 then
         begin
          ListView.SetFocus;

          {Zaznacz wybrana pozycje i przewin na wybrana pozycje}
          ListView.Selected := ListView.Items[x];
          ListView.Scroll(0, (ListView.Items[x].Top) - 100);

          Result := True;
          Break;
         end

       {Text nie jest identyczny z ¿adnym wpisem wiêc przekazany wynik jest pusty}
       else Result := False;
      end;
   end;
end;

procedure TForm_Main.BitBtn1Click(Sender: TObject);
var
 i, Idx: integer;
begin
 {
 ZnajdŸ zaznaczony pierwszy wpis w ListaOpisy i przeka¿ do zmiennej, która s³u¿y
 za parametr dla funkcji FindTextLV. Parametr jest potrzebny, aby funkcja przeszukiwa³a
 po kolei ka¿dy wpis i zaznacza³a nastêpny na liœcie, który siê zgadza z tekstem.
 Inaczej funkcja zaznaczy tylko pierwszy napotkany zgadzaj¹cy siê z tekstem wpis,
 a pozosta³e nie s¹ brane pod uwagê w ogóle! - ten parametr usuwa ten problem.
 }
 Idx := 0;

 for i := 0 to ListViewFiles.Items.Count-1 do
  if ListViewFiles.Items[i].Selected then
    begin
     Idx := ListViewFiles.Items[i].Index + 1;
     Break;
    end;
 {
 Jeœli index osi¹gn¹³ liczbê wpisów w ListaOpisy to ustaw Idx na 0, aby funkcja
 FindTextLV sprawdza³a pozycje z tekstem od pocz¹tku listy ListaOpisy.
 }
 if Idx = ListViewFiles.Items.Count then Idx := 0;
 {
 Przeszukaj ListeWynikow pod k¹tem Textu w Edit1, maj¹c parametr Index, od
 którego aktualnie Itema w TodoList zacz¹æ szukanie.

 Jeœli wynik funkcji FindTextLV to Prawda to oznacza, ¿e znaleziono frazê.
 Oznacz wiêc Edit na kolor zielony daj¹c graficzn¹ informacjê u¿ytkownikowi.
 Inaczej oznacz Edit na czerwono .
 }
 if FindTextLV(ListViewFiles, Edit_Search.Text, Idx) then Edit_Search.Color := $00A6FFD2
 else Edit_Search.Color := $00A7A7FE;
 {
 W³¹czenie tego fokusa spowoduje, ¿e nie zaznaczy pozycji w ListaOpisy
 EditWyszukaj.SetFocus;
 }

 BitBtn1.SetFocus;
end;

procedure TForm_Main.Edit_SearchClick(Sender: TObject);
begin
  Edit_Search.Color := $FFFFFF;
end;

procedure TForm_Main.Edit_SearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    BitBtn1Click(sender);
    BitBtn1.SetFocus;
  end;
end;


procedure LOGUJ(linia:String);
var plik_log:TextFile;
begin
  AssignFile(plik_log,'log.txt');
  if not FileExists('log.txt') then Rewrite(plik_log) else
  Append(plik_log);
  Writeln(plik_log,linia);
  Flush(plik_log);
  CloseFile(plik_log);
end;


procedure TForm_Main.Msg2Ini(nazwa_msg,nazwa_ini:String);
var i:Integer;
    plikT1,plikT2:TextFile;
    linia:String;
	  pozycja:Integer;
    znak_hash:String[1];

begin
//# komentarz
//{162}{}{Weapon Knockback}
//{163}{}{Power Armor}
//{164}{}{Alcoholic}# was Combat Armor
  AssignFile(plikT1,nazwa_msg);
  Reset(plikT1);

  AssignFile(plikT2,nazwa_ini);
  Rewrite(plikT2);
  Writeln(plikT2,'[Descriptions]');

  While not Eof(plikT1) do
  begin
    Readln(plikT1,linia);
    linia:=Trim(linia);

    if(Length(linia)>0) then
    begin
      // 13-01-2013 - zakomentowany fragment kodu dotyczacy usuwania czesci lini po znaku # (uwaga zg³oszona na NMA), gdyz psuje np. {33100}{}{Cat's Paw Issue #5} 
      //pozycja:=Pos('#',linia);
      //znak_hash:=Copy(linia,pozycja,1);

      //while (pozycja<=1) and (znak_hash='#') do
      //begin
      //  Readln(plikT1,linia);
      //  linia:=Trim(linia);
      //  pozycja:=Pos('#',linia);
      //  znak_hash:=Copy(linia,pozycja,1);
      //end;

      //if (pozycja>1) and (znak_hash='#') then
      //begin
      //  //loguj(nazwa_msg + ' : ' + IntToStr(pozycja) + ' linia: ' + linia);
      //  Delete(linia,pozycja,length(linia)-pozycja+1); //{kasuje z lini znak # i reszte, ktora znajduje sie za tym znakiem np. # was Combat Armor
      //  linia:=Trim(linia);
      //end;

      if (Length(linia)>0) and (linia[1]='{') then
      begin
        Delete(linia,1,1); {kasuje z lini pierwszy znak = {                 }
        Delete(linia,length(linia),1); {kasuje z lini ostatni znak =}      {}

        linia:=Trim(linia);
        for i:=1 to length(linia) do
        begin
          if linia[i]='}' then
          begin
            Delete(linia,i,4); {kasuje z lini ci¹g 4 nawiasów }{}{          }
            insert('=',linia,i);
            break;
          end;
        end;

        if length(linia)>0 then
          Writeln(plikT2,linia);
      end;
    end;

  end;

  CloseFile(plikT1);
  Flush(plikT2);
  CloseFile(plikT2);
end;




procedure TForm_Main.Ini2Msg(nazwa_ini,nazwa_msg:String);
var i:Integer;
    plikT1,plikT2:TextFile;
    linia:String;
begin
//  AssignFile(plikT1,F2Folder+pro_item_msgFileName);
  AssignFile(plikT1,nazwa_msg);
  Rewrite(plikT1);

//  AssignFile(plikT2,F2Folder+pro_item_ini);
  AssignFile(plikT2,nazwa_ini);
  Reset(plikT2);

  Readln(plikT2,linia);  {ta instrukcja omija pierwsza liniê w pliku ini [description]}

  While not Eof(plikT2) do
  begin
    Readln(plikT2,linia);

    if ((length(linia)>0) and (linia<>' ')) and ((linia[1]<>'/')or(linia[2]<>'/')) then
    begin
      linia:=Trim(linia);

      linia:='{'+linia+'}';
      for i:=1 to length(linia) do
      begin
        if linia[i]='=' then
        begin
          linia[i]:='}';
          insert('{}{',linia,i+1);
          break;
        end;
      end;
      if (length(linia)>0) and (linia<>' ') then Writeln(plikT1,linia);
    end;

  end;
  Flush(plikT1);
  CloseFile(plikT1);
  CloseFile(plikT2);
end;





procedure TForm_Main.New_AmmoClick(Sender: TObject);
begin
  New_Item(81,4); {item_type=4 dla ammo}
  New_item_test:=True;
  UpdateList_Items(81);
end;

procedure TForm_Main.New_WeaponClick(Sender: TObject);
begin
  New_Item(122,3); {item_type=3 dla weapon}
  New_item_test:=True;
  UpdateList_Items(122);
end;

procedure TForm_Main.New_DrugClick(Sender: TObject);
begin
  New_Item(125,2); {item_type=2 dla drug}
  New_item_test:=True;
  UpdateList_Items(125);
end;

procedure TForm_Main.New_ArmorClick(Sender: TObject);
begin
  New_Item(129,0); {item_type=0 dla armor}
  New_item_test:=True;
  UpdateList_Items(129);
end;

procedure TForm_Main.Container3Click(Sender: TObject);
begin
  New_Item(65,1); {item_type=1 dla container}
  New_item_test:=True;
  UpdateList_Items(65);
end;

procedure TForm_Main.Key2Click(Sender: TObject);
begin
  New_Item(61,6); {item_type=6 dla Key}
  New_item_test:=True;
  UpdateList_Items(61);
end;

procedure TForm_Main.Misc3Click(Sender: TObject);
begin
  New_Item(69,5); {item_type=5 dla Misc}
  New_item_test:=True;
  UpdateList_Items(69);
end;



procedure TForm_Main.Show_Frm(NazwaPlikuObrazka_Frm:String;numer_okienka:Byte);
var  Rct: TRect;
     x,y:Integer;
     i,j:Integer;
     nazwa_pliku_frm_crittersa:string[6];
begin


  case numer_okienka of
  1: begin
       Image1.Picture := nil;
//       Application.Icon := nil;
       NazwaPlikuObrazka_FRM:=F2Folder+sciezka_do_plikow_art_inven_lst+ComboBoxInventoryFrame.items[ComboBoxInventoryFrame.ItemIndex];

       repeat
         if NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]=' ' then Delete(NazwaPlikuObrazka_FRM,length(NazwaPlikuObrazka_FRM),1);
       until NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]<>' ';

       if FileExists(NazwaPlikuObrazka_Frm) then
       begin
         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         rozmiar_pliku:=FileSize(plik_frm);
         CloseFile(plik_frm);

//  first_data_offset:=header_rozmiar;

         SizeX:=CzytajWartosc(NazwaPlikuObrazka_Frm,62{first_data_offset},2);
         SizeY:=CzytajWartosc(NazwaPlikuObrazka_Frm,64{first_data_offset+2},2);

         Image1.Width:=SizeX;
         Image1.Height:=SizeY;
         Image1.Left:=338+215 div 2- SizeX div 2;
         Image1.Top:=110 +147 div 2 - SizeY div 2;


//  rozmiar_danych:=SizeX*SizeY;

//  first_frame_offset:=rozmiar_pliku-rozmiar_danych;
         first_frame_offset:=74;

         Image1.Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image1.Width;
         Rct.Bottom := Image1.Height;
         Image1.Canvas.FillRect(Rct);

         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         seek(plik_frm,first_frame_offset);
         for j:=0 to SizeY-1 do
           for i:=0 to SizeX-1 do
             begin
               Read(plik_frm,numer_koloru); // odczytywany numer koloru dla t³a obrazka to numer = 0 

               x:=i;
               y:=j;
//               x:=((Image1.Width - SizeX) div 2)+x;
//               y:=((Image1.Height - SizeY) div 2)+y;

//               x:=((Image1.Width - SizeX) )+x;
//               y:=((Image1.Height - SizeY))+y;

               Image1.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
             end;
         Image1.Update;
         CloseFile(plik_frm);
       end;

       if not FileExists(NazwaPlikuObrazka_FRM) then
       begin
         Wypakowuj_plik(F2Folder + '\data\','art\inven\',ComboBoxInventoryFrame.items[ComboBoxInventoryFrame.ItemIndex]);
// dodane 09-06-2008 gdy nie moze wypakowac pliku z master.dat albo patch.dat to zastepczy wsywietli
         if Wypakowuj_plik_boolean = False then
         begin
           Image1.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
           Rct.Top := 0;
           Rct.Left := 0;
           Rct.Right := Image1.Width;
           Rct.Bottom := Image1.Height;
           Image1.Canvas.FillRect(Rct);
           Image1.Canvas.TextOut(66,62,'FRM file not found');
           Image1.Update;
         end
         else
         begin
//+++++++++++++++++++++++++++++
           UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
           AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
           Reset(plik_frm);
           rozmiar_pliku:=FileSize(plik_frm);
           CloseFile(plik_frm);

//  first_data_offset:=header_rozmiar;

           SizeX:=CzytajWartosc(NazwaPlikuObrazka_Frm,62{first_data_offset},2);
           SizeY:=CzytajWartosc(NazwaPlikuObrazka_Frm,64{first_data_offset+2},2);

         Image1.Width:=SizeX;
         Image1.Height:=SizeY;
         Image1.Left:=338+215 div 2 - SizeX div 2;
         Image1.Top:=110 +147 div 2 - SizeY div 2;

//  rozmiar_danych:=SizeX*SizeY;

//  first_frame_offset:=rozmiar_pliku-rozmiar_danych;
           first_frame_offset:=74;

           Image1.Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
           Rct.Top := 0;
           Rct.Left := 0;
           Rct.Right := Image1.Width;
           Rct.Bottom := Image1.Height;

           Image1.Canvas.FillRect(Rct);
           UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
           AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
           Reset(plik_frm);
           seek(plik_frm,first_frame_offset);
           for j:=0 to SizeY-1 do
             for i:=0 to SizeX-1 do
               begin
                 Read(plik_frm,numer_koloru);
                 x:=i;
                 y:=j;
//                 x:=((Image1.Width - SizeX) div 2)+x;
//                 y:=((Image1.Height - SizeY) div 2)+y;

//                 x:=((Image1.Width - SizeX))+x;
//                 y:=((Image1.Height - SizeY))+y;
                 Image1.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
               end;
           Image1.Update;
           CloseFile(plik_frm);


//+++++++++++++++++++++++++++++
           //if use_master_dat=false then begin
		   if use_master_dat=true then begin
              DeleteFile(NazwaPlikuObrazka_FRM);
//            ShowMessage('Kasuje plik 1: '+NazwaPlikuObrazka_FRM);// for debug
           end;
         end;
       end;
     end;
  2: begin
       Image2.Picture := nil;   // update 12-11-2009 - zle sie wyswietlal obrazek (obcinalo obrazek)
       NazwaPlikuObrazka_FRM:=F2Folder+sciezka_do_plikow_art_items_lst+ComboBoxGroundFrame.items[ComboBoxGroundFrame.ItemIndex];

       repeat
         if NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]=' ' then Delete(NazwaPlikuObrazka_FRM,length(NazwaPlikuObrazka_FRM),1);
       until NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]<>' ';

       if FileExists(NazwaPlikuObrazka_Frm) then
       begin
         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../items.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         rozmiar_pliku:=FileSize(plik_frm);
         CloseFile(plik_frm);

//  first_data_offset:=header_rozmiar;

         SizeX:=CzytajWartosc(NazwaPlikuObrazka_Frm,62{first_data_offset},2);
         SizeY:=CzytajWartosc(NazwaPlikuObrazka_Frm,64{first_data_offset+2},2);

         Image2.Width:=SizeX;
         Image2.Height:=SizeY;
         Image2.Left:=560 + 215 div 2 - SizeX div 2;
         Image2.Top:= 110 + 147 div 2 - SizeY div 2;
//         Image2.Update;


//  rozmiar_danych:=SizeX*SizeY;

//  first_frame_offset:=rozmiar_pliku-rozmiar_danych;
         first_frame_offset:=74;

         Image2.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image2.Width;
         Rct.Bottom := Image2.Height;
         Image2.Canvas.FillRect (Rct);
         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         seek(plik_frm,first_frame_offset);
         for j:=0 to SizeY-1 do
           for i:=0 to SizeX-1 do
             begin
               Read(plik_frm,numer_koloru);
               x:=i;
               y:=j;
{               x:=((Image2.Width - SizeX) div 2)+x;
               y:=((Image2.Height - SizeY) div 2)+y;
}
               Image2.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
             end;
         Image2.Update;
         CloseFile(plik_frm);
       end;

       if not FileExists(NazwaPlikuObrazka_FRM) then
       begin
         Wypakowuj_plik(F2Folder + '\data\','art\items\',ComboBoxGroundFrame.items[ComboBoxGroundFrame.ItemIndex]);
// dodane 09-06-2008 gdy nie moze wypakowac pliku z master.dat albo patch.dat to zastepczy wsywietli
         if Wypakowuj_plik_boolean = False then
         begin
//         ShowMessage('File '+NazwaPlikuObrazka_Frm+' not found');
           Image2.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
           Rct.Top := 0;
           Rct.Left := 0;
           Rct.Right := Image2.Width;
           Rct.Bottom := Image2.Height;
           Image2.Canvas.FillRect (Rct);
           Image2.Canvas.TextOut(66,62,'FRM file not found');
           Image2.Update;
         end
         else
         begin
           UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../items.lst}
           AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
           Reset(plik_frm);
           rozmiar_pliku:=FileSize(plik_frm);
           CloseFile(plik_frm);

//  first_data_offset:=header_rozmiar;

           SizeX:=CzytajWartosc(NazwaPlikuObrazka_Frm,62{first_data_offset},2);
           SizeY:=CzytajWartosc(NazwaPlikuObrazka_Frm,64{first_data_offset+2},2);


         Image2.Width:=SizeX;
         Image2.Height:=SizeY;
         Image2.Left:=560 + 215 div 2 - SizeX div 2;
         Image2.Top:= 110 + 147 div 2 - SizeY div 2;
//         Image2.Update;

//  rozmiar_danych:=SizeX*SizeY;

//  first_frame_offset:=rozmiar_pliku-rozmiar_danych;
           first_frame_offset:=74;

           Image2.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
           Rct.Top := 0;
           Rct.Left := 0;
           Rct.Right := Image2.Width;
           Rct.Bottom := Image2.Height;
           Image2.Canvas.FillRect (Rct);
           UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
           AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
           Reset(plik_frm);
           seek(plik_frm,first_frame_offset);
           for j:=0 to SizeY-1 do
             for i:=0 to SizeX-1 do
               begin
                 Read(plik_frm,numer_koloru);
                 x:=i;
                 y:=j;
{                 x:=((Image2.Width - SizeX) div 2)+x;
                 y:=((Image2.Height - SizeY) div 2)+y;
}
                 Image2.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
               end;
           Image2.Update;
           CloseFile(plik_frm);

           //if use_master_dat=false then begin
		   if use_master_dat=true then begin
              DeleteFile(NazwaPlikuObrazka_FRM);
//            ShowMessage('Kasuje plik 2: '+NazwaPlikuObrazka_FRM);// for debug
           end;
         end;
       end;  
     end;

// odtad obrazki crittersow potrzebne do ustawiania wygladu Armoru
  3: begin
       nazwa_pliku_frm_crittersa:=ComboBox1.items[ComboBox1.ItemIndex];
//       Showmessage('Nazwa pliku pliku frm crittersa: '+nazwa_pliku_frm_crittersa);
       NazwaPlikuObrazka_FRM:=F2Folder+ '\data\art\critters\'+nazwa_pliku_frm_crittersa+'aa.frm';
//       Showmessage('Nazwa pliku NazwaPlikuObrazka_FRM: '+NazwaPlikuObrazka_FRM);

//       NazwaPlikuObrazka_FRM:=F2Folder+sciezka_do_plikow_art_critters_lst+ComboBox1.items[ComboBox1.ItemIndex]; // cos nie bardzo dzia³a

       //NazwaPlikuObrazka_FRM:=F2Folder+sciezka_do_plikow_art_items_lst+ComboBoxGroundFrame.items[ComboBoxGroundFrame.ItemIndex]; // linia przyk³adowa

       repeat
         if NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]=' ' then Delete(NazwaPlikuObrazka_FRM,length(NazwaPlikuObrazka_FRM),1);
       until NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]<>' ';

       if FileExists(NazwaPlikuObrazka_Frm) then
       begin
         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../items.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         rozmiar_pliku:=FileSize(plik_frm);
         CloseFile(plik_frm);

//  first_data_offset:=header_rozmiar;

         SizeX:=CzytajWartosc(NazwaPlikuObrazka_Frm,62{first_data_offset},2);
         SizeY:=CzytajWartosc(NazwaPlikuObrazka_Frm,64{first_data_offset+2},2);

//  rozmiar_danych:=SizeX*SizeY;

//  first_frame_offset:=rozmiar_pliku-rozmiar_danych;
         first_frame_offset:=74;

         Image3.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image3.Width;
         Rct.Bottom := Image3.Height;
         Image3.Canvas.FillRect (Rct);

         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         seek(plik_frm,first_frame_offset);
         for j:=0 to SizeY-1 do
           for i:=0 to SizeX-1 do
             begin
               Read(plik_frm,numer_koloru);
               x:=i;
               y:=j;
               x:=((Image3.Width - SizeX) div 2)+x;
               y:=((Image3.Height - SizeY) div 2)+y;
               Image3.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
             end;
         Image3.Update;
         CloseFile(plik_frm);
       end;

       if not FileExists(NazwaPlikuObrazka_FRM) then
       begin
//         Showmessage('Kurde, nie ma tego pliku: '+NazwaPlikuObrazka_FRM+' próbujê go wypakowac, ale cos z tym wypakowaniem nie tak');
//         Wypakowuj_plik_FRM(F2Folder + '\data\','art\critters\',nazwa_pliku_frm_crittersa+'aa.frm');
//         Wypakowuj_plik_FRM(F2Folder + '\data\','art\critters\',ComboBox1.items[ComboBox1.ItemIndex]);
         Wypakowuj_plik_critter(F2Folder + '\data\','art\critters\',nazwa_pliku_frm_crittersa+'aa.frm');

         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../items.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         rozmiar_pliku:=FileSize(plik_frm);
         CloseFile(plik_frm);

//  first_data_offset:=header_rozmiar;

         SizeX:=CzytajWartosc(NazwaPlikuObrazka_Frm,62{first_data_offset},2);
         SizeY:=CzytajWartosc(NazwaPlikuObrazka_Frm,64{first_data_offset+2},2);

//  rozmiar_danych:=SizeX*SizeY;

//  first_frame_offset:=rozmiar_pliku-rozmiar_danych;
         first_frame_offset:=74;

         Image3.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image3.Width;
         Rct.Bottom := Image3.Height;
         Image3.Canvas.FillRect (Rct);

         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         seek(plik_frm,first_frame_offset);
         for j:=0 to SizeY-1 do
           for i:=0 to SizeX-1 do
             begin
               Read(plik_frm,numer_koloru);
               x:=i;
               y:=j;
               x:=((Image3.Width - SizeX) div 2)+x;
               y:=((Image3.Height - SizeY) div 2)+y;
               Image3.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
             end;
         Image3.Update;
         CloseFile(plik_frm);

         //if use_master_dat=false then begin
		 if use_master_dat=true then begin
            DeleteFile(NazwaPlikuObrazka_FRM);
//            ShowMessage('Kasuje plik 3: '+NazwaPlikuObrazka_FRM);// for debug
         end;
       end;




{       else
       begin
//         ShowMessage('File '+NazwaPlikuObrazka_Frm+' not found');
         Image3.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image3.Width;
         Rct.Bottom := Image3.Height;
         Image3.Canvas.FillRect (Rct);
         Image3.Canvas.TextOut(66,62,'FRM file not found');
         Image3.Update;
       end;}
     end;
  4: begin
       nazwa_pliku_frm_crittersa:=ComboBox2.items[ComboBox2.ItemIndex];
       NazwaPlikuObrazka_FRM:=F2Folder+ '\data\art\critters\'+nazwa_pliku_frm_crittersa+'aa.frm';
//       NazwaPlikuObrazka_FRM:=F2Folder+sciezka_do_plikow_art_critters_lst+ComboBox2.items[ComboBox2.ItemIndex]; // cos nie bardzo dziala

       repeat
         if NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]=' ' then Delete(NazwaPlikuObrazka_FRM,length(NazwaPlikuObrazka_FRM),1);
       until NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]<>' ';

       if FileExists(NazwaPlikuObrazka_Frm) then
       begin
         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../items.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         rozmiar_pliku:=FileSize(plik_frm);
         CloseFile(plik_frm);

//  first_data_offset:=header_rozmiar;

         SizeX:=CzytajWartosc(NazwaPlikuObrazka_Frm,62{first_data_offset},2);
         SizeY:=CzytajWartosc(NazwaPlikuObrazka_Frm,64{first_data_offset+2},2);

//  rozmiar_danych:=SizeX*SizeY;

//  first_frame_offset:=rozmiar_pliku-rozmiar_danych;
         first_frame_offset:=74;

         Image4.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image4.Width;
         Rct.Bottom := Image4.Height;
         Image4.Canvas.FillRect (Rct);

         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         seek(plik_frm,first_frame_offset);
         for j:=0 to SizeY-1 do
           for i:=0 to SizeX-1 do
             begin
               Read(plik_frm,numer_koloru);
               x:=i;
               y:=j;
               x:=((Image4.Width - SizeX) div 2)+x;
               y:=((Image4.Height - SizeY) div 2)+y;
               Image4.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
             end;
         Image4.Update;
         CloseFile(plik_frm);
       end;

       if not FileExists(NazwaPlikuObrazka_FRM) then
       begin
//         Wypakowuj_plik_FRM(F2Folder + '\data\','art\critters\',ComboBox2.items[ComboBox2.ItemIndex]);
         Wypakowuj_plik_critter(F2Folder + '\data\','art\critters\',nazwa_pliku_frm_crittersa+'aa.frm');

         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../items.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         rozmiar_pliku:=FileSize(plik_frm);
         CloseFile(plik_frm);

//  first_data_offset:=header_rozmiar;

         SizeX:=CzytajWartosc(NazwaPlikuObrazka_Frm,62{first_data_offset},2);
         SizeY:=CzytajWartosc(NazwaPlikuObrazka_Frm,64{first_data_offset+2},2);

//  rozmiar_danych:=SizeX*SizeY;

//  first_frame_offset:=rozmiar_pliku-rozmiar_danych;
         first_frame_offset:=74;

         Image4.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image4.Width;
         Rct.Bottom := Image4.Height;
         Image4.Canvas.FillRect (Rct);

         UstawAtrybutPliku(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         seek(plik_frm,first_frame_offset);
         for j:=0 to SizeY-1 do
           for i:=0 to SizeX-1 do
             begin
               Read(plik_frm,numer_koloru);
               x:=i;
               y:=j;
               x:=((Image4.Width - SizeX) div 2)+x;
               y:=((Image4.Height - SizeY) div 2)+y;
               Image4.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
             end;
         Image4.Update;
         CloseFile(plik_frm);

         //if use_master_dat=false then begin
		 if use_master_dat=true then begin
            DeleteFile(NazwaPlikuObrazka_FRM);
//            ShowMessage('Kasuje plik 4: '+NazwaPlikuObrazka_FRM);// for debug
         end;
       end;

       {       else
       begin
//         ShowMessage('File '+NazwaPlikuObrazka_Frm+' not found');
         Image4.Canvas.Brush.Color := RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image4.Width;
         Rct.Bottom := Image4.Height;
         Image4.Canvas.FillRect (Rct);
         Image4.Canvas.TextOut(66,62,'FRM file not found');
         Image4.Update;
       end;
}
     end;
  end;
end;

//                   Wypakowuj_plik_critter(F2Folder + '\data\','art\critters\',nazwa_pliku_frm_crittersa+'aa.frm');
Procedure TForm_Main.Wypakowuj_plik_critter(MainPath,path,nazwa_pliku:String);
begin
{ repeat
    if nazwa_pliku[length(nazwa_pliku)]=' ' then Delete(nazwa_pliku,length(nazwa_pliku),1);
  until nazwa_pliku[length(nazwa_pliku)]<>' ';}
{
  if FO1_active=False then
  begin
    if not FileExists(mainPath+Path+nazwa_pliku) then
    begin
      if znajdz_plik(plik_critter_dat,path+nazwa_pliku)<>0 then wypakuj_plik(plik_critter_dat,path+nazwa_pliku,IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,MainPath+Path)
      else
      begin
        ShowMessage('Can not unpack file "'+path+nazwa_pliku+ '" from FO2 critter.dat');
        halt;
      end;
    end;
  end;
  if FO1_active=True then
  begin
    if not FileExists(mainPath+Path+nazwa_pliku) then
    begin
      WypakujFO1(plik_critter_dat, path+nazwa_pliku);
    end;
  end;
}
  case FO1_active of
  False:
  begin
    if not FileExists(mainPath+Path+nazwa_pliku) then
    begin
      if znajdz_plik(plik_critter_dat,path+nazwa_pliku)<>0 then wypakuj_plik(plik_critter_dat,path+nazwa_pliku,IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,MainPath+Path)
      else
      begin
        ShowMessage('Can not unpack file "'+path+nazwa_pliku+ '" from FO2 critter.dat');
		DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
        halt;
      end;
    end;
  end;
  True:
  begin
    if not FileExists(mainPath+Path+nazwa_pliku) then
    begin
      WypakujFO1(plik_critter_dat, path+nazwa_pliku);
    end;
  end;
  end;

end;

procedure TForm_Main.ListOfInventoryFrame;
begin
  if FileExists(F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName) then
  begin
//    UstawAtrybutPliku(F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
    ComboBoxInventoryFrame.items.LoadFromFile(F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName)
  end
//  else ShowMessage('WARNING! No file: '+{F2Folder+}sciezka_do_plikow_art_inven_lst+Inven_LstFileName);
  else ShowMessage('WARNING! List file of inventory items pictures not found '+{F2Folder+}sciezka_do_plikow_art_inven_lst+Inven_LstFileName);
end;

procedure TForm_Main.ListOfArmorFrame;
// procedura skopiowana z ListOfInventoryFrame
begin
  if FileExists(F2Folder+sciezka_do_plikow_art_critters_lst+Critters_LstFileName) then
  begin
//    ShowMessage('plik critters.lst istnieje!');
//    UstawAtrybutPliku(F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
    ComboBox1.items.LoadFromFile(F2Folder+sciezka_do_plikow_art_critters_lst+Critters_LstFileName);
    ComboBox2.items.LoadFromFile(F2Folder+sciezka_do_plikow_art_critters_lst+Critters_LstFileName);
  end
//  else ShowMessage('WARNING! No file: '+{F2Folder+}sciezka_do_plikow_art_inven_lst+Inven_LstFileName);
  else ShowMessage('WARNING! List file of critters armors not found '+{F2Folder+}sciezka_do_plikow_art_critters_lst+Critters_LstFileName);
end;
{
  //³aduje liste skrytpów
  Lista := TStringList.Create;
  try
    iter:=0;
    Lista.Add(IntToStr(iter)+' '+'Script not assigned');
//  UstawAtrybutPliku(F2Folder+'\data\scripts\scripts.lst',$00000020);{ustawia atrybut archive dla pliku }
{    AssignFile(plikT,F2Folder+'\data\scripts\scripts.lst');
    Reset(plikT);
    while not eof(plikT) do
    begin
      inc(iter);
      Readln(plikT,nazwa_skryptu);
      Lista.Add(IntToStr(iter)+' '+nazwa_skryptu);
    end;
    CloseFile(plikT);
    ComboBox_Scripts.Items.Clear;
    ComboBox_Scripts.Items.AddStrings(Lista);
  finally
    Lista.Free;
  end;
}

procedure TForm_Main.ListOfGroundFrame;
begin
  if FileExists(F2Folder+sciezka_do_plikow_art_items_lst+Item_LstFileName) then
  begin
//    UstawAtrybutPliku(F2Folder+sciezka_do_plikow_art_items_lst+Item_LstFileName,$00000020);{ustawia atrybut archive dla pliku art/../items.lst}
    ComboBoxGroundFrame.items.LoadFromFile(F2Folder+sciezka_do_plikow_art_items_lst+Item_LstFileName)
  end
//  else ShowMessage('WARNING! No file: '+{F2Folder+}sciezka_do_plikow_art_items_lst+Item_LstFileName);
  else ShowMessage('WARNING! List file of ground items pictures not found '+{F2Folder+}sciezka_do_plikow_art_items_lst+Item_LstFileName);
end;


Procedure TForm_Main.Zapisz(ActualFile:string);
var plikT:TextFile;
    znak:Char;
    s:String;
begin
  AssignFile(plikT,F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
  Append(plikT);
  Writeln(plikT,'');
  Flush(plikT);
  CloseFile(plikT);


  AssignFile(plikT,TemporaryEditorFile);
  Rewrite(plikT);
  Writeln(plikT,Editor.Lines.Text);
  Flush(plikT);
  CloseFile(plikT);

  AssignFile(plikT,TemporaryEditorFile);
  Reset(plikT);
  while not Eof(plikT) do
  begin
    Read(plikT,znak);
    if znak<>#13 then s:=s+znak else Readln(plikT);
  end;
//  s:=s+'';
  CloseFile(plikT);

  pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
  try
    pro_item_msg_INI.WriteString('Descriptions',IntToStr(Item_Id_Long),Edit_item_name.Text);
    pro_item_msg_INI.WriteString('Descriptions',IntToStr(Item_Id_Long+1),s);
//    WriteIni(F2Folder+sciezka_do_pro_item_msg+pro_item_ini,'Descriptions',IntToStr(Item_Id_Long),Edit_item_name.Text);
//    WriteIni(F2Folder+sciezka_do_pro_item_msg+pro_item_ini,'Descriptions',IntToStr(Item_Id_Long+1),s);
  finally
    pro_item_msg_INI.Free;
  end;



  UstawAtrybutPliku(ActualFile,$00000020);{ustawia atrybut archive dla pliku pro}
  Zapisz_BasicAttributes(ActualFile);
  if item_type=0 then Zapisz_Armor(ActualFile);{armor attributes}
  if item_type=1 then Zapisz_Container(ActualFile);{container attributes}
  if item_type=2 then Zapisz_Drug(ActualFile);{drug attributes}
  if item_type=3 then Zapisz_Weapon(ActualFile);{weapon attributes}
  if item_type=4 then begin Zapisz_Ammo(ActualFile); Lista_ammo; end;{ammo attributes}
  if item_type=5 then Zapisz_Misc(ActualFile);{misc attributes}
  if item_type=6 then Zapisz_Key(ActualFile);{Key attributes}
  if ReadOnlyAttr='1' then UstawAtrybutPliku(ActualFile,$00000001); {ustawia atrybut readonly dla pliku pro}
  if ReadOnlyAttr='0' then UstawAtrybutPliku(ActualFile,$00000020);{ustawia atrybut archive dla pliku pro}
end;


Procedure TForm_Main.ZapiszWartosc(NazwaPliku:String;pozycja:Integer;Ile_bajtow:Byte;EditText:String);
var plik:File of Byte;
    w1,w2,w3,w4:Byte;
    w0:Integer;{wartosc zmiennej w okienku EDIT.text}
begin
  w0:=StrToInt(EditText);
  UstawAtrybutPliku(NazwaPliku,$00000020); //archive
  AssignFile(plik,NazwaPliku);
  Reset(plik);
  Seek(plik,pozycja);

//  ShowMessage('Zapisuje do ' + NazwaPliku + ' ile bajtow = ' + IntToStr(ile_bajtow) + ' na pozycji ' + IntToStr(pozycja) + ' wartosc = ' + IntToStr(w0));

  Case Ile_bajtow of
  1:begin
      w1:=w0;
      Write(plik,w1);
    end;
  2:begin
      w1:=w0 div 256;
      w2:=w0-256*w1;
      Write(plik,w1,w2);
    end;
  3:begin
      w1:=w0 div 65536;
      w2:=(w0-65536*w1) div 256;
      w3:=w0-65536*w1-256*w2;
      Write(plik,w1,w2,w3);
    end;
  4:begin
      if w0<0 then
      begin
        w1:=$FF;
        w2:=$FF;
        w3:=$FF;
        w4:=w0;
      end
      else
      begin
        w1:=w0 div 16777216;
        w2:=(w0-16777216*w1) div 65536;
        w3:=(w0-16777216*w1-65536*w2) div 256;
        w4:=w0-16777216*w1-65536*w2-256*w3;
      end;
      Write(plik,w1,w2,w3,w4);
    end;
  end;
  CloseFile(plik);
  UstawAtrybutPliku(NazwaPliku,$00000001); //readonly
end;


Procedure TForm_Main.Zapisz_BasicAttributes(ActualFile:String);
begin

  //Edit_ItemID.Text:=IntToStr(CzytajWartosc(ActualFile,$0,4));

  ZapiszWartosc(ActualFile,0,4,Edit_ItemID.Text);  // dodany 12-05-2008

  // dodany 03-06-2008
  ZapiszWartosc(ActualFile,$28,4,Edit_ItemSize.Text);  // Size

  ZapiszWartosc(ActualFile,44,4,EditWeight.Text);
  ZapiszWartosc(ActualFile,48,4,EditPrice.Text);

  ZapiszWartosc(ActualFile,39,1,IntToStr(ComboBox_Material_Type.ItemIndex));


  if FileExists(F2Folder+sciezka_do_plikow_art_items_lst+Item_LstFileName) then
  ZapiszWartosc(ActualFile,$8,4,IntToStr(ComboBoxGroundFrame.ItemIndex))
  else ShowMessage('WARNING! No file: '+F2Folder+sciezka_do_plikow_art_items_lst+Item_LstFileName);

  if FileExists(F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName) then
  ZapiszWartosc(ActualFile,$36,2,IntToStr(ComboBoxInventoryFrame.ItemIndex))
  else ShowMessage('WARNING! No file: '+F2Folder+sciezka_do_plikow_art_inven_lst+Inven_LstFileName);

  ZapiszWartosc(ActualFile,$34,1,IntToStr(7)); {dziwna liczba o wartosci 7 bo bez niej nie bedzie widac obrazka w inventory w czasie grania}
  ZapiszWartosc(ActualFile,$35,1,IntToStr(0)); {dziwna liczba o wartosci 0 bo bez niej nie bedzie widac obrazka w inventory w czasie grania}


  if ComboBox_Scripts.ItemIndex>0 then
  begin
    ZapiszWartosc(ActualFile,$1C,1,IntToStr(3));
    ZapiszWartosc(ActualFile,$1D,1,IntToStr(0));
    ZapiszWartosc(ActualFile,$1E,2,IntToStr(ComboBox_Scripts.ItemIndex-1));
  end
  else
  begin
    ZapiszWartosc(ActualFile,$1C,2,IntToStr($FFFF));
    ZapiszWartosc(ActualFile,$1E,2,IntToStr($FFFF));
  end;


end;


Procedure TForm_Main.Zapisz_Ammo(ActualFile:String);
begin
  ZapiszWartosc(ActualFile,65,4,EditACmod.Text);
  ZapiszWartosc(ActualFile,69,4,EditDRmod.Text);
  ZapiszWartosc(ActualFile,73,4,EditDmgmodA.Text);
  ZapiszWartosc(ActualFile,77,4,EditDmgmodB.Text);
  ZapiszWartosc(ActualFile,$39,4,IntToStr(ComboBoxCaliberType.ItemIndex));
  ZapiszWartosc(ActualFile,61,4,EditAmmoInMag.Text);
end;


Procedure TForm_Main.Zapisz_Armor(ActualFile:String);
begin
  ZapiszWartosc(ActualFile,$39,4,EditArmorClass.Text);

  ZapiszWartosc(ActualFile,$3D,4,EditDRnormal.Text);
  ZapiszWartosc(ActualFile,$59,4,EditDTnormal.Text);

  ZapiszWartosc(ActualFile,$41,4,EditDRlaser.Text);
  ZapiszWartosc(ActualFile,$5D,4,EditDTlaser.Text);

  ZapiszWartosc(ActualFile,$45,4,EditDRfire.Text);
  ZapiszWartosc(ActualFile,$61,4,EditDTfire.Text);

  ZapiszWartosc(ActualFile,$49,4,EditDRplasma.Text);
  ZapiszWartosc(ActualFile,$65,4,EditDTplasma.Text);

  ZapiszWartosc(ActualFile,$4D,4,EditDRelectrical.Text);
  ZapiszWartosc(ActualFile,$69,4,EditDTelectrical.Text);

  ZapiszWartosc(ActualFile,$51,4,EditDRemp.Text);
  ZapiszWartosc(ActualFile,$6D,4,EditDTemp.Text);

  ZapiszWartosc(ActualFile,$55,4,EditDRexplosion.Text);
  ZapiszWartosc(ActualFile,$71,4,EditDTexplosion.Text);


{Perk}
  if FO1_active=False then
  begin
    if ComboBox_Armor_Perk.ItemIndex=119 then
    begin
      ZapiszWartosc(ActualFile,$75,2,IntToStr($FFFF));
      ZapiszWartosc(ActualFile,$77,2,IntToStr($FFFF));
    end
    else
    begin
      ZapiszWartosc(ActualFile,$75,2,IntToStr(0));
      ZapiszWartosc(ActualFile,$77,2,IntToStr(ComboBox_Armor_Perk.ItemIndex));
    end;
  end
  else
  begin
    if ComboBox_Armor_Perk.ItemIndex=64 then
    begin
      ZapiszWartosc(ActualFile,$75,2,IntToStr($FFFF));
      ZapiszWartosc(ActualFile,$77,2,IntToStr($FFFF));
    end
    else
    begin
      ZapiszWartosc(ActualFile,$75,2,IntToStr(0));
      ZapiszWartosc(ActualFile,$77,2,IntToStr(ComboBox_Armor_Perk.ItemIndex));
    end;
  end;
{end Perk}

{wyglad crittera w pancerzu}
//zapisywanie do pliku wygladu postaci w pancerzu
  ZapiszWartosc(ActualFile,$79,1,'1');
  ZapiszWartosc(ActualFile,$7A,3,IntToStr(ComboBox1.ItemIndex));
  ZapiszWartosc(ActualFile,$7D,1,'1');
  ZapiszWartosc(ActualFile,$7E,3,IntToStr(ComboBox2.ItemIndex));
{koniec - wyglad crittera w pancerzu}

end;




Procedure TForm_Main.Zapisz_Drug(ActualFile:String);
begin
  if FO1_active=False then
  begin
    if ComboBox_WD_effect.ItemIndex=119 then
    begin
      ZapiszWartosc(ActualFile,$75,2,IntToStr($FFFF));
      ZapiszWartosc(ActualFile,$77,2,IntToStr($FFFF));
    end
    else
    begin
      ZapiszWartosc(ActualFile,$75,2,IntToStr(0));
      ZapiszWartosc(ActualFile,$77,2,IntToStr(ComboBox_WD_effect.ItemIndex));
    end;
  end
  else
  begin
    if ComboBox_WD_effect.ItemIndex=64 then
    begin
      ZapiszWartosc(ActualFile,$75,2,IntToStr($FFFF));
      ZapiszWartosc(ActualFile,$77,2,IntToStr($FFFF));
    end
    else
    begin
      ZapiszWartosc(ActualFile,$75,2,IntToStr(0));
      ZapiszWartosc(ActualFile,$77,2,IntToStr(ComboBox_WD_effect.ItemIndex));
    end;
  end;


  ZapiszWartosc(ActualFile,$39,4,IntToStr(ComboBox_Stat1.ItemIndex-2));
  ZapiszWartosc(ActualFile,$3D,4,IntToStr(ComboBox_Stat2.ItemIndex-1));
  ZapiszWartosc(ActualFile,$41,4,IntToStr(ComboBox_Stat3.ItemIndex-1));

  ZapiszWartosc(ActualFile,$45,4,Edit_st1_imm.Text);
  ZapiszWartosc(ActualFile,$49,4,Edit_st2_imm.Text);
  ZapiszWartosc(ActualFile,$4D,4,Edit_st3_imm.Text);

  ZapiszWartosc(ActualFile,$55,4,Edit_st1_mid.Text);
  ZapiszWartosc(ActualFile,$59,4,Edit_st2_mid.Text);
  ZapiszWartosc(ActualFile,$5D,4,Edit_st3_mid.Text);

  ZapiszWartosc(ActualFile,$65,4,Edit_st1_long.Text);
  ZapiszWartosc(ActualFile,$69,4,Edit_st2_long.Text);
  ZapiszWartosc(ActualFile,$6D,4,Edit_st3_long.Text);

  ZapiszWartosc(ActualFile,$51,4,Edit_mid_begin.Text);
  ZapiszWartosc(ActualFile,$61,4,Edit_long_begin.Text);

  ZapiszWartosc(ActualFile,$79,4,Edit_addict_begin.Text);
  ZapiszWartosc(ActualFile,$71,4,Edit_addict_rate.Text);
end;


Procedure TForm_Main.Zapisz_Container(ActualFile:String);
var FLAG_hex_string_tym:String[8];
    Cont_FLAG_hex_string_tym:String[8];
    Cont_FLAG_dec:Integer;          // container flags
    Cont_FLAG_hex_string:String[8];
begin
  ZapiszWartosc(ActualFile,$39,4,Edit_max_size.Text);

  if CheckBoxUse_Cont.Checked=False then FLAG_hex_string_tym[6]:='0';
  if CheckBoxUse_Cont.Checked=True then FLAG_hex_string_tym[6]:='8';

  if (CheckBoxUseOn_Cont.Checked=False) and (CheckBoxLook_Cont.Checked=False) and (CheckBoxTalk_Cont.Checked=False) and (CheckBoxPickup_Cont.Checked=False) then FLAG_hex_string_tym[5]:='0';
  if (CheckBoxUseOn_Cont.Checked=True) and (CheckBoxLook_Cont.Checked=False) and (CheckBoxTalk_Cont.Checked=False) and (CheckBoxPickup_Cont.Checked=False) then FLAG_hex_string_tym[5]:='1';
  if (CheckBoxUseOn_Cont.Checked=False) and (CheckBoxLook_Cont.Checked=True) and (CheckBoxTalk_Cont.Checked=False) and (CheckBoxPickup_Cont.Checked=False) then FLAG_hex_string_tym[5]:='2';
  if (CheckBoxUseOn_Cont.Checked=True) and (CheckBoxLook_Cont.Checked=True) and (CheckBoxTalk_Cont.Checked=False) and (CheckBoxPickup_Cont.Checked=False) then FLAG_hex_string_tym[5]:='3';
  if (CheckBoxUseOn_Cont.Checked=False) and (CheckBoxLook_Cont.Checked=False) and (CheckBoxTalk_Cont.Checked=True) and (CheckBoxPickup_Cont.Checked=False) then FLAG_hex_string_tym[5]:='4';
  if (CheckBoxUseOn_Cont.Checked=True) and (CheckBoxLook_Cont.Checked=False) and (CheckBoxTalk_Cont.Checked=True) and (CheckBoxPickup_Cont.Checked=False) then FLAG_hex_string_tym[5]:='5';
  if (CheckBoxUseOn_Cont.Checked=False) and (CheckBoxLook_Cont.Checked=True) and (CheckBoxTalk_Cont.Checked=True) and (CheckBoxPickup_Cont.Checked=False) then FLAG_hex_string_tym[5]:='6';
  if (CheckBoxUseOn_Cont.Checked=True) and (CheckBoxLook_Cont.Checked=True) and (CheckBoxTalk_Cont.Checked=True) and (CheckBoxPickup_Cont.Checked=False) then FLAG_hex_string_tym[5]:='7';
  if (CheckBoxUseOn_Cont.Checked=False) and (CheckBoxLook_Cont.Checked=False) and (CheckBoxTalk_Cont.Checked=False) and (CheckBoxPickup_Cont.Checked=True) then FLAG_hex_string_tym[5]:='8';
  if (CheckBoxUseOn_Cont.Checked=True) and (CheckBoxLook_Cont.Checked=False) and (CheckBoxTalk_Cont.Checked=False) and (CheckBoxPickup_Cont.Checked=True) then FLAG_hex_string_tym[5]:='9';
  if (CheckBoxUseOn_Cont.Checked=False) and (CheckBoxLook_Cont.Checked=True) and (CheckBoxTalk_Cont.Checked=False) and (CheckBoxPickup_Cont.Checked=True) then FLAG_hex_string_tym[5]:='A';
  if (CheckBoxUseOn_Cont.Checked=True) and (CheckBoxLook_Cont.Checked=True) and (CheckBoxTalk_Cont.Checked=False) and (CheckBoxPickup_Cont.Checked=True) then FLAG_hex_string_tym[5]:='B';
  if (CheckBoxUseOn_Cont.Checked=False) and (CheckBoxLook_Cont.Checked=False) and (CheckBoxTalk_Cont.Checked=True) and (CheckBoxPickup_Cont.Checked=True) then FLAG_hex_string_tym[5]:='C';
  if (CheckBoxUseOn_Cont.Checked=True) and (CheckBoxLook_Cont.Checked=False) and (CheckBoxTalk_Cont.Checked=True) and (CheckBoxPickup_Cont.Checked=True) then FLAG_hex_string_tym[5]:='D';
  if (CheckBoxUseOn_Cont.Checked=False) and (CheckBoxLook_Cont.Checked=True) and (CheckBoxTalk_Cont.Checked=True) and (CheckBoxPickup_Cont.Checked=True) then FLAG_hex_string_tym[5]:='E';
  if (CheckBoxUseOn_Cont.Checked=True) and (CheckBoxLook_Cont.Checked=True) and (CheckBoxTalk_Cont.Checked=True) and (CheckBoxPickup_Cont.Checked=True) then FLAG_hex_string_tym[5]:='F';

  Flag_hex_string_tym:=Flag_hex_string[1]+Flag_hex_string[2]+Flag_hex_string[3]+Flag_hex_string[4]+Flag_hex_string_tym[5]+Flag_hex_string_tym[6]+Flag_hex_string[7]+Flag_hex_string[8];
  FLAG_dec:=StrToIntDef('$'+Flag_hex_string_tym,default);
  ZapiszWartosc(ActualFile,$18,4,IntToStr(FLAG_dec));

  Cont_FLAG_hex_string_tym:='00000000';
  if (CheckBoxCantPickup_Cont.Checked=False) and (CheckBoxMagicHands_Cont.Checked=False) then Cont_FLAG_hex_string_tym[8]:='0';
  if (CheckBoxCantPickup_Cont.Checked=True) and (CheckBoxMagicHands_Cont.Checked=False) then Cont_FLAG_hex_string_tym[8]:='1';
  if (CheckBoxCantPickup_Cont.Checked=False) and (CheckBoxMagicHands_Cont.Checked=True) then Cont_FLAG_hex_string_tym[8]:='8';
  if (CheckBoxCantPickup_Cont.Checked=True) and (CheckBoxMagicHands_Cont.Checked=True) then Cont_FLAG_hex_string_tym[8]:='9';

  //Cont_Flag_hex_string_tym:=Cont_Flag_hex_string[1]+Cont_Flag_hex_string[2]+Cont_Flag_hex_string[3]+Cont_Flag_hex_string[4]+Cont_Flag_hex_string[5]+Cont_Flag_hex_string[6]+Cont_Flag_hex_string[7]+Cont_Flag_hex_string_tym[8];
  Cont_FLAG_dec:=StrToIntDef('$'+Cont_Flag_hex_string_tym, default);

  ZapiszWartosc(ActualFile,$3D, 4, IntToStr(Cont_FLAG_dec));

//  ShowMessage('Zapisuje: ' + Cont_Flag_hex_string_tym);
end;



Procedure TForm_Main.Zapisz_Misc(ActualFile:String);
var FLAG_hex_string_tym:String[8];
begin
  if CheckBoxUse_Misc.Checked=False then FLAG_hex_string_tym[6]:='0';
  if CheckBoxUse_Misc.Checked=True then FLAG_hex_string_tym[6]:='8';

  if (CheckBoxUseOn_Misc.Checked=False) and (CheckBoxLook_Misc.Checked=False) and (CheckBoxTalk_Misc.Checked=False) and (CheckBoxPickup_Misc.Checked=False) then FLAG_hex_string_tym[5]:='0';
  if (CheckBoxUseOn_Misc.Checked=True) and (CheckBoxLook_Misc.Checked=False) and (CheckBoxTalk_Misc.Checked=False) and (CheckBoxPickup_Misc.Checked=False) then FLAG_hex_string_tym[5]:='1';
  if (CheckBoxUseOn_Misc.Checked=False) and (CheckBoxLook_Misc.Checked=True) and (CheckBoxTalk_Misc.Checked=False) and (CheckBoxPickup_Misc.Checked=False) then FLAG_hex_string_tym[5]:='2';
  if (CheckBoxUseOn_Misc.Checked=True) and (CheckBoxLook_Misc.Checked=True) and (CheckBoxTalk_Misc.Checked=False) and (CheckBoxPickup_Misc.Checked=False) then FLAG_hex_string_tym[5]:='3';
  if (CheckBoxUseOn_Misc.Checked=False) and (CheckBoxLook_Misc.Checked=False) and (CheckBoxTalk_Misc.Checked=True) and (CheckBoxPickup_Misc.Checked=False) then FLAG_hex_string_tym[5]:='4';
  if (CheckBoxUseOn_Misc.Checked=True) and (CheckBoxLook_Misc.Checked=False) and (CheckBoxTalk_Misc.Checked=True) and (CheckBoxPickup_Misc.Checked=False) then FLAG_hex_string_tym[5]:='5';
  if (CheckBoxUseOn_Misc.Checked=False) and (CheckBoxLook_Misc.Checked=True) and (CheckBoxTalk_Misc.Checked=True) and (CheckBoxPickup_Misc.Checked=False) then FLAG_hex_string_tym[5]:='6';
  if (CheckBoxUseOn_Misc.Checked=True) and (CheckBoxLook_Misc.Checked=True) and (CheckBoxTalk_Misc.Checked=True) and (CheckBoxPickup_Misc.Checked=False) then FLAG_hex_string_tym[5]:='7';
  if (CheckBoxUseOn_Misc.Checked=False) and (CheckBoxLook_Misc.Checked=False) and (CheckBoxTalk_Misc.Checked=False) and (CheckBoxPickup_Misc.Checked=True) then FLAG_hex_string_tym[5]:='8';
  if (CheckBoxUseOn_Misc.Checked=True) and (CheckBoxLook_Misc.Checked=False) and (CheckBoxTalk_Misc.Checked=False) and (CheckBoxPickup_Misc.Checked=True) then FLAG_hex_string_tym[5]:='9';
  if (CheckBoxUseOn_Misc.Checked=False) and (CheckBoxLook_Misc.Checked=True) and (CheckBoxTalk_Misc.Checked=False) and (CheckBoxPickup_Misc.Checked=True) then FLAG_hex_string_tym[5]:='A';
  if (CheckBoxUseOn_Misc.Checked=True) and (CheckBoxLook_Misc.Checked=True) and (CheckBoxTalk_Misc.Checked=False) and (CheckBoxPickup_Misc.Checked=True) then FLAG_hex_string_tym[5]:='B';
  if (CheckBoxUseOn_Misc.Checked=False) and (CheckBoxLook_Misc.Checked=False) and (CheckBoxTalk_Misc.Checked=True) and (CheckBoxPickup_Misc.Checked=True) then FLAG_hex_string_tym[5]:='C';
  if (CheckBoxUseOn_Misc.Checked=True) and (CheckBoxLook_Misc.Checked=False) and (CheckBoxTalk_Misc.Checked=True) and (CheckBoxPickup_Misc.Checked=True) then FLAG_hex_string_tym[5]:='D';
  if (CheckBoxUseOn_Misc.Checked=False) and (CheckBoxLook_Misc.Checked=True) and (CheckBoxTalk_Misc.Checked=True) and (CheckBoxPickup_Misc.Checked=True) then FLAG_hex_string_tym[5]:='E';
  if (CheckBoxUseOn_Misc.Checked=True) and (CheckBoxLook_Misc.Checked=True) and (CheckBoxTalk_Misc.Checked=True) and (CheckBoxPickup_Misc.Checked=True) then FLAG_hex_string_tym[5]:='F';

  Flag_hex_string_tym:=Flag_hex_string[1]+Flag_hex_string[2]+Flag_hex_string[3]+Flag_hex_string[4]+Flag_hex_string_tym[5]+Flag_hex_string_tym[6]+Flag_hex_string[7]+Flag_hex_string[8];
  FLAG_dec:=StrToIntDef('$'+Flag_hex_string_tym,default);
  ZapiszWartosc(ActualFile,$18,4,IntToStr(FLAG_dec));

  ZapiszWartosc(ActualFile,$41,4,EditCharges_Misc.Text);
  ZapiszWartosc(ActualFile,$39,4,EditPowerPID_Misc.Text);
  ZapiszWartosc(ActualFile,$3D,4,EditPowerType_Misc.Text);

end;


Procedure TForm_Main.Zapisz_Key(ActualFile:String);
var FLAG_hex_string_tym:String[8];
begin
  if CheckBoxUse_Key.Checked=False then FLAG_hex_string_tym[6]:='0';
  if CheckBoxUse_Key.Checked=True then FLAG_hex_string_tym[6]:='8';

  if (CheckBoxUseOn_Key.Checked=False) and (CheckBoxLook_Key.Checked=False) and (CheckBoxTalk_Key.Checked=False) and (CheckBoxPickup_Key.Checked=False) then FLAG_hex_string_tym[5]:='0';
  if (CheckBoxUseOn_Key.Checked=True) and (CheckBoxLook_Key.Checked=False) and (CheckBoxTalk_Key.Checked=False) and (CheckBoxPickup_Key.Checked=False) then FLAG_hex_string_tym[5]:='1';
  if (CheckBoxUseOn_Key.Checked=False) and (CheckBoxLook_Key.Checked=True) and (CheckBoxTalk_Key.Checked=False) and (CheckBoxPickup_Key.Checked=False) then FLAG_hex_string_tym[5]:='2';
  if (CheckBoxUseOn_Key.Checked=True) and (CheckBoxLook_Key.Checked=True) and (CheckBoxTalk_Key.Checked=False) and (CheckBoxPickup_Key.Checked=False) then FLAG_hex_string_tym[5]:='3';
  if (CheckBoxUseOn_Key.Checked=False) and (CheckBoxLook_Key.Checked=False) and (CheckBoxTalk_Key.Checked=True) and (CheckBoxPickup_Key.Checked=False) then FLAG_hex_string_tym[5]:='4';
  if (CheckBoxUseOn_Key.Checked=True) and (CheckBoxLook_Key.Checked=False) and (CheckBoxTalk_Key.Checked=True) and (CheckBoxPickup_Key.Checked=False) then FLAG_hex_string_tym[5]:='5';
  if (CheckBoxUseOn_Key.Checked=False) and (CheckBoxLook_Key.Checked=True) and (CheckBoxTalk_Key.Checked=True) and (CheckBoxPickup_Key.Checked=False) then FLAG_hex_string_tym[5]:='6';
  if (CheckBoxUseOn_Key.Checked=True) and (CheckBoxLook_Key.Checked=True) and (CheckBoxTalk_Key.Checked=True) and (CheckBoxPickup_Key.Checked=False) then FLAG_hex_string_tym[5]:='7';
  if (CheckBoxUseOn_Key.Checked=False) and (CheckBoxLook_Key.Checked=False) and (CheckBoxTalk_Key.Checked=False) and (CheckBoxPickup_Key.Checked=True) then FLAG_hex_string_tym[5]:='8';
  if (CheckBoxUseOn_Key.Checked=True) and (CheckBoxLook_Key.Checked=False) and (CheckBoxTalk_Key.Checked=False) and (CheckBoxPickup_Key.Checked=True) then FLAG_hex_string_tym[5]:='9';
  if (CheckBoxUseOn_Key.Checked=False) and (CheckBoxLook_Key.Checked=True) and (CheckBoxTalk_Key.Checked=False) and (CheckBoxPickup_Key.Checked=True) then FLAG_hex_string_tym[5]:='A';
  if (CheckBoxUseOn_Key.Checked=True) and (CheckBoxLook_Key.Checked=True) and (CheckBoxTalk_Key.Checked=False) and (CheckBoxPickup_Key.Checked=True) then FLAG_hex_string_tym[5]:='B';
  if (CheckBoxUseOn_Key.Checked=False) and (CheckBoxLook_Key.Checked=False) and (CheckBoxTalk_Key.Checked=True) and (CheckBoxPickup_Key.Checked=True) then FLAG_hex_string_tym[5]:='C';
  if (CheckBoxUseOn_Key.Checked=True) and (CheckBoxLook_Key.Checked=False) and (CheckBoxTalk_Key.Checked=True) and (CheckBoxPickup_Key.Checked=True) then FLAG_hex_string_tym[5]:='D';
  if (CheckBoxUseOn_Key.Checked=False) and (CheckBoxLook_Key.Checked=True) and (CheckBoxTalk_Key.Checked=True) and (CheckBoxPickup_Key.Checked=True) then FLAG_hex_string_tym[5]:='E';
  if (CheckBoxUseOn_Key.Checked=True) and (CheckBoxLook_Key.Checked=True) and (CheckBoxTalk_Key.Checked=True) and (CheckBoxPickup_Key.Checked=True) then FLAG_hex_string_tym[5]:='F';

  Flag_hex_string_tym:=Flag_hex_string[1]+Flag_hex_string[2]+Flag_hex_string[3]+Flag_hex_string[4]+Flag_hex_string_tym[5]+Flag_hex_string_tym[6]+Flag_hex_string[7]+Flag_hex_string[8];
  FLAG_dec:=StrToIntDef('$'+Flag_hex_string_tym,default);
  ZapiszWartosc(ActualFile,$18,4,IntToStr(FLAG_dec));
end;


Function TForm_Main.CzytajWartosc(NazwaPliku:String;pozycja:Integer;Ile_bajtow:Byte):Integer;
var plik:File of Byte;
    w1,w2,w3,w4:Byte;
begin
  UstawAtrybutPliku(NazwaPliku,$00000020); //archive
  AssignFile(plik,NazwaPliku);
  Reset(plik);
  Seek(plik,pozycja);
  Case Ile_bajtow of
  1:begin Read(plik,w1); CzytajWartosc:=w1; end;
  2:begin Read(plik,w1,w2); CzytajWartosc:=w2+w1*256; end;
  3:begin Read(plik,w1,w2,w3); CzytajWartosc:=w3+w2*256+w1*65536; end;
  4:begin Read(plik,w1,w2,w3,w4); CzytajWartosc:=w4+w3*256+w2*65536+w1*16777216; end;
  end;
  CloseFile(plik);
//  UstawAtrybutPliku(NazwaPliku,$00000001); //readonly
  if ReadOnlyAttr='1' then UstawAtrybutPliku(NazwaPliku,$00000001); {ustawia atrybut readonly dla pliku pro}
  if ReadOnlyAttr='0' then UstawAtrybutPliku(NazwaPliku,$00000020);{ustawia atrybut archive dla pliku pro}
end;


Procedure TForm_Main.Czytaj_BasicAttributes(ActualFile:String);
var zmienna:Integer;

begin
  Edit_ItemID.Visible:=True;
  Edit_ItemSize.Visible:=True;

  EditWeight.Visible:=True;
  EditPrice.Visible:=True;
  StaticTextWeight.Visible:=True;
  StaticTextPrice.Visible:=True;
//  BitBtnSave.Visible:=True;

  Edit_item_name.Enabled:=True;
  Editor.Enabled:=True;


  Edit_ItemSize.Text:=IntToStr(CzytajWartosc(ActualFile,$28,4)); // added 03-06-2008
  
  EditWeight.Text:=IntToStr(CzytajWartosc(ActualFile,44,4));
  EditPrice.Text:=IntToStr(CzytajWartosc(ActualFile,48,4));
  ComboBox_Material_Type.ItemIndex:=CzytajWartosc(ActualFile,$24,4);

  item_id:=CzytajWartosc(ActualFile,$0,1);
  item_id_Long:=CzytajWartosc(ActualFile,4,4);

  pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
  try
    Edit_item_name.Text:= pro_item_msg_INI.ReadString('Descriptions',IntToStr(Item_Id_Long),'');
    Editor.Lines.Text:= pro_item_msg_INI.ReadString('Descriptions',IntToStr(Item_Id_Long+1),'');
  finally
    pro_item_msg_INI.Free;
  end;

  Edit_ItemID.Text:=IntToStr(CzytajWartosc(ActualFile,$0,4));

  zmienna:=CzytajWartosc(ActualFile,$36,2);
  if zmienna=$FFFF then ComboBoxInventoryFrame.ItemIndex:=0
    else ComboBoxInventoryFrame.ItemIndex:=zmienna;//CzytajWartosc(ActualFile,$36,2);
  Show_Frm(NazwaPlikuObrazka_FRM,1);

  ComboBoxGroundFrame.ItemIndex:=CzytajWartosc(ActualFile,$8,4);
  Show_Frm(NazwaPlikuObrazka_FRM,2);
  

  zmienna:=CzytajWartosc(ActualFile,$1E,2);
  if zmienna=$FFFF then ComboBox_Scripts.ItemIndex:=0
    else ComboBox_Scripts.ItemIndex:=CzytajWartosc(ActualFile,$1E,2)+1;


  item_type:=CzytajWartosc(ActualFile,$23,1);
  PageControl1.TabIndex:=item_type;

    if item_type=0 then
    begin
      TabSheetArmor.TabVisible:=True;
      TabSheetContainer.TabVisible:=False;
      TabSheetDrug.TabVisible:=False;
      TabSheetWeapon.TabVisible:=False;
      TabSheetAmmo.TabVisible:=False;
      TabSheetMisc.TabVisible:=False;
      TabSheetKey.TabVisible:=False;
    end;

    if item_type=1 then
    begin
      TabSheetArmor.TabVisible:=False;
      TabSheetContainer.TabVisible:=True;
      TabSheetDrug.TabVisible:=False;
      TabSheetWeapon.TabVisible:=False;
      TabSheetAmmo.TabVisible:=False;
      TabSheetMisc.TabVisible:=False;
      TabSheetKey.TabVisible:=False;
    end;

    if item_type=2 then
    begin
      TabSheetArmor.TabVisible:=False;
      TabSheetContainer.TabVisible:=False;
      TabSheetDrug.TabVisible:=True;
      TabSheetWeapon.TabVisible:=False;
      TabSheetAmmo.TabVisible:=False;
      TabSheetMisc.TabVisible:=False;
      TabSheetKey.TabVisible:=False;
    end;

    if item_type=3 then
    begin
      TabSheetArmor.TabVisible:=False;
      TabSheetContainer.TabVisible:=False;
      TabSheetDrug.TabVisible:=False;
      TabSheetWeapon.TabVisible:=True;
      TabSheetAmmo.TabVisible:=False;
      TabSheetMisc.TabVisible:=False;
      TabSheetKey.TabVisible:=False;
    end;

    if item_type=4 then
    begin
      TabSheetArmor.TabVisible:=False;
      TabSheetContainer.TabVisible:=False;
      TabSheetDrug.TabVisible:=False;
      TabSheetWeapon.TabVisible:=False;
      TabSheetAmmo.TabVisible:=True;
      TabSheetMisc.TabVisible:=False;
      TabSheetKey.TabVisible:=False;
    end;

    if item_type=5 then
    begin
      TabSheetArmor.TabVisible:=False;
      TabSheetContainer.TabVisible:=False;
      TabSheetDrug.TabVisible:=False;
      TabSheetWeapon.TabVisible:=False;
      TabSheetAmmo.TabVisible:=False;
      TabSheetMisc.TabVisible:=True;
      TabSheetKey.TabVisible:=False;
    end;

    if item_type=6 then
    begin
      TabSheetArmor.TabVisible:=False;
      TabSheetContainer.TabVisible:=False;
      TabSheetDrug.TabVisible:=False;
      TabSheetWeapon.TabVisible:=False;
      TabSheetAmmo.TabVisible:=False;
      TabSheetMisc.TabVisible:=False;
      TabSheetKey.TabVisible:=True;
    end;
end;


procedure TForm_Main.BitBtnSaveClick(Sender: TObject);
begin
  Cursor:=crHourGlass;
  Zapisz(ActualFile);
  if item_type=4 then Lista_ammo; // item_type=4 --> ammo
  Cursor:=crDefault;
  BitBtnSave.Enabled:=False;
  BitBtnSave.Visible:=False;

  BitBtnCancel.Enabled:=False;
  BitBtnCancel.Visible:=False;


  Save1.Enabled:=False;

  ListViewFiles.Enabled:=True;

  New1.Enabled:=True;
  Ustawienia1.Enabled:=True;
  Ustawienia2.Enabled:=True;
  Help1.Enabled:=True;

  Image1.Update;
  Image2.Update;

  ListViewFiles.SetFocus;
end;


Procedure TForm_Main.Czytaj_Ammo(ActualFile:String);
begin
  ComboBoxCaliberType.ItemIndex:=CzytajWartosc(ActualFile,$39,4);  // $39   57d
  EditAmmoInMag.Text:=IntToStr(CzytajWartosc(ActualFile,$3D,4));   // $3D   61d
  EditACmod.Text:=IntToStr(CzytajWartosc(ActualFile,$41,4));       // $41   65d
  EditDRmod.Text:=IntToStr(CzytajWartosc(ActualFile,$45,4));       // $45   69d
  EditDmgmodA.Text:=IntToStr(CzytajWartosc(ActualFile,$49,4));     // $49   73d
  EditDmgmodB.Text:=IntToStr(CzytajWartosc(ActualFile,$4D,4));     // $4D   77d
{
    ZapiszWartosc(nazwa_pliku,20,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,23,1,intToStr(8));
    ZapiszWartosc(nazwa_pliku,26,1,intToStr(160));
    ZapiszWartosc(nazwa_pliku,28,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,29,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,30,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,31,1,intToStr(255));
    ZapiszWartosc(nazwa_pliku,35,1,intToStr(4)); {ammo=4}
{    ZapiszWartosc(nazwa_pliku,39,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,43,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,47,1,intToStr(1));{waga - mapper nadaje tu wartosc 10}
{    ZapiszWartosc(nazwa_pliku,52,1,intToStr(7));
    ZapiszWartosc(nazwa_pliku,56,1,intToStr(48));
    ZapiszWartosc(nazwa_pliku,64,1,intToStr(20));{ilosc amunicji w magazynku - domyslnie 20}
{    ZapiszWartosc(nazwa_pliku,76,1,intToStr(1));
    ZapiszWartosc(nazwa_pliku,80,1,intToStr(1));
    }
end;


Procedure TForm_Main.Czytaj_Armor(ActualFile:String);
begin
  EditArmorClass.Text:=IntToStr(CzytajWartosc(ActualFile,$39,4));
  EditDRnormal.Text:=IntToStr(CzytajWartosc(ActualFile,$3D,4));
  EditDRlaser.Text:=IntToStr(CzytajWartosc(ActualFile,$41,4));
  EditDRfire.Text:=IntToStr(CzytajWartosc(ActualFile,$45,4));
  EditDRplasma.Text:=IntToStr(CzytajWartosc(ActualFile,$49,4));
  EditDRelectrical.Text:=IntToStr(CzytajWartosc(ActualFile,$4D,4));
  EditDRemp.Text:=IntToStr(CzytajWartosc(ActualFile,$51,4));
  EditDRexplosion.Text:=IntToStr(CzytajWartosc(ActualFile,$55,4));

  EditDTnormal.Text:=IntToStr(CzytajWartosc(ActualFile,$59,4));
  EditDTlaser.Text:=IntToStr(CzytajWartosc(ActualFile,$5D,4));
  EditDTfire.Text:=IntToStr(CzytajWartosc(ActualFile,$61,4));
  EditDTplasma.Text:=IntToStr(CzytajWartosc(ActualFile,$65,4));
  EditDTelectrical.Text:=IntToStr(CzytajWartosc(ActualFile,$69,4));
  EditDTemp.Text:=IntToStr(CzytajWartosc(ActualFile,$6D,4));
  EditDTexplosion.Text:=IntToStr(CzytajWartosc(ActualFile,$71,4));

{Perk}
  if FO1_active=False then
  begin
    if (CzytajWartosc(ActualFile,$75,2)=$FFFF) and (CzytajWartosc(ActualFile,$77,2)=$FFFF) then ComboBox_Armor_Perk.ItemIndex:=119
    else ComboBox_Armor_Perk.ItemIndex:=CzytajWartosc(ActualFile,$77,2);
  end;
  if FO1_active=True then
  begin
    if (CzytajWartosc(ActualFile,$75,2)=$FFFF) and (CzytajWartosc(ActualFile,$77,2)=$FFFF) then ComboBox_Armor_Perk.ItemIndex:=64
    else ComboBox_Armor_Perk.ItemIndex:=CzytajWartosc(ActualFile,$77,2);
  end;
{end Perk}

//odczytywanie z pliku wygladu postaci w pancerzu
  ComboBox1.ItemIndex:=CzytajWartosc(ActualFile,$7C,1);
  ComboBox2.ItemIndex:=CzytajWartosc(ActualFile,$80,1);

  Show_Frm(NazwaPlikuObrazka_FRM,3);
  Show_Frm(NazwaPlikuObrazka_FRM,4);
end;


Procedure TForm_Main.Czytaj_Weapon(ActualFile:String);
var zmienna1:Integer;
    iter:Byte;
    ammo_id:Integer;

begin

  FLAG_dec:=CzytajWartosc(ActualFile,$18,4);
  FLAG_hex_string:=IntToHex(FLAG_dec,8);

  comboboxATmode2.ItemIndex:=StrToInt(FLAG_hex_string[7]);
  comboboxATmode1.ItemIndex:=StrToInt(FLAG_hex_string[8]);


  case FLAG_hex_string[6] of
  '0': begin
         CheckBox_1Hand.Checked:=True;
         CheckBox_2Hand.Checked:=False;
         CheckBox_BigGun.Checked:=False;
         CheckBox_Use.Checked:=False;
       end;
  '1': begin
         CheckBox_1Hand.Checked:=True;
         CheckBox_2Hand.Checked:=False;
         CheckBox_BigGun.Checked:=True;
         CheckBox_Use.Checked:=False;
       end;
  '2': begin
         CheckBox_1Hand.Checked:=False;
         CheckBox_2Hand.Checked:=True;
         CheckBox_BigGun.Checked:=False;
         CheckBox_Use.Checked:=False;
       end;
  '3': begin
         CheckBox_1Hand.Checked:=False;
         CheckBox_2Hand.Checked:=True;
         CheckBox_BigGun.Checked:=True;
         CheckBox_Use.Checked:=False;
       end;
  '8': begin
         CheckBox_1Hand.Checked:=True;
         CheckBox_2Hand.Checked:=False;
         CheckBox_BigGun.Checked:=False;
         CheckBox_Use.Checked:=True;
       end;
  '9': begin
         CheckBox_1Hand.Checked:=True;
         CheckBox_2Hand.Checked:=False;
         CheckBox_BigGun.Checked:=True;
         CheckBox_Use.Checked:=True;
       end;
  'A': begin
         CheckBox_1Hand.Checked:=False;
         CheckBox_2Hand.Checked:=True;
         CheckBox_BigGun.Checked:=False;
         CheckBox_Use.Checked:=True;
       end;
  'B': begin
         CheckBox_1Hand.Checked:=False;
         CheckBox_2Hand.Checked:=True;
         CheckBox_BigGun.Checked:=True;
         CheckBox_Use.Checked:=True;
       end;
  end;


  ComboBoxHoldFrame.ItemIndex:=CzytajWartosc(ActualFile,$39,4);

  EditMinDmg.Text:=IntToStr(CzytajWartosc(ActualFile,$3D,4));
  EditMaxDmg.Text:=IntToStr(CzytajWartosc(ActualFile,$41,4));
  ComboBoxDmgType.ItemIndex:=CzytajWartosc(ActualFile,$45,4);
  EditRangeMode1.Text:=IntToStr(CzytajWartosc(ActualFile,$49,4));
  EditRangeMode2.Text:=IntToStr(CzytajWartosc(ActualFile,$4D,4));

  if (CzytajWartosc(ActualFile,$51,2)=$FFFF) and (CzytajWartosc(ActualFile,$53,2)=$FFFF) then ComboBoxFiringFrame.ItemIndex:=0
  else ComboBoxFiringFrame.ItemIndex:=CzytajWartosc(ActualFile,$53,2);



  EditMinStrenght.Text:=IntToStr(CzytajWartosc(ActualFile,$55,4));

  EditAPmode1.Text:=IntToStr(CzytajWartosc(ActualFile,$59,4));
  EditAPmode2.Text:=IntToStr(CzytajWartosc(ActualFile,$5D,4));

//  EditCriticalFail.Text:=IntToStr(CzytajWartosc(ActualFile,$61,4));

  ComboBox_CriticalFail.ItemIndex:=CzytajWartosc(ActualFile,$61,4);

{Perk}
  if FO1_active=False then
  begin
    if (CzytajWartosc(ActualFile,$65,2)=$FFFF) and (CzytajWartosc(ActualFile,$67,2)=$FFFF) then ComboBox_Perk.ItemIndex:=119
    else ComboBox_Perk.ItemIndex:=CzytajWartosc(ActualFile,$67,2);
  end;
  if FO1_active=True then
  begin
    if (CzytajWartosc(ActualFile,$65,2)=$FFFF) and (CzytajWartosc(ActualFile,$67,2)=$FFFF) then ComboBox_Perk.ItemIndex:=64
    else ComboBox_Perk.ItemIndex:=CzytajWartosc(ActualFile,$67,2);
  end;
{end Perk}

  EditBurstRound.Text:=IntToStr(CzytajWartosc(ActualFile,$69,4));
  ComboBoxAmmoType.ItemIndex:=CzytajWartosc(ActualFile,$6D,4);

  Zmienna1:=CzytajWartosc(ActualFile,$71,4);

  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    ile_ammo:=program_INI.ReadInteger('Main','ile_ammo',25);
//    ile_ammo:=StrToInt(Readini(f2wedit_ini,'Main','ile_ammo'));
  finally
    program_INI.Free;
  end;



  for iter:=0 to ile_ammo do
  begin
    program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
    try
      ammo_id:=program_INI.ReadInteger('Ammo'+IntToStr(iter),'ammo_id',0);
    finally
      program_INI.Free;
    end;

    if ammo_id=zmienna1 then
    begin
      ComboBoxDefaultAmmo.ItemIndex:=iter;
      break;
    end;
  end;

  EditAmmoCapacity.Text:=IntToStr(CzytajWartosc(ActualFile,$75,4));

  ComboBox_FireSoundID.ItemIndex:=CzytajWartosc(ActualFile,$79,1)-32;
  if CzytajWartosc(ActualFile,$79,1)=0 then ComboBox_FireSoundID.ItemIndex:=0;
end;


Procedure TForm_Main.Czytaj_Drug(ActualFile:String);
begin
  if FO1_active=False then
  begin
    if (CzytajWartosc(ActualFile,$75,2)=$FFFF) and (CzytajWartosc(ActualFile,$77,2)=$FFFF) then ComboBox_WD_effect.ItemIndex:=119
    else ComboBox_WD_effect.ItemIndex:=CzytajWartosc(ActualFile,$77,2);
  end;
  if FO1_active=True then
  begin
    if (CzytajWartosc(ActualFile,$75,2)=$FFFF) and (CzytajWartosc(ActualFile,$77,2)=$FFFF) then ComboBox_WD_effect.ItemIndex:=64
    else ComboBox_WD_effect.ItemIndex:=CzytajWartosc(ActualFile,$77,2);
  end;

  if CzytajWartosc(ActualFile,$39,4)>=38 then ComboBox_Stat1.ItemIndex:=0
  else ComboBox_Stat1.ItemIndex:=CzytajWartosc(ActualFile,$39,4)+2;

  if CzytajWartosc(ActualFile,$3D,4)>=38 then ComboBox_Stat2.ItemIndex:=0
  else ComboBox_Stat2.ItemIndex:=CzytajWartosc(ActualFile,$3D,4)+1;

  if CzytajWartosc(ActualFile,$41,4)>=38 then ComboBox_Stat3.ItemIndex:=0
  else ComboBox_Stat3.ItemIndex:=CzytajWartosc(ActualFile,$41,4)+1;

  Edit_st1_imm.Text:=IntToStr(CzytajWartosc(ActualFile,$45,4));
  Edit_st2_imm.Text:=IntToStr(CzytajWartosc(ActualFile,$49,4));
  Edit_st3_imm.Text:=IntToStr(CzytajWartosc(ActualFile,$4D,4));

  Edit_st1_mid.Text:=IntToStr(CzytajWartosc(ActualFile,$55,4));
  Edit_st2_mid.Text:=IntToStr(CzytajWartosc(ActualFile,$59,4));
  Edit_st3_mid.Text:=IntToStr(CzytajWartosc(ActualFile,$5D,4));

  Edit_st1_long.Text:=IntToStr(CzytajWartosc(ActualFile,$65,4));
  Edit_st2_long.Text:=IntToStr(CzytajWartosc(ActualFile,$69,4));
  Edit_st3_long.Text:=IntToStr(CzytajWartosc(ActualFile,$6D,4));

  Edit_mid_begin.Text:=IntToStr(CzytajWartosc(ActualFile,$51,4));
  Edit_long_begin.Text:=IntToStr(CzytajWartosc(ActualFile,$61,4));

  Edit_addict_begin.Text:=IntToStr(CzytajWartosc(ActualFile,$79,4));
  Edit_addict_rate.Text:=IntToStr(CzytajWartosc(ActualFile,$74,1));
end;


Procedure TForm_Main.Czytaj_Container(ActualFile:String);
var
   Cont_FLAG_dec:Integer;          // container flags
   Cont_FLAG_hex_string:String[8];
begin
  Edit_max_size.Text:=IntToStr(CzytajWartosc(ActualFile,$39,4));

  FLAG_dec:=CzytajWartosc(ActualFile,$18,4);
  FLAG_hex_string:=IntToHex(FLAG_dec,8);

  case FLAG_hex_string[5] of
  '0': begin
         CheckBoxUseOn_Cont.Checked:=False;
         CheckBoxLook_Cont.Checked:=False;
         CheckBoxTalk_Cont.Checked:=False;
         CheckBoxPickup_Cont.Checked:=False;
       end;
  '1': begin
         CheckBoxUseOn_Cont.Checked:=True;
         CheckBoxLook_Cont.Checked:=False;
         CheckBoxTalk_Cont.Checked:=False;
         CheckBoxPickup_Cont.Checked:=False;
       end;
  '2': begin
         CheckBoxUseOn_Cont.Checked:=False;
         CheckBoxLook_Cont.Checked:=True;
         CheckBoxTalk_Cont.Checked:=False;
         CheckBoxPickup_Cont.Checked:=False;
       end;
  '3': begin
         CheckBoxUseOn_Cont.Checked:=True;
         CheckBoxLook_Cont.Checked:=True;
         CheckBoxTalk_Cont.Checked:=False;
         CheckBoxPickup_Cont.Checked:=False;
       end;
  '4': begin
         CheckBoxUseOn_Cont.Checked:=False;
         CheckBoxLook_Cont.Checked:=False;
         CheckBoxTalk_Cont.Checked:=True;
         CheckBoxPickup_Cont.Checked:=False;
       end;
  '5': begin
         CheckBoxUseOn_Cont.Checked:=True;
         CheckBoxLook_Cont.Checked:=False;
         CheckBoxTalk_Cont.Checked:=True;
         CheckBoxPickup_Cont.Checked:=False;
       end;
  '6': begin
         CheckBoxUseOn_Cont.Checked:=False;
         CheckBoxLook_Cont.Checked:=True;
         CheckBoxTalk_Cont.Checked:=True;
         CheckBoxPickup_Cont.Checked:=False;
       end;
  '7': begin
         CheckBoxUseOn_Cont.Checked:=True;
         CheckBoxLook_Cont.Checked:=True;
         CheckBoxTalk_Cont.Checked:=True;
         CheckBoxPickup_Cont.Checked:=False;
       end;
  '8': begin
         CheckBoxUseOn_Cont.Checked:=False;
         CheckBoxLook_Cont.Checked:=False;
         CheckBoxTalk_Cont.Checked:=False;
         CheckBoxPickup_Cont.Checked:=True;
       end;
  '9': begin
         CheckBoxUseOn_Cont.Checked:=True;
         CheckBoxLook_Cont.Checked:=False;
         CheckBoxTalk_Cont.Checked:=False;
         CheckBoxPickup_Cont.Checked:=True;
       end;
  'A': begin
         CheckBoxUseOn_Cont.Checked:=False;
         CheckBoxLook_Cont.Checked:=True;
         CheckBoxTalk_Cont.Checked:=False;
         CheckBoxPickup_Cont.Checked:=True;
       end;
  'B': begin
         CheckBoxUseOn_Cont.Checked:=True;
         CheckBoxLook_Cont.Checked:=True;
         CheckBoxTalk_Cont.Checked:=False;
         CheckBoxPickup_Cont.Checked:=True;
       end;
  'C': begin
         CheckBoxUseOn_Cont.Checked:=False;
         CheckBoxLook_Cont.Checked:=False;
         CheckBoxTalk_Cont.Checked:=True;
         CheckBoxPickup_Cont.Checked:=True;
       end;
  'D': begin
         CheckBoxUseOn_Cont.Checked:=True;
         CheckBoxLook_Cont.Checked:=False;
         CheckBoxTalk_Cont.Checked:=True;
         CheckBoxPickup_Cont.Checked:=True;
       end;
  'E': begin
         CheckBoxUseOn_Cont.Checked:=False;
         CheckBoxLook_Cont.Checked:=True;
         CheckBoxTalk_Cont.Checked:=True;
         CheckBoxPickup_Cont.Checked:=True;
       end;
  'F': begin
         CheckBoxUseOn_Cont.Checked:=True;
         CheckBoxLook_Cont.Checked:=True;
         CheckBoxTalk_Cont.Checked:=True;
         CheckBoxPickup_Cont.Checked:=True;
       end;
  end;



  case FLAG_hex_string[6] of
  '0': begin
         CheckBoxUse_Cont.Checked:=False;
       end;
  '8': begin
         CheckBoxUse_Cont.Checked:=True;
       end;
  end;



  Cont_FLAG_dec:=CzytajWartosc(ActualFile,$3D,4);
  Cont_FLAG_hex_string:=IntToHex(Cont_FLAG_dec,8);
  //ShowMessage('Czytam: ' + Cont_FLAG_hex_string[8]);
  case Cont_FLAG_hex_string[8] of
  '0': begin
         CheckBoxCantPickup_Cont.Checked:=False;
         CheckBoxMagicHands_Cont.Checked:=False;
       end;
  '1': begin
         CheckBoxCantPickup_Cont.Checked:=True;
         CheckBoxMagicHands_Cont.Checked:=False;
       end;
  '8': begin
         CheckBoxCantPickup_Cont.Checked:=False;
         CheckBoxMagicHands_Cont.Checked:=True;
       end;
  '9': begin
         CheckBoxCantPickup_Cont.Checked:=True;
         CheckBoxMagicHands_Cont.Checked:=True;
       end;
  end;
end;


Procedure TForm_Main.Czytaj_Misc(ActualFile:String);
begin
  EditPowerPID_misc.Text:=IntToStr(CzytajWartosc(ActualFile,$39,4));
  EditPowerType_misc.Text:=IntToStr(CzytajWartosc(ActualFile,$3D,4));

  EditCharges_misc.Text:=IntToStr(CzytajWartosc(ActualFile,$41,4));

//  ComboBox_PowerType.ItemIndex:=CzytajWartosc(ActualFile,$3D,4);
//  ComboBox_PowerPID.ItemIndex:=CzytajWartosc(ActualFile,$39,4)-28;  //???

  FLAG_dec:=CzytajWartosc(ActualFile,$18,4);
  FLAG_hex_string:=IntToHex(FLAG_dec,8);

  case FLAG_hex_string[5] of
  '0': begin
         CheckBoxUseOn_Misc.Checked:=False;
         CheckBoxLook_Misc.Checked:=False;
         CheckBoxTalk_Misc.Checked:=False;
         CheckBoxPickup_Misc.Checked:=False;
       end;
  '1': begin
         CheckBoxUseOn_Misc.Checked:=True;
         CheckBoxLook_Misc.Checked:=False;
         CheckBoxTalk_Misc.Checked:=False;
         CheckBoxPickup_Misc.Checked:=False;
       end;
  '2': begin
         CheckBoxUseOn_Misc.Checked:=False;
         CheckBoxLook_Misc.Checked:=True;
         CheckBoxTalk_Misc.Checked:=False;
         CheckBoxPickup_Misc.Checked:=False;
       end;
  '3': begin
         CheckBoxUseOn_Misc.Checked:=True;
         CheckBoxLook_Misc.Checked:=True;
         CheckBoxTalk_Misc.Checked:=False;
         CheckBoxPickup_Misc.Checked:=False;
       end;
  '4': begin
         CheckBoxUseOn_Misc.Checked:=False;
         CheckBoxLook_Misc.Checked:=False;
         CheckBoxTalk_Misc.Checked:=True;
         CheckBoxPickup_Misc.Checked:=False;
       end;
  '5': begin
         CheckBoxUseOn_Misc.Checked:=True;
         CheckBoxLook_Misc.Checked:=False;
         CheckBoxTalk_Misc.Checked:=True;
         CheckBoxPickup_Misc.Checked:=False;
       end;
  '6': begin
         CheckBoxUseOn_Misc.Checked:=False;
         CheckBoxLook_Misc.Checked:=True;
         CheckBoxTalk_Misc.Checked:=True;
         CheckBoxPickup_Misc.Checked:=False;
       end;
  '7': begin
         CheckBoxUseOn_Misc.Checked:=True;
         CheckBoxLook_Misc.Checked:=True;
         CheckBoxTalk_Misc.Checked:=True;
         CheckBoxPickup_Misc.Checked:=False;
       end;
  '8': begin
         CheckBoxUseOn_Misc.Checked:=False;
         CheckBoxLook_Misc.Checked:=False;
         CheckBoxTalk_Misc.Checked:=False;
         CheckBoxPickup_Misc.Checked:=True;
       end;
  '9': begin
         CheckBoxUseOn_Misc.Checked:=True;
         CheckBoxLook_Misc.Checked:=False;
         CheckBoxTalk_Misc.Checked:=False;
         CheckBoxPickup_Misc.Checked:=True;
       end;
  'A': begin
         CheckBoxUseOn_Misc.Checked:=False;
         CheckBoxLook_Misc.Checked:=True;
         CheckBoxTalk_Misc.Checked:=False;
         CheckBoxPickup_Misc.Checked:=True;
       end;
  'B': begin
         CheckBoxUseOn_Misc.Checked:=True;
         CheckBoxLook_Misc.Checked:=True;
         CheckBoxTalk_Misc.Checked:=False;
         CheckBoxPickup_Misc.Checked:=True;
       end;
  'C': begin
         CheckBoxUseOn_Misc.Checked:=False;
         CheckBoxLook_Misc.Checked:=False;
         CheckBoxTalk_Misc.Checked:=True;
         CheckBoxPickup_Misc.Checked:=True;
       end;
  'D': begin
         CheckBoxUseOn_Misc.Checked:=True;
         CheckBoxLook_Misc.Checked:=False;
         CheckBoxTalk_Misc.Checked:=True;
         CheckBoxPickup_Misc.Checked:=True;
       end;
  'E': begin
         CheckBoxUseOn_Misc.Checked:=False;
         CheckBoxLook_Misc.Checked:=True;
         CheckBoxTalk_Misc.Checked:=True;
         CheckBoxPickup_Misc.Checked:=True;
       end;
  'F': begin
         CheckBoxUseOn_Misc.Checked:=True;
         CheckBoxLook_Misc.Checked:=True;
         CheckBoxTalk_Misc.Checked:=True;
         CheckBoxPickup_Misc.Checked:=True;
       end;
  end;


  case FLAG_hex_string[6] of
  '0': begin
         CheckBoxUse_Misc.Checked:=False;
       end;
  '8': begin
         CheckBoxUse_Misc.Checked:=True;
       end;
  end;
end;



Procedure TForm_Main.Czytaj_Key(ActualFile:String);
begin
  FLAG_dec:=CzytajWartosc(ActualFile,$18,4);
  FLAG_hex_string:=IntToHex(FLAG_dec,8);

  case FLAG_hex_string[5] of
  '0': begin
         CheckBoxUseOn_Key.Checked:=False;
         CheckBoxLook_Key.Checked:=False;
         CheckBoxTalk_Key.Checked:=False;
         CheckBoxPickup_Key.Checked:=False;
       end;
  '1': begin
         CheckBoxUseOn_Key.Checked:=True;
         CheckBoxLook_Key.Checked:=False;
         CheckBoxTalk_Key.Checked:=False;
         CheckBoxPickup_Key.Checked:=False;
       end;
  '2': begin
         CheckBoxUseOn_Key.Checked:=False;
         CheckBoxLook_Key.Checked:=True;
         CheckBoxTalk_Key.Checked:=False;
         CheckBoxPickup_Key.Checked:=False;
       end;
  '3': begin
         CheckBoxUseOn_Key.Checked:=True;
         CheckBoxLook_Key.Checked:=True;
         CheckBoxTalk_Key.Checked:=False;
         CheckBoxPickup_Key.Checked:=False;
       end;
  '4': begin
         CheckBoxUseOn_Key.Checked:=False;
         CheckBoxLook_Key.Checked:=False;
         CheckBoxTalk_Key.Checked:=True;
         CheckBoxPickup_Key.Checked:=False;
       end;
  '5': begin
         CheckBoxUseOn_Key.Checked:=True;
         CheckBoxLook_Key.Checked:=False;
         CheckBoxTalk_Key.Checked:=True;
         CheckBoxPickup_Key.Checked:=False;
       end;
  '6': begin
         CheckBoxUseOn_Key.Checked:=False;
         CheckBoxLook_Key.Checked:=True;
         CheckBoxTalk_Key.Checked:=True;
         CheckBoxPickup_Key.Checked:=False;
       end;
  '7': begin
         CheckBoxUseOn_Key.Checked:=True;
         CheckBoxLook_Key.Checked:=True;
         CheckBoxTalk_Key.Checked:=True;
         CheckBoxPickup_Key.Checked:=False;
       end;
  '8': begin
         CheckBoxUseOn_Key.Checked:=False;
         CheckBoxLook_Key.Checked:=False;
         CheckBoxTalk_Key.Checked:=False;
         CheckBoxPickup_Key.Checked:=True;
       end;
  '9': begin
         CheckBoxUseOn_Key.Checked:=True;
         CheckBoxLook_Key.Checked:=False;
         CheckBoxTalk_Key.Checked:=False;
         CheckBoxPickup_Key.Checked:=True;
       end;
  'A': begin
         CheckBoxUseOn_Key.Checked:=False;
         CheckBoxLook_Key.Checked:=True;
         CheckBoxTalk_Key.Checked:=False;
         CheckBoxPickup_Key.Checked:=True;
       end;
  'B': begin
         CheckBoxUseOn_Key.Checked:=True;
         CheckBoxLook_Key.Checked:=True;
         CheckBoxTalk_Key.Checked:=False;
         CheckBoxPickup_Key.Checked:=True;
       end;
  'C': begin
         CheckBoxUseOn_Key.Checked:=False;
         CheckBoxLook_Key.Checked:=False;
         CheckBoxTalk_Key.Checked:=True;
         CheckBoxPickup_Key.Checked:=True;
       end;
  'D': begin
         CheckBoxUseOn_Key.Checked:=True;
         CheckBoxLook_Key.Checked:=False;
         CheckBoxTalk_Key.Checked:=True;
         CheckBoxPickup_Key.Checked:=True;
       end;
  'E': begin
         CheckBoxUseOn_Key.Checked:=False;
         CheckBoxLook_Key.Checked:=True;
         CheckBoxTalk_Key.Checked:=True;
         CheckBoxPickup_Key.Checked:=True;
       end;
  'F': begin
         CheckBoxUseOn_Key.Checked:=True;
         CheckBoxLook_Key.Checked:=True;
         CheckBoxTalk_Key.Checked:=True;
         CheckBoxPickup_Key.Checked:=True;
       end;
  end;


  case FLAG_hex_string[6] of
  '0': begin
         CheckBoxUse_Key.Checked:=False;
       end;
  '8': begin
         CheckBoxUse_Key.Checked:=True;
       end;
  end;
end;


{Procedure TForm_Main.Wypakowuj_plik_FRM(MainPath,path,nazwa_pliku:String);         // zastosowanie ma tylko dla FRM podczas wyboru wygladu posatci w pancerzu, zeby sie program nie wywala³ jak w Combo jest jakas nazwa a podczas jej wyboru okazuje sie ze pliku nie ma np jak Mega Modzie 2.33
begin
    repeat
      if nazwa_pliku[length(nazwa_pliku)]=' ' then Delete(nazwa_pliku,length(nazwa_pliku),1);
    until nazwa_pliku[length(nazwa_pliku)]<>' ';


    if not FileExists(mainPath+Path+nazwa_pliku) then
    begin
      if znajdz_plik(plik_patch000_dat,path+nazwa_pliku)<>0 then wypakuj_plik(plik_patch000_dat,path+nazwa_pliku,IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,MainPath+Path)
      else if znajdz_plik(F2Folder+'\master.dat',path+nazwa_pliku)<>0 then wypakuj_plik(F2Folder+'\master.dat',path+nazwa_pliku,IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,MainPath+Path) else
      begin
        ShowMessage('File not exists and Can not unpack file "'+path+nazwa_pliku+ '" from master.dat. You can continue your work.');
//        halt;          // tu w³asnie wy³¹czona komenda zeby sie program nie wywalal na wypadek braku pliki i braku mozliwosci jego wypakowania
      end;
    end;
end;
}

Procedure TForm_Main.Wypakowuj_plik(MainPath,path,nazwa_pliku:String);
begin
  Wypakowuj_plik_boolean:=True;

  repeat
    if nazwa_pliku[length(nazwa_pliku)]=' ' then Delete(nazwa_pliku,length(nazwa_pliku),1);
  until nazwa_pliku[length(nazwa_pliku)]<>' ';


  if FO1_active=False then
  begin
    if not FileExists(mainPath+Path+nazwa_pliku) then
    begin
      if znajdz_plik(plik_patch000_dat,path+nazwa_pliku)<>0 then wypakuj_plik(plik_patch000_dat,path+nazwa_pliku,IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,MainPath+Path)
      else if znajdz_plik(plik_master_dat,path+nazwa_pliku)<>0 then wypakuj_plik(plik_master_dat,path+nazwa_pliku,IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,MainPath+Path) else
      begin
        ShowMessage('Can not unpack file "'+path+nazwa_pliku+ '" from FO2 master.dat');
        Wypakowuj_plik_boolean:=False;
      end;
    end;
  end;
  if FO1_active=True then
  begin
    if not FileExists(mainPath+Path+nazwa_pliku) then
    begin
      WypakujFO1(plik_master_dat, path+nazwa_pliku);
    end;
  end;
end;


procedure TForm_Main.ShowSelected(Item:TListItem);
//var tekst:String;

begin
  if Assigned(Item) then
  begin
    if Item.Caption<>ActualFile then
    begin
      ActualFile:=F2Folder+sciezka_do_plikow_pro_items+Item.Caption;

      if not FileExists(ActualFile) then
      begin
        //ShowMessage('Item.Caption: '+Item.Caption);
        Wypakowuj_plik(F2Folder + '\data\','proto\items\',Item.Caption);

        if wypakowuj_plik_Boolean = True then
        begin
          BitBtn_EDIT.Visible:=true;

          All_components_Visible;
          Image1.Repaint;
          Image2.Repaint;

          ActualIndex:=ListViewFiles.ItemIndex;
          UstawAtrybutPliku(ActualFile,$00000020);{ustawia atrybut archive dla pliku pro}
          Czytaj_BasicAttributes(ActualFile);

          if item_type=0 then Czytaj_Armor(ActualFile);{armor attributes}
          if item_type=1 then Czytaj_Container(ActualFile);{container attributes}
          if item_type=2 then Czytaj_Drug(ActualFile);{drug attributes}
          if item_type=3 then Czytaj_Weapon(ActualFile);{weapon attributes}
          if item_type=4 then Czytaj_Ammo(ActualFile);{ammo attributes}
          if item_type=5 then Czytaj_Misc(ActualFile);{misc attributes}
          if item_type=6 then Czytaj_Key(ActualFile);{Key attributes}


          //if use_master_dat=false then
		  if use_master_dat=true then
          begin
            UstawAtrybutPliku(ActualFile,$00000020);{ustawia atrybut archive dla pliku pro}
            DeleteFile(ActualFile);   // bo plik by³ wypakowany tylko do ogl¹dania a nie edycji (a nie istania³)
          // jeszcze instrukcje do kasowania niepotrzebnych obrazków!!!!
          end;
{          else
            if ReadOnlyAttr='1' then
            begin
              UstawAtrybutPliku(ActualFile,$00000001); {ustawia atrybut readonly dla pliku pro}

{              StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
              StatusBar1.Panels[1].Text:='Files *.pro have ReadOnly attribute';
              StatusBar1.Update;
            end;
 }

    // wy³¹czenie kontrolek ¿eby nie mozna by³o edytowac pliku podczas View - plik fizycznie wówczas nie istnieje i wyst¹pi³by b³¹d
          BitBtnSave.Visible:=False; // wy³¹czenie kontrolki "Save" bo w³¹czy siê gdy bêdzie próba edycji a tak jest niepotrzebna i ³adniej to wygl¹da
          BitBtnCancel.Visible:=False;
          Pagecontrol1.Enabled:=false;
          Edit_Item_name.Enabled:=false;
          Editor.Enabled:=false;
          Edit_ItemID.Enabled:=false;
          Edit_ItemSize.Enabled:=false;

          EditWeight.Enabled:=false;
          EditPrice.Enabled:=false;
          ComboBox_Material_Type.Enabled:=false;
          ComboBox_Scripts.Enabled:=false;
          ComboBoxInventoryFrame.Enabled:=false;
          ComboBoxGroundFrame.Enabled:=false;


          with pagecontrol1 do
          begin
        //zak³adka Weapon - start
            ComboBox_CriticalFail.Enabled:=false;
            ComboBox_FireSoundID.Enabled:=false;
            EditMinStrenght.Enabled:=false;
            ComboBox_Perk.Enabled:=false;
            ComboBoxHoldFrame.Enabled:=false;
//          CheckBox_Use.Enabled:=false;  // nie u¿ywany w programie !!!
            CheckBox_BigGun.Enabled:=false;
            CheckBox_2Hand.Enabled:=false;
            CheckBox_1Hand.Enabled:=false;
            ComboBoxDmgType.Enabled:=false;
            ComboBoxFiringFrame.Enabled:=false;
            ComboBoxATmode1.Enabled:=false;
            ComboBoxATmode2.Enabled:=false;
            EditAPmode1.Enabled:=false;
            EditAPmode2.Enabled:=false;
            EditMaxDmg.Enabled:=false;
            EditMinDmg.Enabled:=false;
            EditRangeMode1.Enabled:=false;
            EditRangeMode2.Enabled:=false;
            ComboBoxAmmoType.Enabled:=false;
            ComboBoxDefaultAmmo.Enabled:=false;
            EditAmmoCapacity.Enabled:=false;
            EditBurstRound.Enabled:=false;
        //zak³adka Weapon - end

        //zak³adka pancerzy - start
            ComboBox_Armor_Perk.Enabled:=false;
            ComboBox1.Enabled:=false;
            ComboBox2.Enabled:=false;
            EditArmorClass.Enabled:=false;
            EditDRElectrical.Enabled:=false;
            EditDREMP.Enabled:=false;
            EditDRExplosion.Enabled:=false;
            EditDRfire.Enabled:=false;
            EditDRLaser.Enabled:=false;
            EditDRNormal.Enabled:=false;
            EditDRPlasma.Enabled:=false;
            EditDTElectrical.Enabled:=false;
            EditDTEMP.Enabled:=false;
            EditDTExplosion.Enabled:=false;
            EditDTfire.Enabled:=false;
            EditDTLaser.Enabled:=false;
            EditDTNormal.Enabled:=false;
            EditDTPlasma.Enabled:=false;
        //zak³adka pancerzy - end


        //zak³adka amunicji - start
            ComboBoxCaliberType.Enabled:=false;
            EditACmod.Enabled:=false;
            EditAmmoInMag.Enabled:=false;
            EditDmgmodA.Enabled:=false;
            EditDmgmodB.Enabled:=false;
            EditDRmod.Enabled:=false;
        //zak³adka amunicji - end

        //zak³adka container - start
            CheckBoxCantPickup_Cont.Enabled:=false;
            CheckBoxLook_Cont.Enabled:=false;
            CheckBoxMagicHands_Cont.Enabled:=false;
            CheckBoxPickup_Cont.Enabled:=false;
            CheckBoxTalk_Cont.Enabled:=false;
            CheckBoxUse_Cont.Enabled:=false;
            CheckBoxUseOn_Cont.Enabled:=false;
            Edit_max_size.Enabled:=false;
        //zak³adka container - end

        //zak³adka Drugs - start
            ComboBox_Stat1.Enabled:=false;
            ComboBox_Stat2.Enabled:=false;
            ComboBox_Stat3.Enabled:=false;
            ComboBox_WD_effect.Enabled:=false;
            Edit_addict_begin.Enabled:=false;
            Edit_addict_rate.Enabled:=false;
            Edit_long_begin.Enabled:=false;
            Edit_mid_begin.Enabled:=false;
            Edit_st1_imm.Enabled:=false;
            Edit_st1_long.Enabled:=false;
            Edit_st1_mid.Enabled:=false;
            Edit_st2_imm.Enabled:=false;
            Edit_st2_long.Enabled:=false;
            Edit_st2_mid.Enabled:=false;
            Edit_st3_imm.Enabled:=false;
            Edit_st3_long.Enabled:=false;
            Edit_st3_mid.Enabled:=false;
        //zak³adka Drugs - end

        //zak³adka Misc - start
            CheckBoxLook_Misc.Enabled:=false;
            CheckBoxPickup_Misc.Enabled:=false;
            CheckBoxTalk_Misc.Enabled:=false;
            CheckBoxUse_Misc.Enabled:=false;
            CheckBoxUseOn_Misc.Enabled:=false;
            EditCharges_Misc.Enabled:=false;
            EditPowerPID_Misc.Enabled:=false;
            EditPowerType_Misc.Enabled:=false;
        //zak³adka Misc - end

        //zak³adka Key - start
            CheckBoxLook_Key.Enabled:=false;
            CheckBoxPickup_Key.Enabled:=false;
            CheckBoxTalk_Key.Enabled:=false;
            CheckBoxUse_Key.Enabled:=false;
            CheckBoxUseOn_Key.Enabled:=false;
        //zak³adka Key - end

          end;
        end
        else  // gdy Wypakowuj_plik_boolean = False
        begin
          All_components_not_visible;
          TabSheetArmor.TabVisible:=False;
          TabSheetContainer.TabVisible:=False;
          TabSheetDrug.TabVisible:=False;
          TabSheetWeapon.TabVisible:=False;
          TabSheetAmmo.TabVisible:=False;
          TabSheetMisc.TabVisible:=False;
          TabSheetKey.TabVisible:=False;

          EditWeight.Visible:=False;
          EditPrice.Visible:=False;
          StaticTextWeight.Visible:=False;
          StaticTextPrice.Visible:=False;

          BitBtnSave.Visible:=False;
          BitBtnCancel.Visible:=False;

          Edit_item_Name.Text:='                                  PROTO FILE NOT FOUND';
          Editor.Lines.Text:=('Nothing found');
          Editor.Enabled:=False;
          Edit_item_name.Enabled:=False;

          Edit_ItemID.Visible:=False;
          Edit_ItemSize.Visible:=False;

        end;
      end;


      if FileExists(ActualFile) then
      begin
//        ShowMessage('plik istnieje');
        All_components_Visible;
        Image1.Repaint;
        Image2.Repaint;

        ActualIndex:=ListViewFiles.ItemIndex;
        UstawAtrybutPliku(ActualFile,$00000020);{ustawia atrybut archive dla pliku pro}
        Czytaj_BasicAttributes(ActualFile);

        if item_type=0 then Czytaj_Armor(ActualFile);{armor attributes}
        if item_type=1 then Czytaj_Container(ActualFile);{container attributes}
        if item_type=2 then Czytaj_Drug(ActualFile);{drug attributes}
        if item_type=3 then Czytaj_Weapon(ActualFile);{weapon attributes}
        if item_type=4 then Czytaj_Ammo(ActualFile);{ammo attributes}
        if item_type=5 then Czytaj_Misc(ActualFile);{misc attributes}
        if item_type=6 then Czytaj_Key(ActualFile);{Key attributes}

        if ReadOnlyAttr='1' then
        begin
          UstawAtrybutPliku(ActualFile,$00000001); {ustawia atrybut readonly dla pliku pro}

          StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
          StatusBar1.Panels[1].Text:='Files *.pro have ReadOnly attribute';
          StatusBar1.Update;
        end
        else
        begin
          UstawAtrybutPliku(ActualFile,$00000020); {ustawia atrybut archive dla pliku pro}

          StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
          StatusBar1.Panels[1].Text:='Files *.pro have Archive attribute';
          StatusBar1.Update;
        end;



        begin
    // w³¹czenie kontrolek ¿eby mozna by³o edytowac plik podczas Edit
          BitBtnSave.Visible:=False; // wy³¹czenie kontrolki "Save" bo w³¹czy siê gdy bêdzie próba edycji a tak jest niepotrzebna i ³adniej to wygl¹da
          BitBtnCancel.Visible:=False;    
          Pagecontrol1.Enabled:=true;
          Edit_Item_name.Enabled:=true;
          Editor.Enabled:=true;
          Edit_ItemID.Enabled:=true;
          Edit_ItemSize.Enabled:=true;

          EditWeight.Enabled:=true;
          EditPrice.Enabled:=true;
          ComboBox_Material_Type.Enabled:=true;
          ComboBox_Scripts.Enabled:=true;
          ComboBoxInventoryFrame.Enabled:=true;
          ComboBoxGroundFrame.Enabled:=true;
          BitBtn_Edit.Visible:=false;


        with pagecontrol1 do
        begin
        //zak³adka Weapon - start
          ComboBox_CriticalFail.Enabled:=true;
          ComboBox_FireSoundID.Enabled:=true;
          EditMinStrenght.Enabled:=true;
          ComboBox_Perk.Enabled:=true;
          ComboBoxHoldFrame.Enabled:=true;
//          CheckBox_Use.Enabled:=true;  // nie u¿ywany w programie !!!
          CheckBox_BigGun.Enabled:=true;
          CheckBox_2Hand.Enabled:=true;
          CheckBox_1Hand.Enabled:=true;
          ComboBoxDmgType.Enabled:=true;
          ComboBoxFiringFrame.Enabled:=true;
          ComboBoxATmode1.Enabled:=true;
          ComboBoxATmode2.Enabled:=true;
          EditAPmode1.Enabled:=true;
          EditAPmode2.Enabled:=true;
          EditMaxDmg.Enabled:=true;
          EditMinDmg.Enabled:=true;
          EditRangeMode1.Enabled:=true;
          EditRangeMode2.Enabled:=true;
          ComboBoxAmmoType.Enabled:=true;
          ComboBoxDefaultAmmo.Enabled:=true;
          EditAmmoCapacity.Enabled:=true;
          EditBurstRound.Enabled:=true;
        //zak³adka Weapon - end

        //zak³adka pancerzy - start
          ComboBox_Armor_Perk.Enabled:=true;
          ComboBox1.Enabled:=true;
          ComboBox2.Enabled:=true;
          EditArmorClass.Enabled:=true;
          EditDRElectrical.Enabled:=true;
          EditDREMP.Enabled:=true;
          EditDRExplosion.Enabled:=true;
          EditDRfire.Enabled:=true;
          EditDRLaser.Enabled:=true;
          EditDRNormal.Enabled:=true;
          EditDRPlasma.Enabled:=true;
          EditDTElectrical.Enabled:=true;
          EditDTEMP.Enabled:=true;
          EditDTExplosion.Enabled:=true;
          EditDTfire.Enabled:=true;
          EditDTLaser.Enabled:=true;
          EditDTNormal.Enabled:=true;
          EditDTPlasma.Enabled:=true;
        //zak³adka pancerzy - end

        //zak³adka amunicji - start
          ComboBoxCaliberType.Enabled:=true;
          EditACmod.Enabled:=true;
          EditAmmoInMag.Enabled:=true;
          EditDmgmodA.Enabled:=true;
          EditDmgmodB.Enabled:=true;
          EditDRmod.Enabled:=true;
        //zak³adka amunicji - end

        //zak³adka container - start
          CheckBoxCantPickup_Cont.Enabled:=true;
          CheckBoxLook_Cont.Enabled:=true;
          CheckBoxMagicHands_Cont.Enabled:=true;
          CheckBoxPickup_Cont.Enabled:=true;
          CheckBoxTalk_Cont.Enabled:=true;
          CheckBoxUse_Cont.Enabled:=true;
          CheckBoxUseOn_Cont.Enabled:=true;
          Edit_max_size.Enabled:=true;
        //zak³adka container - end


        //zak³adka Drugs - start
          ComboBox_Stat1.Enabled:=true;
          ComboBox_Stat2.Enabled:=true;
          ComboBox_Stat3.Enabled:=true;
          ComboBox_WD_effect.Enabled:=true;
          Edit_addict_begin.Enabled:=true;
          Edit_addict_rate.Enabled:=true;
          Edit_long_begin.Enabled:=true;
          Edit_mid_begin.Enabled:=true;
          Edit_st1_imm.Enabled:=true;
          Edit_st1_long.Enabled:=true;
          Edit_st1_mid.Enabled:=true;
          Edit_st2_imm.Enabled:=true;
          Edit_st2_long.Enabled:=true;
          Edit_st2_mid.Enabled:=true;
          Edit_st3_imm.Enabled:=true;
          Edit_st3_long.Enabled:=true;
          Edit_st3_mid.Enabled:=true;
        //zak³adka Drugs - end

        //zak³adka Misc - start
          CheckBoxLook_Misc.Enabled:=true;
          CheckBoxPickup_Misc.Enabled:=true;
          CheckBoxTalk_Misc.Enabled:=true;
          CheckBoxUse_Misc.Enabled:=true;
          CheckBoxUseOn_Misc.Enabled:=true;
          EditCharges_Misc.Enabled:=true;
          EditPowerPID_Misc.Enabled:=true;
          EditPowerType_Misc.Enabled:=true;
        //zak³adka Misc - end

        //zak³adka Key - start
          CheckBoxLook_Key.Enabled:=true;
          CheckBoxPickup_Key.Enabled:=true;
          CheckBoxTalk_Key.Enabled:=true;
          CheckBoxUse_Key.Enabled:=true;
          CheckBoxUseOn_Key.Enabled:=true;
        //zak³adka Key - end


        end;

    // koniec

        end;
      end;
    end;
  end
  else
  begin
    ActualFile:='';
  end;
end;

procedure TForm_Main.BitBtn_EDITClick(Sender: TObject);
begin
  //use_master_dat:=true;
  use_master_dat:=false;
  ShowSelected(Selected_Item);
  //use_master_dat:=false;
  use_master_dat:=true;


  BitBtn_Edit.Visible:=false;
  PageControl1.visible:=True;

  Label26.Visible:=True;
  Label31.Visible:=True;
  Label9.Visible:=True;
  Label_material.Visible:=True;
  Label32.Visible:=True;

  StaticTextWeight.Visible:=True;
  StaticTextPrice.Visible:=True;
  StaticText1.Visible:=True;
  StaticText2.Visible:=True;

  ComboBoxInventoryFrame.Visible:=True;
  ComboBoxGroundFrame.Visible:=True;
  ComboBox_Material_Type.Visible:=True;
  ComboBox_Scripts.Visible:=True;

  Edit_ItemID.Visible:=True;
  Edit_ItemSize.Visible:=True;

  EditWeight.Visible:=True;
  EditPrice.Visible:=True;

  Editor.Visible:=True;
  Image1.Visible:=True;
  Image2.Visible:=True;

  Image1.Repaint;
  Image2.Repaint;


  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;




procedure TForm_Main.ListViewFilesSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  if Selected then
  begin
    ShowSelected(Item);
    Selected_Item:=Item;

{    // w³¹czenie kontrolek na wypadek poprzedniego wy³¹czenia za pomoca przycisku View
    Pagecontrol1.Enabled:=true;
    Edit_Item_name.Enabled:=true;
    Editor.Enabled:=true;
    Edit_ItemID.Enabled:=true;
    EditWeight.Enabled:=true;
    EditPrice.Enabled:=true;
    ComboBox_Material_Type.Enabled:=true;
    ComboBox_Scripts.Enabled:=true;
    ComboBoxInventoryFrame.Enabled:=true;
    ComboBoxGroundFrame.Enabled:=true;

    // koniec
}
//    BitBtn_View_fileClick(Sender);

    Form_Main.Update;
  end
  else ShowSelected(nil);
end;





procedure TForm_Main.ComboBoxChange(Sender: TObject);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;


  Save1.Enabled:=True;
  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;
end;


procedure TForm_Main.Exit1Click(Sender: TObject);
begin
  Close;
  Application.Terminate;
end;

function GetWindowsLanguage: string;
var
  WinLanguage: array [0..50] of char;
begin
  VerLanguageName(GetSystemDefaultLangID, WinLanguage, 50);
  Result := StrPas(WinLanguage);
end;


function TForm_Main.GetExeVersion(sFileName:string): string;
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



procedure TForm_Main.FormCreate(Sender: TObject);
//var hM : HDC; // wy³¹czone uruchomienie jednej instancji programu dla Sduibek 13-06-2013
begin
{               // wy³¹czone uruchomienie jednej instancji programu dla Sduibek 13-06-2013
  hM:=CreateFileMapping(THANDLE($FFFFFFFF),nil,PAGE_READONLY,0,32,'ApplicationTestMap');
  if GetLastError=ERROR_ALREADY_EXISTS then
  begin
    ShowMessage('Can not execute, because another session of program is running!');
  end;
}
  begin
    if FileExists('f2wedit_updater._') then
    begin
      if FileExists('f2wedit_updater.exe') then DeleteFile('f2wedit_updater.exe');
      RenameFile('f2wedit_updater._','f2wedit_updater.exe');
    end;

//    ShowMessage(GetWindowsLanguage); //pokazuje jêzyk systemowy Windowsa


    All_components_Not_Visible;

    FO1_active:=False;
	  use_master_dat:=true;

    wersja:=GetExeVersion('f2wedit.exe');
    Form_Main.Caption:=Application.Title+' '+wersja+'';

    Form_Main.Show;
    Form_Main.Update;
    Sleep(100);

    StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
    StatusBar1.Panels[1].Text:='Loading F2wedit ...';
    StatusBar1.Update;

    if Sprawdzanie_plikow = True then
    begin
      //ShowMessage('sprawdz plik ini po Sprawdzanie_plikow');

      Form_Main.Caption:=Application.Title+' '+wersja+'     '+ F2Folder;


      CheckF2weditIni;
      //ShowMessage('sprawdz plik ini po CheckF2weditIni');

      UpdateList;
      //ShowMessage('sprawdz plik ini po UpdateList');

      Lista_ammo;{Wyszukuje pliki *.pro ammo i robi wpisy do *.ini}
      //ShowMessage('sprawdz plik ini po Lista_ammo');


      changed_background:=True;

      with Image5 do
      begin
        Picture := nil;
        Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
        Rct.Top := 0;
        Rct.Left := 0;
        Rct.Right := Width;
        Rct.Bottom := Height;
        Canvas.FillRect(Rct);
        Canvas.Rectangle(0, 0, 215, 147);
      end;

      with Image6 do
      begin
        Picture := nil;
        Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
        Rct.Top := 0;
        Rct.Left := 0;
        Rct.Right := Width;
        Rct.Bottom := Height;
        Canvas.FillRect(Rct);
        Canvas.Rectangle(0, 0, 215, 147);
      end;

      All_components_Visible;
    end;
  end;
end;



function TForm_Main.Sprawdzanie_plikow:Boolean;
var plik_f2weditini:Boolean;
begin
  Sprawdzanie_plikow:=False;
  
  plik_f2weditini:=true;
  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Checking files...';
  StatusBar1.Update;


  if not FileExists(ExtractFilePath(Application.ExeName) + f2wedit_ini) then
  begin
    If not Assigned(Form_Select_Dat_Files) then
    begin
      Form_Select_Dat_Files:=TForm_Select_Dat_Files.Create(nil);   // dlaczego 'nil' a nie 'Application' ?? Nie wiem ;) ale na razie dzia³a 08/12/2006
      Form_Select_Dat_Files.ShowModal;
    end
    else
    begin
      Form_Select_Dat_Files.Close;
      Form_Select_Dat_Files.Destroy;
      Form_Select_Dat_Files:=TForm_Select_Dat_Files.Create(nil);         // dlaczego 'nil' a nie 'Application' ?? Nie wiem ;) ale na razie dzia³a 08/12/2006
      Form_Select_Dat_Files.ShowModal;
    end;




  //    F2Folder := InputBox('Jak masz na imiê', 'Podaj imiê', '');





{
    if SelectDirectory('Select Fallout2 directory:','',F2Folder) then
    begin
      program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
      try
        program_INI.WriteString('Main', 'Fallout2_Directory', F2Folder);
        program_INI.WriteString('Main', 'master_dat', plik_master_dat);
        program_INI.WriteString('Main', 'critter_dat', plik_critter_dat);

        ReadOnlyAttr:='1';
        program_INI.WriteString('Main','ReadOnlyAttr',ReadOnlyAttr);
      finally
        program_INI.Free;
      end;
    end
    else
    begin
      Sprawdzanie_plikow:=False;
      ShowMessage('Action canceled');
      Application.Terminate;
    end;
}

  end;
  //ShowMessage(' zamkniecie okna ustawien plikow');

  //ShowMessage(F2Folder);
  //ShowMessage(plik_master_dat);
  //ShowMessage(plik_critter_dat);

  if FileExists(ExtractFilePath(Application.ExeName) + f2wedit_ini) then
  begin
    plik_f2weditini:=True;
    program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
    try
      F2Folder:=program_INI.ReadString('Main','Fallout2_Directory','');
      plik_master_dat:=program_INI.ReadString('Main','master_dat','');
      plik_critter_dat:=program_INI.ReadString('Main','critter_dat','');
      plik_patch000_dat:=program_INI.ReadString('Main','patch000_dat','');

      game_language:=program_INI.ReadString('Main','game_language','' + game_language + '');
      sciezka_do_pro_item_msg:='\data\text' + game_language + 'game\';

      ReadOnlyAttr:=program_INI.ReadString('Main','ReadOnlyAttr','1');
      if ReadOnlyAttr='0' then
      begin
        readonly1.Checked:=false;
        archive1.Checked:=true;
      end
      else
      begin
        readonly1.Checked:=true;
        archive1.Checked:=false;
      end;


    finally
      program_INI.Free;
    end;

    if (not FileExists(F2Folder + '\fallout2.exe')) and (not FileExists(F2Folder + '\falloutw.exe')) or (not FileExists(plik_critter_dat)) or (not FileExists(plik_master_dat))then
    begin
      DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
      Sprawdzanie_plikow:=False;
      //halt;
    end
    else
    begin
      if FileExists(F2Folder + '\fallout2.exe') then
        FO1_active:=False
      else
        if FileExists(F2Folder + '\falloutw.exe') then
        begin
          FO1_active:=True;
          //ShowMessage('FO1');
        end;
    end;
  end;


  if (ReadOnlyAttr<>'1') and (ReadOnlyAttr<>'0') then
  begin
    program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
    try
      program_INI.WriteString('Main','ReadOnlyAttr',ReadOnlyAttr);
    finally
      program_INI.Free;
    end;
  end;

// 14-12-2010 wylaczone zeby uniezaleznic program od pliku
  if (not FileExists(F2Folder + '\fallout2.exe')) and (not FileExists(F2Folder + '\falloutw.exe')) or (not FileExists(plik_critter_dat)) or (not FileExists(plik_master_dat))then
  begin
    ShowMessage('The files: "fallout2.exe" or "falloutw.exe" or "master.dat" or "critter.dat" not found. Program terminated.');
    DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
    halt;
  end
  else
    Sprawdzanie_plikow:=True;



  if (plik_f2weditini=true) then
  begin
    if not DirectoryExists(F2Folder + '\data\art\inven\') then ForceDirectories(F2Folder+'\data\art\inven\');
    if not DirectoryExists(F2Folder + '\data\art\items\') then ForceDirectories(F2Folder+'\data\art\items\');
    if not DirectoryExists(F2Folder + '\data\proto\items\') then ForceDirectories(F2Folder+'\data\proto\items\');
    if not DirectoryExists(F2Folder + '\data\text' + game_language + 'game\') then ForceDirectories(F2Folder+'\data\text' + game_language + 'game\');
    if not DirectoryExists(F2Folder + '\data\scripts\') then ForceDirectories(F2Folder+'\data\scripts\');

    if not DirectoryExists(F2Folder + '\data\art\critters\') then ForceDirectories(F2Folder+'\data\art\critters\');

    if not FileExists(F2Folder + '\data\art\critters\critters.lst') then
    begin
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'critters.lst';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_critter_dat,'art\critters\critters.lst')<>0 then wypakuj_plik(plik_critter_dat,'art\critters\critters.lst',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\art\critters\')
        else
        begin
          ShowMessage('Can not unpack file "critters.lst" from FO2 critter.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
//        ShowMessage(plik_critter_dat);
        WypakujFO1(plik_critter_dat, 'art\critters\critters.lst');
      end;
    end;

//    if not FileExists(plik_master_dat) then
//      Loguj('F2Folder: ' + F2Folder);


    //added 6-05-2008
    if not FileExists(F2Folder + '\data\text' + game_language + 'game\stat.msg') then
    begin
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'stat.msg';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'text' + game_language + 'game\stat.msg')<>0 then wypakuj_plik(plik_patch000_dat,'text' + game_language + 'game\stat.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\')
        else
        if znajdz_plik(plik_master_dat,'text' + game_language + 'game\stat.msg')<>0 then wypakuj_plik(plik_master_dat,'text' + game_language + 'game\stat.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\')
        else
        begin
          ShowMessage('Can not unpack file "stat.msg" from FO2 master.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'text' + game_language + 'game\stat.msg');
      end;
    end;


    if not FileExists(F2Folder + '\data\text' + game_language + 'game\perk.msg') then
    begin
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'perk.msg';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'text' + game_language + 'game\perk.msg')<>0 then wypakuj_plik(plik_patch000_dat,'text' + game_language + 'game\perk.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\')
        else if znajdz_plik(plik_master_dat,'text' + game_language + 'game\perk.msg')<>0 then wypakuj_plik(plik_master_dat,'text' + game_language + 'game\perk.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\') else
        begin
          ShowMessage('Can not unpack file "perk.msg" from master.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'text' + game_language + 'game\perk.msg');
      end;
    end;

    if not FileExists(F2Folder + '\data\text' + game_language + 'game\pro_item.msg') then
    begin
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'pro_item.msg';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'text' + game_language + 'game\pro_item.msg')<>0 then wypakuj_plik(plik_patch000_dat,'text' + game_language + 'game\pro_item.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\')
        else if znajdz_plik(plik_master_dat,'text' + game_language + 'game\pro_item.msg')<>0 then wypakuj_plik(plik_master_dat,'text' + game_language + 'game\pro_item.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\') else
        begin
          ShowMessage('Can not unpack file "pro_item.msg" from master.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'text' + game_language + 'game\pro_item.msg');
      end;
    end;

    if not FileExists(F2Folder + '\data\text' + game_language + 'game\pro_misc.msg') then
    begin
//      Form_Splash.Label1.Caption:='Unpacking '+ 'pro_misc.msg';
//      Form_Splash.Update;
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'pro_misc.msg';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'text' + game_language + 'game\pro_misc.msg')<>0 then wypakuj_plik(plik_patch000_dat,'text' + game_language + 'game\pro_misc.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\')
        else if znajdz_plik(plik_master_dat,'text' + game_language + 'game\pro_misc.msg')<>0 then wypakuj_plik(plik_master_dat,'text' + game_language + 'game\pro_misc.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\') else
        begin
          ShowMessage('Can not unpack file "pro_misc.msg" from FO2 master.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'text' + game_language + 'game\pro_misc.msg');
      end;
    end;

    if not FileExists(F2Folder + '\data\text' + game_language + 'game\proto.msg') then
    begin
//      Form_Splash.Label1.Caption:='Unpacking '+ 'proto.msg';
//      Form_Splash.Update;
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'proto.msg';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'text' + game_language + 'game\proto.msg')<>0 then wypakuj_plik(plik_patch000_dat,'text' + game_language + 'game\proto.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\')
        else if znajdz_plik(plik_master_dat,'text' + game_language + 'game\proto.msg')<>0 then wypakuj_plik(plik_master_dat,'text' + game_language + 'game\proto.msg',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'game\') else
        begin
          ShowMessage('Can not unpack file "proto.msg" from master.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'text' + game_language + 'game\proto.msg');
      end;
    end;

    if not FileExists(F2Folder + '\data\scripts\scripts.lst') then
    begin
//      Form_Splash.Label1.Caption:='Unpacking '+ 'scripts.lst';
//      Form_Splash.Update;
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'scripts.lst';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'scripts\scripts.lst')<>0 then wypakuj_plik(plik_patch000_dat,'scripts\scripts.lst',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\scripts\')
        else if znajdz_plik(plik_master_dat,'scripts\scripts.lst')<>0 then wypakuj_plik(plik_master_dat,'scripts\scripts.lst',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\scripts\') else
        begin
          ShowMessage('Can not unpack file "scripts.lst" from master.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'scripts\scripts.lst');
      end;
    end;

    if not FileExists(F2Folder + '\data\art\inven\inven.lst') then
    begin
//      Form_Splash.Label1.Caption:='Unpacking '+ 'inven.lst';
//      Form_Splash.Update;
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'inven.lst';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'art\inven\inven.lst')<>0 then wypakuj_plik(plik_patch000_dat,'art\inven\inven.lst',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\art\inven\')
        else if znajdz_plik(plik_master_dat,'art\inven\inven.lst')<>0 then wypakuj_plik(plik_master_dat,'art\inven\inven.lst',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\art\inven\') else
        begin
          ShowMessage('Can not unpack file "inven.lst" from master.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'art\inven\inven.lst');
      end;
    end;
//    Wypakowuj_pliki(F2Folder + '\data\','art\inven\','inven.lst');

    if not FileExists(F2Folder + '\data\art\items\items.lst') then
    begin
//      Form_Splash.Label1.Caption:='Unpacking '+ 'items.lst';
//      Form_Splash.Update;
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'items.lst';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'art\items\items.lst')<>0 then wypakuj_plik(plik_patch000_dat,'art\items\items.lst',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\art\items\')
        else if znajdz_plik(plik_master_dat,'art\items\items.lst')<>0 then wypakuj_plik(plik_master_dat,'art\items\items.lst',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\art\items\') else
        begin
          ShowMessage('Can not unpack file "art\items.lst" from master.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'art\items\items.lst');
      end;
    end;
//    Wypakowuj_pliki(F2Folder + '\data\','art\items\','items.lst');


    if not FileExists(F2Folder + '\data\proto\items\items.lst') then
    begin
//      Form_Splash.Label1.Caption:='Unpacking '+ 'items.lst';
//      Form_Splash.Update;
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Unpacking '+ 'items.lst';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'proto\items\items.lst')<>0 then wypakuj_plik(plik_patch000_dat,'proto\items\items.lst',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\proto\items\')
        else if znajdz_plik(plik_master_dat,'proto\items\items.lst')<>0 then wypakuj_plik(plik_master_dat,'proto\items\items.lst',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\proto\items\') else
        begin
          ShowMessage('Can not unpack file "proto\items.lst" from master.dat');
		  DeleteFile(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          halt;
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'proto\items\items.lst');
      end;
    end;
//    Wypakowuj_pliki(F2Folder + '\data\','proto\items\','items.lst');


// added 13-05-2008, plik wypakowywany dla sprawdzenia jêzyka gry
    if not DirectoryExists(F2Folder + '\data\text' + game_language + 'cuts\') then ForceDirectories(F2Folder+'\data\text' + game_language + 'cuts\');
    if not FileExists(F2Folder + '\data\text' + game_language + 'cuts\ovrintro.txt') then
    begin
//      Form_Splash.Label1.Caption:='Unpacking '+ 'ovrintro.txt';
//      Form_Splash.Label1.Caption:='Checking language...';
//      Form_Splash.Update;
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:='Checking language...';
      StatusBar1.Update;

      if FO1_active=False then
      begin
        if znajdz_plik(plik_patch000_dat,'text' + game_language + 'cuts\ovrintro.txt')<>0 then wypakuj_plik(plik_patch000_dat,'text' + game_language + 'cuts\ovrintro.txt',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'cuts\')
        else if znajdz_plik(plik_master_dat,'text' + game_language + 'cuts\ovrintro.txt')<>0 then wypakuj_plik(plik_master_dat,'text' + game_language + 'cuts\ovrintro.txt',IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,F2Folder + '\data\text' + game_language + 'cuts\') else
        begin
          //ShowMessage('Can not unpack file "text' + game_language + 'cuts\ovrintro.txt" from master.dat');
  //        halt;  // nie zatrzymuj dzia³ania programu
        end;
      end;
      if FO1_active=True then
      begin
        WypakujFO1(plik_master_dat,'text' + game_language + 'cuts\ovrintro.txt');
      end;
    end;


//    Sprawdzanie_plikow:=True;
  end
  else
  begin
    Sprawdzanie_plikow:=False;
    ShowMessage('The configuration file "f2wedit.ini" not found. Programm terminated.');
    halt;
  end;

end;


Procedure TForm_Main.CheckF2weditIni;
var iter:Integer;
    i,max_i:Byte;
    Lista:TStringList;
    nazwa_skryptu:string[64];
    strLinia:String;
    plikT:Textfile;
    
begin
  // sprawdzanie plików
 // Sprawdzanie_plikow;

  jezyk_gry:='inny';
  if FileExists(F2Folder + '\data\text' + game_language + 'cuts\ovrintro.txt') then
  begin
    AssignFile(plikT,F2Folder + '\data\text' + game_language + 'cuts\ovrintro.txt');
    Reset(plikT);
    strLinia:='';
    if not Eof(plikT) then
    begin
      Readln(plikT,strLinia);
      Readln(plikT,strLinia);
      if strLinia='Dobrze.' then
      begin
        jezyk_gry:='pl';
      end
      else jezyk_gry:='inny';
    end;
    CloseFile(plikT);
    Erase(plikT);
  end;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Configure F2wedit...';
  StatusBar1.Update;

  Lista := TStringList.Create;
  try
    if jezyk_gry='pl' then
    begin
      Lista.Add('Nic'); // komenda Add dodaje na koñcu
      Lista.Add('Uderzenie');
      Lista.Add('Kopniêcie');
      Lista.Add('Wymach');
      Lista.Add('Pchniêcie');
      Lista.Add('Rzut');
      Lista.Add('Strza³');
      Lista.Add('Seria');
      Lista.Add('Ci¹g³y p³omieñ');
    end
    else
    begin
      Lista.Add('None'); // komenda Add dodaje na koñcu
      Lista.Add('Punch');
      Lista.Add('Kick leg');
      Lista.Add('Swing');
      Lista.Add('Thrust');
      Lista.Add('Throw');
      Lista.Add('Single');
      Lista.Add('Burst');
      Lista.Add('Flame');
    end;

    ComboboxATmode1.Items.Clear;
    ComboboxATmode1.Items.AddStrings(Lista);
    ComboboxATmode2.Items.Clear;
    ComboboxATmode2.Items.AddStrings(Lista);
  finally
    Lista.Free;
  end;


  Lista := TStringList.Create;
  try
    if jezyk_gry='pl' then
    begin
      Lista.Add('Puste d³onie'); // komenda Add dodaje na koñcu
      Lista.Add('Nó¿');
      Lista.Add('Pa³ka');
      Lista.Add('M³ot bojowy');
      Lista.Add('W³ócznia');
      Lista.Add('Pistolet');
      Lista.Add('Pistolet maszynowy');
      Lista.Add('Karabin');
      Lista.Add('Broñ ciê¿ka');
      Lista.Add('Minigun');
      Lista.Add('Wyrzutnia rakietowa');

                                // KORZYSTA Z SFALL-A TIMESLIPA
      Lista.Add('11 - animation "S"');
      Lista.Add('12 - animation "O"');
      Lista.Add('13 - animation "P"');
      Lista.Add('14 - animation "Q"');
      Lista.Add('15 - animation "T"');

    end
    else
    begin
      Lista.Add('None'); // komenda Add dodaje na koñcu
      Lista.Add('Knife');
      Lista.Add('Club');
      Lista.Add('Sledgehammer');
      Lista.Add('Spear');
      Lista.Add('Small gun');
      Lista.Add('Sub_machinegun');
      Lista.Add('Rifle');
      Lista.Add('Big gun');
      Lista.Add('Minigun');
      Lista.Add('Rocket launcher');

                                // KORZYSTA Z SFALL-A TIMESLIPA
      Lista.Add('11 - animation "S"');
      Lista.Add('12 - animation "O"');
      Lista.Add('13 - animation "P"');
      Lista.Add('14 - animation "Q"');
      Lista.Add('15 - animation "T"');

    end;
    ComboboxHoldFrame.Items.Clear;
    ComboboxHoldFrame.Items.AddStrings(Lista);
  finally
    Lista.Free;
  end;


  //³aduje liste skrytpów
  Lista := TStringList.Create;
  try
    iter:=0;
    Lista.Add(IntToStr(iter)+' '+'Script not assigned');
    AssignFile(plikT,F2Folder+'\data\scripts\scripts.lst');
    Reset(plikT);
    try
      while not eof(plikT) do
      begin
//        Application.ProcessMessages;
        inc(iter);
        Readln(plikT,nazwa_skryptu);
        Lista.Add(IntToStr(iter)+' '+nazwa_skryptu);
      end;
    finally
      CloseFile(plikT);
    end;
    ComboBox_Scripts.Items.Clear;
    ComboBox_Scripts.Items.AddStrings(Lista);
  finally
    Lista.Free;
  end;

  // added 6-05-2008
  UstawAtrybutPliku(F2Folder+sciezka_do_pro_item_msg+stat_msg,$00000020);{ustawia atrybut archive dla pliku stat_item.msg}
  Msg2Ini(F2Folder+sciezka_do_pro_item_msg+stat_msg,F2Folder+sciezka_do_pro_item_msg+stat_ini);
  stat_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+stat_ini);
  try
    Lista := TStringList.Create;
    try
      for i:=1 to 38 do Lista.Add(stat_msg_INI.ReadString('Descriptions',IntToStr(99+i),''));

//      if Lista[1] = 'Percepcja' then
      if jezyk_gry='pl' then
         Lista.Insert(0,'Brak efektu') // komenda Insert dodaje w zadanym miejscu, przy czym 0 to poczatek
      else
         Lista.Insert(0,'None'); // komenda Insert dodaje w zadanym miejscu, przy czym 0 to poczatek


      ComboBox_Stat2.Items.Clear;
      ComboBox_Stat2.Items.AddStrings(Lista);

      ComboBox_Stat3.Items.Clear;
      ComboBox_Stat3.Items.AddStrings(Lista);



      //dla drugów ComboBox_Stat1 wymaga dodatkowego pola o nazwie " Minimum value of Stat2"
//      if Lista[0] = 'Brak efektu' then
      if jezyk_gry='pl' then
         Lista.Insert(0,'Minimalna wartoœæ Stat2') // komenda Inster dodaje w zadanym miejscu, przy czym 0 to poczatek
      else
         Lista.Insert(0,'Minimum value of Stat2'); // komenda Inster dodaje w zadanym miejscu, przy czym 0 to poczatek

      ComboBox_Stat1.Items.Clear;
      ComboBox_Stat1.Items.AddStrings(Lista);

    finally
      Lista.Free;
    end;
  finally
    stat_msg_INI.Free;
  end;



  UstawAtrybutPliku(F2Folder+sciezka_do_pro_item_msg+perk_msg,$00000020);{ustawia atrybut archive dla pliku pro_item.msg}
  Msg2Ini(F2Folder+sciezka_do_pro_item_msg+perk_msg,F2Folder+sciezka_do_pro_item_msg+perk_ini);
  perk_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+perk_ini);
  try
    Lista := TStringList.Create;
    try
      if FO1_active=False then
        for i:=1 to 119 do Lista.Add(perk_msg_INI.ReadString('Descriptions',IntToStr(100+i),''));
      if FO1_active=True then
        for i:=1 to 64 do Lista.Add(perk_msg_INI.ReadString('Descriptions',IntToStr(100+i),''));

//      if Lista[0] = 'Orientacja' then
      if jezyk_gry='pl' then
         Lista.Add('Bez perka') // komenda Add dodaje na koñcu
      else
         Lista.Add('None'); // komenda Add dodaje na koñcu


      ComboBox_Perk.Items.Clear;
      ComboBox_Perk.Items.AddStrings(Lista);

      ComboBox_Armor_Perk.Items.Clear;
      ComboBox_Armor_Perk.Items.AddStrings(Lista);
    finally
      Lista.Free;
    end;
  finally
    perk_msg_INI.Free;
  end;


  UstawAtrybutPliku(F2Folder+sciezka_do_pro_item_msg+perk_msg,$00000020);{ustawia atrybut archive dla pliku pro_item.msg}
  if not FileExists(F2Folder+sciezka_do_pro_item_msg+perk_ini) then
    Msg2Ini(F2Folder+sciezka_do_pro_item_msg+perk_msg,F2Folder+sciezka_do_pro_item_msg+perk_ini);
  perk_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+perk_ini);
  try
    Lista := TStringList.Create;
    try
      if FO1_active=False then
        for i:=1 to 119 do Lista.Add(perk_msg_INI.ReadString('Descriptions',IntToStr(100+i),''));

      if FO1_active=True then
        for i:=1 to 64 do Lista.Add(perk_msg_INI.ReadString('Descriptions',IntToStr(100+i),''));


//      if Lista[0] = 'Orientacja' then
      if jezyk_gry='pl' then
         Lista.Add('Brak efektu') // komenda Add dodaje na koñcu
      else
         Lista.Add('None'); // komenda Add dodaje na koñcu

      ComboBox_WD_effect.Items.Clear;
      ComboBox_WD_effect.Items.AddStrings(Lista);
    finally
      Lista.Free;
    end;
  finally
    perk_msg_INI.Free;
  end;


  UstawAtrybutPliku(F2Folder+sciezka_do_pro_item_msg+pro_misc_msg,$00000020);{ustawia atrybut archive dla pliku pro_item.msg}
  Msg2Ini(F2Folder+sciezka_do_pro_item_msg+pro_misc_msg,F2Folder+sciezka_do_pro_item_msg+pro_misc_ini);
  pro_misc_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_misc_ini);
  try
    Lista := TStringList.Create;
    try
      if FO1_active=False then
        for i:=1 to 50 do Lista.Add(pro_misc_msg_INI.ReadString('Descriptions',IntToStr(100*i),''));
      if FO1_active=True then
        for i:=1 to 46 do Lista.Add(pro_misc_msg_INI.ReadString('Descriptions',IntToStr(100*i),''));


//      if Lista[0] = 'rakieta' then
      if jezyk_gry='pl' then
//         Lista.Add('niewidoczny') // komenda Add dodaje na koñcu
         Lista.Insert(0,'niewidoczny') // komenda Inster dodaje w zadanym miejscu, przy czym 0 to poczatek
      else
//         Lista.Add('None'); // komenda Add dodaje na koñcu
         Lista.Insert(0,'None'); // komenda Inster dodaje w zadanym miejscu, przy czym 0 to poczatek

      ComboboxFiringFrame.Items.Clear;
      ComboboxFiringFrame.Items.AddStrings(Lista);
    finally
      Lista.Free;
    end;
  finally
    pro_misc_msg_INI.Free;
  end;




  UstawAtrybutPliku(F2Folder+sciezka_do_pro_item_msg+proto_msg,$00000020);{ustawia atrybut archive dla pliku pro_item.msg}
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
    while length(proto_msg_INI.ReadString('Descriptions',IntToStr(300+max_i),''))<>0 do Inc(max_i);
    Lista := TStringList.Create;
    try
      for i:=0 to max_i-1 do
      begin
//        Application.ProcessMessages;
        Lista.Add(proto_msg_INI.ReadString('Descriptions',IntToStr(300+i),''));
      end;
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

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Finishing configuration...';
  StatusBar1.Update;



  UstawAtrybutPliku(F2Folder+sciezka_do_pro_item_msg+pro_item_msg,$00000020);{ustawia atrybut archive dla pliku pro_item.msg}
  Msg2Ini(F2Folder+sciezka_do_pro_item_msg+pro_item_msg,F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    {dopisuje do ini domyslne typy amumicji zeby program dobrze dzialal bez plikow pro}
    {ustawia wartosc ile_ammo=25 bo tyle jest typów amunicji oryginalnie}
    if FO1_active=False then
      program_INI.WriteInteger('Main','ile_ammo',25);
    if FO1_active=True then
      program_INI.WriteInteger('Main','ile_ammo',16);
  finally
    program_INI.free;
  end;


  pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
  try
  begin
    program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
    try
    if FO1_active=False then
      begin
      program_INI.WriteString('Ammo0','ammo_id','14');
      program_INI.WriteString('Ammo0','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(14*100),''));
      program_INI.WriteString('Ammo1','ammo_id','29');
      program_INI.WriteString('Ammo1','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(29*100),''));
      program_INI.WriteString('Ammo2','ammo_id','30');
      program_INI.WriteString('Ammo2','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(30*100),''));
      program_INI.WriteString('Ammo3','ammo_id','31');
      program_INI.WriteString('Ammo3','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(31*100),''));
      program_INI.WriteString('Ammo4','ammo_id','32');
      program_INI.WriteString('Ammo4','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(32*100),''));
      program_INI.WriteString('Ammo5','ammo_id','33');
      program_INI.WriteString('Ammo5','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(33*100),''));
      program_INI.WriteString('Ammo6','ammo_id','34');
      program_INI.WriteString('Ammo6','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(34*100),''));
      program_INI.WriteString('Ammo7','ammo_id','35');
      program_INI.WriteString('Ammo7','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(35*100),''));
      program_INI.WriteString('Ammo8','ammo_id','36');
      program_INI.WriteString('Ammo8','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(36*100),''));
      program_INI.WriteString('Ammo9','ammo_id','37');
      program_INI.WriteString('Ammo9','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(37*100),''));
      program_INI.WriteString('Ammo10','ammo_id','38');
      program_INI.WriteString('Ammo10','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(38*100),''));
      program_INI.WriteString('Ammo11','ammo_id','39');
      program_INI.WriteString('Ammo11','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(39*100),''));
      program_INI.WriteString('Ammo12','ammo_id','95');
      program_INI.WriteString('Ammo12','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(95*100),''));
      program_INI.WriteString('Ammo13','ammo_id','111');
      program_INI.WriteString('Ammo13','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(111*100),''));
      program_INI.WriteString('Ammo14','ammo_id','121');
      program_INI.WriteString('Ammo14','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(121*100),''));
      program_INI.WriteString('Ammo15','ammo_id','163');
      program_INI.WriteString('Ammo15','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(163*100),''));
      program_INI.WriteString('Ammo16','ammo_id','274');
      program_INI.WriteString('Ammo16','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(274*100),''));
      program_INI.WriteString('Ammo17','ammo_id','357');
      program_INI.WriteString('Ammo17','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(357*100),''));
      program_INI.WriteString('Ammo18','ammo_id','358');
      program_INI.WriteString('Ammo18','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(358*100),''));
      program_INI.WriteString('Ammo19','ammo_id','359');
      program_INI.WriteString('Ammo19','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(359*100),''));
      program_INI.WriteString('Ammo20','ammo_id','360');
      program_INI.WriteString('Ammo20','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(360*100),''));
      program_INI.WriteString('Ammo21','ammo_id','361');
      program_INI.WriteString('Ammo21','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(361*100),''));
      program_INI.WriteString('Ammo22','ammo_id','362');
      program_INI.WriteString('Ammo22','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(362*100),''));
      program_INI.WriteString('Ammo23','ammo_id','363');
      program_INI.WriteString('Ammo23','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(363*100),''));
      program_INI.WriteString('Ammo24','ammo_id','382');
      program_INI.WriteString('Ammo24','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(382*100),''));
      end;
      if FO1_active=True then
      begin
      program_INI.WriteString('Ammo0','ammo_id','14');
      program_INI.WriteString('Ammo0','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(14*100),''));
      program_INI.WriteString('Ammo1','ammo_id','29');
      program_INI.WriteString('Ammo1','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(29*100),''));
      program_INI.WriteString('Ammo2','ammo_id','30');
      program_INI.WriteString('Ammo2','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(30*100),''));
      program_INI.WriteString('Ammo3','ammo_id','31');
      program_INI.WriteString('Ammo3','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(31*100),''));
      program_INI.WriteString('Ammo4','ammo_id','32');
      program_INI.WriteString('Ammo4','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(32*100),''));
      program_INI.WriteString('Ammo5','ammo_id','33');
      program_INI.WriteString('Ammo5','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(33*100),''));
      program_INI.WriteString('Ammo6','ammo_id','34');
      program_INI.WriteString('Ammo6','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(34*100),''));
      program_INI.WriteString('Ammo7','ammo_id','35');
      program_INI.WriteString('Ammo7','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(35*100),''));
      program_INI.WriteString('Ammo8','ammo_id','36');
      program_INI.WriteString('Ammo8','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(36*100),''));
      program_INI.WriteString('Ammo9','ammo_id','37');
      program_INI.WriteString('Ammo9','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(37*100),''));
      program_INI.WriteString('Ammo10','ammo_id','38');
      program_INI.WriteString('Ammo10','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(38*100),''));
      program_INI.WriteString('Ammo11','ammo_id','39');
      program_INI.WriteString('Ammo11','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(39*100),''));
      program_INI.WriteString('Ammo12','ammo_id','95');
      program_INI.WriteString('Ammo12','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(95*100),''));
      program_INI.WriteString('Ammo13','ammo_id','111');
      program_INI.WriteString('Ammo13','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(111*100),''));
      program_INI.WriteString('Ammo14','ammo_id','121');
      program_INI.WriteString('Ammo14','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(121*100),''));
      program_INI.WriteString('Ammo15','ammo_id','163');
      program_INI.WriteString('Ammo15','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(163*100),''));
      end;
    finally
      program_INI.free;
    end;
  end
  finally
    pro_item_msg_INI.Free;
  end;


  UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName,$00000020);{ustawia atrybut archive dla pliku items.lst}

  ListOfGroundFrame;
  ListOfInventoryFrame;
  ListOfArmorFrame;

{    AssignFile(plikT,'ascii.lst');
    Rewrite(plikT);
    for i:= 0 to 255 do
    Writeln(plikT,i,' ',Char(i));
    CloseFile(plikT);}

//    ListOfCaliberTypes;

//    Form_Splash.Memo_splash.Lines[1]:='Checking files ...';

  ActualFolder:=F2Folder+sciezka_do_plikow_pro_items{+ExtractFileDir(Application.ExeName)};


  Update_ile_plikow_pro;

//    Form_Splash.Memo_splash.Lines[2]:='Founded '+IntToStr(ile_plikow_pro)+' ALL proto files';

  item_type:=0; {0..6 to s¹ dane dla plików items\*.pro, a '7' przyj¹lem dla crittersów - tak naprawdê to nie ma ¿adnej 7 w plikach .pro}

  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
  Save1.Enabled:=False;
  BitBtnCancel.Enabled:=False;
  ActualIndex:=0;
end;



procedure TForm_Main.FormClose(Sender: TObject; var Action: TCloseAction);
var iter:Integer;
    grupa:string;
    Sections :TStringList;
begin
  Screen.Cursor:=crHourGlass;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Closing F2wedit...';
  StatusBar1.Update;


  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    ile_ammo:=program_INI.ReadInteger('Main','ile_ammo',25);
//    ile_ammo:=StrToInt(Readini(f2wedit_ini,'Main','ile_ammo'));
  finally
    program_INI.Free;
  end;

  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  Sections := TStringList.Create;
  try
    program_INI.ReadSections(Sections);

    {pozostawia w pliku f2wedit.ini amunicjê domysln¹ - oryginaln¹ w Falloucie2}
    {kasuje tylko nowe dodane typy amunicji}
    for iter:=ile_ammo downto 25 do
    begin
      grupa:='Ammo'+IntToStr(iter);
      program_INI.EraseSection(grupa);
    end;
  finally
    program_INI.Free;
  end;


  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
  {ustawia wartosc ile_ammo=25 bo tyle jest typów amunicji oryginalnie}
    program_ini.WriteInteger('Main','ile_ammo',25);
  {dla rakiety burzacej}
    program_ini.WriteInteger('Ammo0','ammo_id',14);

  {dopisuje tê wartosc, zeby mozna bylo wybierac ze bron nie ma amunicji}
    program_ini.WriteInteger('Ammo25','ammo_id',-1);
    if jezyk_gry='pl' then
      program_ini.WriteString('Ammo25','nazwa','pusty magazynek')
    else
      program_ini.WriteString('Ammo25','nazwa','None')
  finally
    program_INI.Free;
  end;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Saving configurations...';
  StatusBar1.Update;

  if FileExists(F2Folder+sciezka_do_pro_item_msg+pro_item_ini) then
  begin
    try
      Ini2msg(F2Folder+sciezka_do_pro_item_msg+pro_item_ini,F2Folder+sciezka_do_pro_item_msg+pro_item_msg);
    finally
      DeleteFile(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
    end;
  end;


  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Deleting temporary files...';
  StatusBar1.Update;

  if FileExists(TemporaryEditorFile) then DeleteFile(TemporaryEditorFile);
  if FileExists(F2Folder+sciezka_do_pro_item_msg+proto_ini) then DeleteFile(F2Folder+sciezka_do_pro_item_msg+proto_ini);
  if FileExists(F2Folder+sciezka_do_pro_item_msg+perk_ini) then DeleteFile(F2Folder+sciezka_do_pro_item_msg+perk_ini);
  if FileExists(F2Folder+sciezka_do_pro_item_msg+stat_ini) then DeleteFile(F2Folder+sciezka_do_pro_item_msg+stat_ini);//added 6-05-2008
  if FileExists(F2Folder+sciezka_do_pro_item_msg+pro_misc_ini) then DeleteFile(F2Folder+sciezka_do_pro_item_msg+pro_misc_ini);


//added 22-10-2006 ustawienie atrybutu plikom pro podczas zamykania programu

  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    ReadOnlyAttr:=program_INI.ReadString('Main','ReadOnlyAttr',ReadOnlyAttr);
  finally
    program_INI.Free;
  end;

  if ReadOnlyAttr='0' then UstawAtrybut('0')
  else
  if ReadOnlyAttr='1' then UstawAtrybut('1')
  else
    UstawAtrybut('1');



  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Thank you!';
  StatusBar1.Update;

end;



Procedure TForm_Main.UstawAtrybut(s:string);
var SearchRec:TSearchRec;
    NazwaPliku:String;
begin
  Screen.Cursor:=crHourGlass;
  if FindFirst(ActualFolder+'*.pro',(faArchive+faReadOnly),SearchRec)=0 then
  begin
    NazwaPliku:=SearchRec.Name;
    if s='0' then
    UstawAtrybutPliku(NazwaPliku,$00000020);{ustawia atrybut archive}
    if s='1' then
    UstawAtrybutPliku(NazwaPliku,$00000001);{ustawia atrybut read-only}

    while FindNext(SearchRec)=0 do
      if s='0' then
      UstawAtrybutPliku(NazwaPliku,$00000020);{ustawia atrybut archive}
      if s='1' then
      UstawAtrybutPliku(NazwaPliku,$00000001);{ustawia atrybut read-only}
  end;
  FindClose(SearchRec);
  Screen.Cursor:=crDefault;
end;





procedure TForm_Main.Lista_ammo;
var SearchRec:TSearchRec;
    Nazwa_Ammo:String;
    NazwaPliku:String[8];
    ammo_id:Integer;
    StringList: TStrings;
    iter:Integer;


begin
// to poni¿ej po to aby siê w ComboboXdefault ammo nazwy oryginalnych amunicji po zmianie mog³y sie za³adowa w Combo BoxDefault Ammo

  pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
  try
  begin
    program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
    try
      if FO1_active=False then
      begin
      program_INI.WriteString('Ammo0','ammo_id','14');
      program_INI.WriteString('Ammo0','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(14*100),''));
      program_INI.WriteString('Ammo1','ammo_id','29');
      program_INI.WriteString('Ammo1','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(29*100),''));
      program_INI.WriteString('Ammo2','ammo_id','30');
      program_INI.WriteString('Ammo2','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(30*100),''));
      program_INI.WriteString('Ammo3','ammo_id','31');
      program_INI.WriteString('Ammo3','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(31*100),''));
      program_INI.WriteString('Ammo4','ammo_id','32');
      program_INI.WriteString('Ammo4','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(32*100),''));
      program_INI.WriteString('Ammo5','ammo_id','33');
      program_INI.WriteString('Ammo5','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(33*100),''));
      program_INI.WriteString('Ammo6','ammo_id','34');
      program_INI.WriteString('Ammo6','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(34*100),''));
      program_INI.WriteString('Ammo7','ammo_id','35');
      program_INI.WriteString('Ammo7','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(35*100),''));
      program_INI.WriteString('Ammo8','ammo_id','36');
      program_INI.WriteString('Ammo8','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(36*100),''));
      program_INI.WriteString('Ammo9','ammo_id','37');
      program_INI.WriteString('Ammo9','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(37*100),''));
      program_INI.WriteString('Ammo10','ammo_id','38');
      program_INI.WriteString('Ammo10','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(38*100),''));
      program_INI.WriteString('Ammo11','ammo_id','39');
      program_INI.WriteString('Ammo11','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(39*100),''));
      program_INI.WriteString('Ammo12','ammo_id','95');
      program_INI.WriteString('Ammo12','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(95*100),''));
      program_INI.WriteString('Ammo13','ammo_id','111');
      program_INI.WriteString('Ammo13','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(111*100),''));
      program_INI.WriteString('Ammo14','ammo_id','121');
      program_INI.WriteString('Ammo14','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(121*100),''));
      program_INI.WriteString('Ammo15','ammo_id','163');
      program_INI.WriteString('Ammo15','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(163*100),''));
      program_INI.WriteString('Ammo16','ammo_id','274');
      program_INI.WriteString('Ammo16','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(274*100),''));
      program_INI.WriteString('Ammo17','ammo_id','357');
      program_INI.WriteString('Ammo17','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(357*100),''));
      program_INI.WriteString('Ammo18','ammo_id','358');
      program_INI.WriteString('Ammo18','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(358*100),''));
      program_INI.WriteString('Ammo19','ammo_id','359');
      program_INI.WriteString('Ammo19','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(359*100),''));
      program_INI.WriteString('Ammo20','ammo_id','360');
      program_INI.WriteString('Ammo20','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(360*100),''));
      program_INI.WriteString('Ammo21','ammo_id','361');
      program_INI.WriteString('Ammo21','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(361*100),''));
      program_INI.WriteString('Ammo22','ammo_id','362');
      program_INI.WriteString('Ammo22','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(362*100),''));
      program_INI.WriteString('Ammo23','ammo_id','363');
      program_INI.WriteString('Ammo23','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(363*100),''));
      program_INI.WriteString('Ammo24','ammo_id','382');
      program_INI.WriteString('Ammo24','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(382*100),''));
      end;
      if FO1_active=True then
      begin
      program_INI.WriteString('Ammo0','ammo_id','14');
      program_INI.WriteString('Ammo0','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(14*100),''));
      program_INI.WriteString('Ammo1','ammo_id','29');
      program_INI.WriteString('Ammo1','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(29*100),''));
      program_INI.WriteString('Ammo2','ammo_id','30');
      program_INI.WriteString('Ammo2','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(30*100),''));
      program_INI.WriteString('Ammo3','ammo_id','31');
      program_INI.WriteString('Ammo3','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(31*100),''));
      program_INI.WriteString('Ammo4','ammo_id','32');
      program_INI.WriteString('Ammo4','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(32*100),''));
      program_INI.WriteString('Ammo5','ammo_id','33');
      program_INI.WriteString('Ammo5','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(33*100),''));
      program_INI.WriteString('Ammo6','ammo_id','34');
      program_INI.WriteString('Ammo6','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(34*100),''));
      program_INI.WriteString('Ammo7','ammo_id','35');
      program_INI.WriteString('Ammo7','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(35*100),''));
      program_INI.WriteString('Ammo8','ammo_id','36');
      program_INI.WriteString('Ammo8','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(36*100),''));
      program_INI.WriteString('Ammo9','ammo_id','37');
      program_INI.WriteString('Ammo9','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(37*100),''));
      program_INI.WriteString('Ammo10','ammo_id','38');
      program_INI.WriteString('Ammo10','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(38*100),''));
      program_INI.WriteString('Ammo11','ammo_id','39');
      program_INI.WriteString('Ammo11','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(39*100),''));
      program_INI.WriteString('Ammo12','ammo_id','95');
      program_INI.WriteString('Ammo12','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(95*100),''));
      program_INI.WriteString('Ammo13','ammo_id','111');
      program_INI.WriteString('Ammo13','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(111*100),''));
      program_INI.WriteString('Ammo14','ammo_id','121');
      program_INI.WriteString('Ammo14','nazwa',pro_item_msg_INI.ReadString('Descriptions',IntToStr(121*100),''));
      program_INI.WriteString('Ammo15','ammo_id','163');
      end;
    finally
      program_INI.free;
    end;
  end
  finally
    pro_item_msg_INI.Free;
  end;
// tutaj koniec dodatkowych instrukcji

//  ile_ammo:=StrToInt(Readini(f2wedit_ini,'Main','ile_ammo'));
    if FO1_active=False then
      ile_ammo:=25;
    if FO1_active=True then
      ile_ammo:=16;


  Screen.Cursor:=crHourGlass;
// czyta jaki ma byc atrybut plików pro
  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    ReadOnlyAttr:=program_INI.ReadString('Main','ReadOnlyAttr',ReadOnlyAttr);
  finally
    program_INI.Free;
  end;

  if FindFirst(ActualFolder+'*.pro',(faArchive+faReadOnly),SearchRec)=0 then
  begin
    if SearchRec.Size=81 then
    begin
      NazwaPliku:=SearchRec.Name;

      if ReadOnlyAttr='0' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPliku+'.pro',$00000020);{ustawia atrybut archive dla pliku pro}
      ammo_id:=Round(CzytajWartosc(F2Folder+sciezka_do_plikow_pro_items+NazwaPliku+'.pro',4,4)/100);
      if ReadOnlyAttr='1' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPliku+'.pro',$00000001);{ustawia atrybut readonly dla pliku pro}

      if ((ammo_id>382) and (FO1_active=False)) or ((ammo_id>163) and (FO1_active=True)) then
      begin
        Inc(ile_ammo);
        pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
        try
          nazwa_ammo:=pro_item_msg_INI.ReadString('Descriptions',IntToStr(100*StrToInt(NazwaPliku)),'');
        finally
          pro_item_msg_INI.Free;
        end;

        program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
        try
          program_INI.WriteString('Ammo'+IntToStr(ile_ammo-1),'nazwa',Nazwa_ammo);
          program_INI.WriteString('Ammo'+IntToStr(ile_ammo-1),'ammo_id',IntToStr(ammo_id));
        finally
          program_INI.Free;
        end;

      end;
    end;

    while FindNext(SearchRec)=0 do
    begin
      if SearchRec.Size=81 then
      begin
        NazwaPliku:=SearchRec.Name;

        if ReadOnlyAttr='0' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPliku+'.pro',$00000020);{ustawia atrybut archive dla pliku pro}
        ammo_id:=Round(CzytajWartosc(F2Folder+sciezka_do_plikow_pro_items+NazwaPliku+'.pro',4,4)/100);
        if ReadOnlyAttr='1' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPliku+'.pro',$00000001);{ustawia atrybut readonly dla pliku pro}

        if ((ammo_id>382) and (FO1_active=False)) or ((ammo_id>163) and (FO1_active=True)) then
        begin
          Inc(ile_ammo);
          pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
          try
            nazwa_ammo:=pro_item_msg_INI.ReadString('Descriptions',IntToStr(100*StrToInt(NazwaPliku)),'');
          finally
            pro_item_msg_INI.Free;
          end;

          program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
          try
            program_INI.WriteString('Ammo'+IntToStr(ile_ammo-1),'nazwa',Nazwa_ammo);
            program_INI.WriteString('Ammo'+IntToStr(ile_ammo-1),'ammo_id',IntToStr(ammo_id));
          finally
            program_INI.Free;
          end;
        end;
      end;
    end;
  end;
  FindClose(SearchRec);
  Screen.Cursor:=crDefault;

  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    if jezyk_gry='pl' then
      program_INI.WriteString('Ammo'+IntToStr(ile_ammo),'nazwa','pusty magazynek')
    else
      program_INI.WriteString('Ammo'+IntToStr(ile_ammo),'nazwa','None');

    program_INI.WriteString('Ammo'+IntToStr(ile_ammo),'ammo_id',IntToStr(-1));
    program_INI.WriteInteger('Main','ile_ammo',ile_ammo);

    StringList := TStringList.Create;
    ile_ammo:=program_INI.ReadInteger('Main','ile_ammo',25);
    for iter:=0 to ile_ammo do
    begin
      nazwa_ammo:=program_INI.ReadString('Ammo'+IntToStr(iter),'nazwa','');
      StringList.Add(nazwa_ammo); {dodaje do listy nowe ammo}
    end;

  finally
    program_INI.Free;
  end;




{tutaj cos mo¿na porobic ¿eby lista Default ammo by³a zczytywana nie tylko z ini ale z pro}
  with ComboBoxDefaultAmmo do begin
    Items.Assign(StringList);
    ItemIndex := 0;
  end;


end;




{zlicza na podstawie pliku proto/../items.lst}
procedure TForm_Main.Update_ile_plikow_pro;  {zlicza liczbê plików *.pro na bazie listy plików w items.lst}
var plikT:TextFile;
    NazwaPlikuPro:String[12];
begin
  Screen.Cursor:=crHourGlass;
  if FileExists(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName) then
  begin
    AssignFile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
    Reset(plikT);
    While not eof(plikT) do
    begin
//      Application.ProcessMessages;
      Readln(plikT,NazwaPlikuPro);
      Inc(Ile_plikow_pro);
    end;
    CloseFile(plikT);
  end;
  Screen.Cursor:=crDefault;
end;


procedure TForm_Main.UpdateList;
var item:TListItem;
    DualName:String;
    plikT:TextFile;
    NazwaPlikuPro:String[12];
    incremental:Integer; {zmienna do incrementacji wartosci podczas odczytu nazwy z pliku items.lst i odczytu z pliku proto_msg}
    incremental_string:string[8];
//    plik:file of Byte;

begin
  Lista_ammo;

  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    ReadOnlyAttr:=program_INI.ReadString('Main','ReadOnlyAttr',ReadOnlyAttr);
  finally
    program_INI.Free;
  end;

//  if not Assigned(Form_Splash) then
//  begin
//    Form_Splash:=TForm_Splash.Create(Application);
//    Form_Splash.Show;
//    Form_Splash.Update;
//    Form_Splash.Caption:=Application.Title+' '+wersja;
//  end;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='';
  StatusBar1.Update;
  Progressbar1.Max:=ile_plikow_pro;
//  Form_Splash.Progressbar_splash.Max:=ile_plikow_pro;

  Screen.Cursor:=crHourGlass;
  ListViewFiles.Items.BeginUpdate;
  ListViewFiles.Items.Clear;

  incremental:=0;

  if FileExists(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName) then
  begin
    AssignFile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
    Reset(plikT);
    While not eof(plikT) do
    begin
// Application.ProcessMessages;
      Readln(plikT,NazwaPlikuPro);
      if FileExists(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro) then
      begin
        if ReadOnlyAttr='1' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000001); {ustawia atrybut readonly dla pliku pro}
        if ReadOnlyAttr='0' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000020);{ustawia atrybut archive dla pliku pro}

        item:=ListViewFiles.Items.Add;
        Item.Caption:=NazwaPlikuPro;
        Inc(incremental);
        if incremental>14 then
        begin
          incremental_string:=NazwaPlikuPro;
          incremental:=StrToInt(incremental_string);
        end;

      end
      else
      begin
        item:=ListViewFiles.Items.Add;
        Item.Caption:=NazwaPlikuPro;{'file not exists';}
        Inc(incremental);
        if incremental>14 then
        begin
          incremental_string:=NazwaPlikuPro;
          incremental:=StrToInt(incremental_string);
        end;

      end;

      pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
      try
        DualName:=pro_item_msg_INI.ReadString('Descriptions',IntToStr(100*Incremental),'');
        Item.SubItems.Add(DualName);
      finally
        pro_item_msg_INI.Free;
      end;

      if FileExists(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro) then
      begin
        if FileGetAttr(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro)=1 then Item.SubItems.Add('-R-');
        if FileGetAttr(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro)=32 then Item.SubItems.Add('-A-');
      end
      else
      begin
        Item.SubItems.Add('');
      end;

      item.ImageIndex:=1;

//      Form_Splash.Progressbar_splash.StepBy(1);
//      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
//      StatusBar1.Panels[1].Text:='';
      Progressbar1.StepBy(1);

    end;
    CloseFile(plikT);
    ProgressBar1.Position:=0;
  end;

  ListViewFiles.Items.EndUpdate;
  Screen.Cursor:=crDefault;

//  Form_Splash.Hide;
//  Form_Splash.Close;
//  Form_Splash:=nil;

  ActualIndex:=0; {ustawia na pierwszym elemencie w liscie}
  if Assigned(ListViewFiles.Items[ActualIndex]) then
  begin
    ListViewFiles.Items[ActualIndex].Focused:=True;
    ListViewFiles.Items[ActualIndex].Selected:=True;
    All_components_Visible;
    if not FileExists(F2Folder+sciezka_do_plikow_pro_items+'00000001.pro') then
    begin
//       ShowMessage('pierwszy plik, ktory MA nie istniec: '+F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro);
       BitBtn_EDIT.Visible:=true; //zeby by³ przycisk widoczny gdyby nie by³o tego pliku podczas uruchominia programu lub UpdateList
    end;
  end
  else
  begin
    All_components_not_visible;
    TabSheetArmor.TabVisible:=False;
    TabSheetContainer.TabVisible:=False;
    TabSheetDrug.TabVisible:=False;
    TabSheetWeapon.TabVisible:=False;
    TabSheetAmmo.TabVisible:=False;
    TabSheetMisc.TabVisible:=False;
    TabSheetKey.TabVisible:=False;

    EditWeight.Visible:=False;
    EditPrice.Visible:=False;
    StaticTextWeight.Visible:=False;
    StaticTextPrice.Visible:=False;

    BitBtnSave.Visible:=False;
    BitBtnCancel.Visible:=False;


    Edit_item_Name.Text:='                                  NO FILE FOUND';
    Editor.Lines.Text:=('Nothing found');
    Editor.Enabled:=False;
    Edit_item_name.Enabled:=False;

    Edit_ItemID.Visible:=False;
    Edit_ItemSize.Visible:=False;


  end;

//  Lista_ammo;{Wyszukuje pliki *.pro ammo i robi wpisy do *.ini}{przeniesione do Form_Main.create}
end;



procedure TForm_Main.UpdateList_Items(rozmiar_pliku:Byte);
var item:TListItem;
    SearchRec:TSearchRec;
    DualName:String;
    NazwaPliku:String[8];
    NazwaPlikuPro:String;
//    Tymcz:Integer;
    licznik:Integer;

    plikT:TextFile;
    pro_name:String[8];
//    incremental:Integer; {zmienna do incrementacji wartosci podczas odczytu nazwy z pliku items.lst i odczytu z pliku proto_msg}

begin
//  Lista_ammo;    {24-10-2006 -> do przetestowania czy mo¿e to byc wy³¹czone!!!!}
  licznik:=0;

  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    ReadOnlyAttr:=program_INI.ReadString('Main','ReadOnlyAttr',ReadOnlyAttr);
//    showmessage('Atrybut = '+ReadOnlyAttr);
  finally
    program_INI.Free;
  end;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='';

  Progressbar1.Max:=ile_plikow_pro;


  Screen.Cursor:=crHourGlass;
  ListViewFiles.Items.BeginUpdate;
  ListViewFiles.Items.Clear;

  if FindFirst(ActualFolder+'*.pro',(faArchive+faReadOnly),SearchRec)=0 then
  begin
    NazwaPlikuPro:=SearchRec.Name;

    Progressbar1.StepBy(1);

    if SearchRec.Size=rozmiar_pliku then
    begin
      inc(licznik);
      NazwaPliku:=SearchRec.Name;
      NazwaPlikuPro:=SearchRec.Name;

      if ReadOnlyAttr='1' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000001); {ustawia atrybut readonly dla pliku pro}
      if ReadOnlyAttr='0' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000020);{ustawia atrybut archive dla pliku pro}


      UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName,$00000020);{ustawia atrybut archive dla pliku items.lst}
      AssignFile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
      Reset(plikT);
      While not Eof(plikT) do
      begin
        Readln(plikT,pro_name);
        if pro_name=NazwaPliku then
        begin
          item:=ListViewFiles.Items.Add;
          Item.Caption :=SearchRec.Name;
          NazwaPlikuPro:=F2Folder+sciezka_do_plikow_pro_items+pro_name+'.pro';

          pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
          try
            DualName:=pro_item_msg_INI.ReadString('Descriptions',IntToStr((CzytajWartosc(NazwaPlikuPro,4,4))),'');
          finally
            pro_item_msg_INI.Free;
          end;

          Item.SubItems.Add(DualName);

          if FileExists(NazwaPlikuPro) then
          begin
            if FileGetAttr(NazwaPlikuPro)=1 then Item.SubItems.Add('-R-');
            if FileGetAttr(NazwaPlikuPro)=32 then Item.SubItems.Add('-A-');
          end
          else
            Item.SubItems.Add('');

          item.ImageIndex:=1;
        end;
      end;
      CloseFile(plikT);

      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:=SearchRec.Name+'   '+DualName;
      StatusBar1.Update;
    end;


    while FindNext(SearchRec)=0 do
    begin
      Progressbar1.StepBy(1);

      NazwaPlikuPro:=SearchRec.Name;

      if SearchRec.Size=rozmiar_pliku then
      begin
        inc(licznik);
        NazwaPliku:=SearchRec.Name;
        NazwaPlikuPro:=SearchRec.Name;

        if ReadOnlyAttr='1' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000001); {ustawia atrybut readonly dla pliku pro}
        if ReadOnlyAttr='0' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000020);{ustawia atrybut archive dla pliku pro}


        UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName,$00000020);{ustawia atrybut archive dla pliku items.lst}
        AssignFile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
        Reset(plikT);
        While not Eof(plikT) do
        begin
          Readln(plikT,pro_name);
          if pro_name=NazwaPliku then
          begin
            item:=ListViewFiles.Items.Add;
            item.Caption:=SearchRec.Name;
            NazwaPlikuPro:=F2Folder+sciezka_do_plikow_pro_items+pro_name+'.pro';

            pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
            try
              DualName:=pro_item_msg_INI.ReadString('Descriptions',IntToStr((CzytajWartosc(NazwaPlikuPro,4,4))),'');
            finally
              pro_item_msg_INI.Free;
            end;

            Item.SubItems.Add(DualName);
            if FileExists(NazwaPlikuPro) then
            begin
              if FileGetAttr(NazwaPlikuPro)=1 then Item.SubItems.Add('-R-');
              if FileGetAttr(NazwaPlikuPro)=32 then Item.SubItems.Add('-A-');
            end
            else
              Item.SubItems.Add('');

            item.ImageIndex:=1;
          end;
        end;
        CloseFile(plikT);
      end;
      StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
      StatusBar1.Panels[1].Text:=SearchRec.Name+'   '+DualName;
      StatusBar1.Update;
    end;
  end;
  ProgressBar1.Position:=0;
  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='';


  FindClose(SearchRec);
  ListViewFiles.Items.EndUpdate;
  Screen.Cursor:=crDefault;



  if New_item_test=True then
    ActualIndex:=licznik-1        {ustawia na ostatnim elemencie w liscie}
  else
    ActualIndex:=0;

  New_item_test:=False;


  if Assigned(ListViewFiles.Items[ActualIndex]) then
  begin
    ListViewFiles.Items[ActualIndex].Focused:=True;
    ListViewFiles.Items[ActualIndex].Selected:=True;
    ListViewFiles.SetFocus;
    All_components_Visible;
  end
  else
  begin
    All_components_not_visible;
    TabSheetArmor.TabVisible:=False;
    TabSheetContainer.TabVisible:=False;
    TabSheetDrug.TabVisible:=False;
    TabSheetWeapon.TabVisible:=False;
    TabSheetAmmo.TabVisible:=False;
    TabSheetMisc.TabVisible:=False;
    TabSheetKey.TabVisible:=False;

    EditWeight.Visible:=False;
    EditPrice.Visible:=False;
    StaticTextWeight.Visible:=False;
    StaticTextPrice.Visible:=False;

    BitBtnSave.Visible:=False;
    BitBtnCancel.Visible:=False;

    Edit_item_Name.Text:='                                  NO FILE FOUND';
    Editor.Lines.Text:=('Nothing found');
    Editor.Enabled:=False;
    Edit_item_name.Enabled:=False;

    Edit_ItemID.Visible:=False;
    Edit_ItemSize.Visible:=False;


    ComboBoxInventoryFrame.ItemIndex:=0;
    ComboBoxGroundFrame.ItemIndex:=0;
  end;

end;



Procedure TForm_Main.Wypakowuj_plik_wg_rozmiaru(MainPath,path,nazwa_pliku:String);{wypakowuje wskazany plik z plikow *.dat}
begin
  repeat
    if nazwa_pliku[length(nazwa_pliku)]=' ' then Delete(nazwa_pliku,length(nazwa_pliku),1);
  until nazwa_pliku[length(nazwa_pliku)]<>' ';


  if FO1_active=False then
  begin
    if znajdz_plik(plik_patch000_dat,path+nazwa_pliku)<>0 then wypakuj_plik(plik_patch000_dat,path+nazwa_pliku,IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,MainPath+Path)
    else
      if znajdz_plik(plik_master_dat,path+nazwa_pliku)<>0 then wypakuj_plik(plik_master_dat,path+nazwa_pliku,IntToStr(plik_z_dat.unpackedsize),IntToStr(plik_z_dat.packedsize),IntToStr(plik_z_dat.position),plik_z_dat.compresed,MainPath+Path)
  end;
  if FO1_active=True then
  begin
    WypakujFO1(plik_master_dat,path+nazwa_pliku);
  end;
end;






procedure TForm_Main.UpdateList_Items_and_unpack(rozmiar_pliku:Integer);
var item:TListItem;
    SearchRec:TSearchRec;
    DualName:String;
    NazwaPliku:String[8];
    pro_name:String[8];
    NazwaPlikuPro:String;
    nazwa_pliku_pro:string[12];
    licznik:Integer;

    plikT:TextFile;

//    incremental:Integer; {zmienna do incrementacji wartosci podczas odczytu nazwy z pliku items.lst i odczytu z pliku proto_msg}

    plik:file of byte; //do sprawdzania czy istnieje zanim bedzie wypakowany i ewentualnie skasowany jesli rozmiar nie taki jak trzeba
//    rozmiar:Integer;

    Time_start:TTime;
    Time_stop:TTime;
    czas,estimated_time:TTime;
    licznik_czasu:Integer;


begin
  Lista_ammo;
  licznik:=0;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='';
  StatusBar1.Update;
  Progressbar1.Max:=ile_plikow_pro;


  Screen.Cursor:=crHourGlass;
  ListViewFiles.Items.BeginUpdate;
  ListViewFiles.Items.Clear;

  //najpierw wypakuj pliki jesli ich nie ma i sprawdzaj od razu rozmiar, a jesli rozmiar nie taki jak trzeba to skasuj, bo niepotrzebny
  UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName,$00000020);{ustawia atrybut archive dla pliku items.lst}
  AssignFile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
  Reset(plikT);
  licznik_czasu:=0;
  Time_start:=Now; {start liczenia czasu operacji sprawdzania i wypakowywania plików}
  While not Eof(plikT) do
  begin
    Application.ProcessMessages;
    Readln(plikT,nazwa_pliku_pro);
    Progressbar1.StepBy(1);

    inc(licznik_czasu);
    if not FileExists(F2Folder+sciezka_do_plikow_pro_items+nazwa_pliku_pro) then
    begin
      Time_stop:=Now;
      czas:=ile_plikow_pro*(time_stop-Time_start)/licznik_czasu-(time_stop-time_start);
      estimated_time:=ile_plikow_pro*(time_stop-Time_start)/licznik_czasu;

      StatusBar1.Panels[0].Text:='Estimated total time : '+FormatDateTime('hh:nn:ss', estimated_time);
      StatusBar1.Panels[1].Text:='Time left to end : '+FormatDateTime('hh:nn:ss', czas);
      StatusBar1.Update;

      Wypakowuj_plik_wg_rozmiaru(F2Folder + '\data\','proto\items\',nazwa_pliku_pro{,rozmiar_pliku});

      UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+nazwa_pliku_pro,$00000020); {ustawia atrybut archive dla pliku pro}
      AssignFile(plik,F2Folder+sciezka_do_plikow_pro_items+nazwa_pliku_pro);
      Reset(plik);
      if FileSize(plik)<>rozmiar_pliku then
      begin
        CloseFile(plik);
        erase(plik);
      end
      else
      begin
        CloseFile(plik);
        UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+nazwa_pliku_pro,$00000001); {ustawia atrybut readOnly dla pliku pro}
      end;
    end;
  end;
  ProgressBar1.Position:=0;
  Time_stop:=Now;
  CloseFile(plikT);


  StatusBar1.Panels[0].Text:='Total time: '+ FormatDateTime('hh:nn:ss', Time_stop-Time_start);
  StatusBar1.Panels[1].Text:='Was not too long, was it?';
  StatusBar1.Update;

  Sleep(1500);


  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='';
  StatusBar1.Update;




//  incremental:=0; {zmienna do incrementacji wartosci podczas odczytu nazwy z pliku items.lst i odczytu z pliku proto_msg}
  if FindFirst(ActualFolder+'*.pro',(faArchive+faReadOnly),SearchRec)=0 then
  begin
//    inc(incremental);
    NazwaPlikuPro:=SearchRec.Name;
//    UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000001); {ustawia atrybut readonly dla pliku pro}
//    else UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000020);{ustawia atrybut archive dla pliku pro}

    if SearchRec.Size=rozmiar_pliku then
    begin
      inc(licznik);
      NazwaPliku:=SearchRec.Name;
      NazwaPlikuPro:=SearchRec.Name;
      UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000001); {ustawia atrybut readonly dla pliku pro}

      UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName,$00000020);{ustawia atrybut archive dla pliku items.lst}
      AssignFile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
      Reset(plikT);
      While not Eof(plikT) do
      begin
        // Application.ProcessMessages;
        Readln(plikT,pro_name);
        if pro_name=NazwaPliku then
        begin
          item:=ListViewFiles.Items.Add;
          Item.Caption :=SearchRec.Name;
          NazwaPlikuPro:=F2Folder+sciezka_do_plikow_pro_items+pro_name+'.pro';

          pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
          try
            DualName:=pro_item_msg_INI.ReadString('Descriptions',IntToStr((CzytajWartosc(NazwaPlikuPro,4,4))),'');
          finally
            pro_item_msg_INI.Free;
          end;

          Item.SubItems.Add(DualName);
          if FileExists(NazwaPlikuPro) then
          begin
            if FileGetAttr(NazwaPlikuPro)=1 then Item.SubItems.Add('-R-');
            if FileGetAttr(NazwaPlikuPro)=32 then Item.SubItems.Add('-A-');
          end
          else
            Item.SubItems.Add('');

          item.ImageIndex:=1;
        end;
      end;
      CloseFile(plikT);

//      Form_Splash.Memo_splash.Lines[ListViewFiles.ItemIndex]:=SearchRec.Name+'   '+DualName;
//      Form_Splash.Progressbar_splash.StepBy(1);
//      Form_Splash.Update;
//      StatusBar1.Panels[0].Text:='Total time: '+ TimeToStr(Time_stop-Time_start);
//      StatusBar1.Panels[1].Text:='Was not too long, was it?';
      Progressbar1.StepBy(1);

    end;
    ProgressBar1.Position:=0;
    
    while FindNext(SearchRec)=0 do
    begin
//      inc(incremental);
      NazwaPlikuPro:=SearchRec.Name;

      if SearchRec.Size=rozmiar_pliku then
      begin
        inc(licznik);
        NazwaPliku:=SearchRec.Name;
        NazwaPlikuPro:=SearchRec.Name;
        UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000001); {ustawia atrybut readonly dla pliku pro}

      UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName,$00000020);{ustawia atrybut archive dla pliku items.lst}
      AssignFile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
      Reset(plikT);
      While not Eof(plikT) do
      begin
        // Application.ProcessMessages;
        Readln(plikT,pro_name);
        if pro_name=NazwaPliku then
        begin
          item:=ListViewFiles.Items.Add;
          item.Caption:=SearchRec.Name;
          NazwaPlikuPro:=F2Folder+sciezka_do_plikow_pro_items+pro_name+'.pro';

          pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
          try
            DualName:=pro_item_msg_INI.ReadString('Descriptions',IntToStr((CzytajWartosc(NazwaPlikuPro,4,4))),'');
          finally
            pro_item_msg_INI.Free;
          end;

          Item.SubItems.Add(DualName);
          if FileExists(NazwaPlikuPro) then
          begin
            if FileGetAttr(NazwaPlikuPro)=1 then Item.SubItems.Add('-R-');
            if FileGetAttr(NazwaPlikuPro)=32 then Item.SubItems.Add('-A-');
          end
          else
            Item.SubItems.Add('');

          item.ImageIndex:=1;
        end;
      end;
      CloseFile(plikT);
//        DualName:=ReadIni(F2Folder+sciezka_do_pro_item_msg+pro_item_ini,'Descriptions',IntToStr(100*StrToInt(NazwaPliku)));
 //       Item.SubItems.Add(DualName);
 //       item.ImageIndex:=1;
      end;
//      Form_Splash.Memo_splash.Lines[ListViewFiles.ItemIndex]:=SearchRec.Name+'   '+DualName;
//      Form_Splash.Progressbar_splash.StepBy(1);
//      Form_Splash.Update;
//      StatusBar1.Panels[0].Text:='Total time: '+ TimeToStr(Time_stop-Time_start);
//      StatusBar1.Panels[1].Text:='Was not too long, was it?';
      Progressbar1.StepBy(1);

    end;
    ProgressBar1.Position:=0;
    
  end;
  FindClose(SearchRec);
  ListViewFiles.Items.EndUpdate;
  Screen.Cursor:=crDefault;

//  Form_Splash.Hide;
//  Form_Splash.Close;
//  Form_Splash:=nil;

  if New_item_test=True then ActualIndex:=licznik-1        {ustawia na ostatnim elemencie w liscie}
  else ActualIndex:=0;
  New_item_test:=False;
  if Assigned(ListViewFiles.Items[ActualIndex]) then
  begin
    ListViewFiles.Items[ActualIndex].Focused:=True;
    ListViewFiles.Items[ActualIndex].Selected:=True;
    ListViewFiles.SetFocus;
    All_components_Visible;
  end
  else
  begin
    All_components_not_visible;
    TabSheetArmor.TabVisible:=False;
    TabSheetContainer.TabVisible:=False;
    TabSheetDrug.TabVisible:=False;
    TabSheetWeapon.TabVisible:=False;
    TabSheetAmmo.TabVisible:=False;
    TabSheetMisc.TabVisible:=False;
    TabSheetKey.TabVisible:=False;

    EditWeight.Visible:=False;
    EditPrice.Visible:=False;
    StaticTextWeight.Visible:=False;
    StaticTextPrice.Visible:=False;

    BitBtnSave.Visible:=False;
    BitBtnCancel.Visible:=False;


    Edit_item_Name.Text:='                                  NO FILE EXISTS';
    Editor.Lines.Text:=('Nothing found');
    Editor.Enabled:=False;
    Edit_item_name.Enabled:=False;

    Edit_ItemID.Visible:=False;
    Edit_ItemSize.Visible:=False;


    ComboBoxInventoryFrame.ItemIndex:=0;
    ComboBoxGroundFrame.ItemIndex:=0;
  end;
end;



procedure TForm_Main.UpdateList_and_unpack_all;
var item:TListItem;
    DualName:String;
    plikT:TextFile;
    NazwaPlikuPro:String[12];
    incremental:Integer; {zmienna do incrementacji wartosci podczas odczytu nazwy z pliku items.lst i odczytu z pliku proto_msg}
    nazwa_pliku_pro:string[12];
    Time_start:TTime;
    Time_stop:TTime;
    czas:TTime;
    licznik:Integer;

begin
  Lista_ammo;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='';
  StatusBar1.Update;
  Progressbar1.Max:=ile_plikow_pro;

  Screen.Cursor:=crHourGlass;
  ListViewFiles.Items.BeginUpdate;
  ListViewFiles.Items.Clear;

  //najpierw wypakuj pliki jesli ich nie ma i sprawdzaj od razu rozmiar, a jesli rozmiar nie taki jak trzeba to skasuj, bo niepotrzebny

  UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName,$00000020);{ustawia atrybut archive dla pliku items.lst}

  
  AssignFile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
  Reset(plikT);
  licznik:=0;
  Time_start:=Now; {start liczenia czasu operacji sprawdzania i wypakowywania plików}
  While not Eof(plikT) do
  begin
    Application.ProcessMessages;
    Readln(plikT,nazwa_pliku_pro);
    Progressbar1.StepBy(1);

    inc(licznik);
    if not FileExists(F2Folder+sciezka_do_plikow_pro_items+nazwa_pliku_pro) then
    begin
      Time_stop:=Now;
      czas:=ile_plikow_pro*(time_stop-Time_start)/licznik-(time_stop-time_start);

      StatusBar1.Panels[1].Text:='Time to end: '+FormatDateTime('hh:nn:ss', czas);
      StatusBar1.Update;

      Wypakowuj_plik_wg_rozmiaru(F2Folder + '\data\','proto\items\',nazwa_pliku_pro{,rozmiar_pliku});
    end;
  end;
  ProgressBar1.Position:=0;
  Time_stop:=Now;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Time: '+ FormatDateTime('hh:nn:ss', Time_stop-Time_start);
  StatusBar1.Update;
  Sleep(1500);

  CloseFile(plikT);

  incremental:=0;

  if FileExists(F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName) then
  begin
//    showmessage('plik istnieje: '+F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);  // for debug
    AssignFile(plikT,F2Folder+sciezka_do_plikow_pro_items+Items_pro_LstFileName);
    Reset(plikT);
    While not eof(plikT) do
    begin
      Application.ProcessMessages;
      Readln(plikT,NazwaPlikuPro);
//      showmessage('plik proto o nazwie '+NazwaPlikuPro+' istnieje');          //for debug
      if FileExists(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro) then
      begin
//      showmessage('plik proto o nazwie '+NazwaPlikuPro+' istnieje');          //for debug
        if ReadOnlyAttr='1' then UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000001) {ustawia atrybut readonly dla pliku pro}
        else UstawAtrybutPliku(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro,$00000020);{ustawia atrybut archive dla pliku pro}

        item:=ListViewFiles.Items.Add;
        Item.Caption:=NazwaPlikuPro;
        Inc(incremental);
      end
      else
      begin
        item:=ListViewFiles.Items.Add;
        Item.Caption:=NazwaPlikuPro;{'file not exists';}
        Inc(incremental);
      end;

      pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
      try
        DualName:=pro_item_msg_INI.ReadString('Descriptions',IntToStr(100*Incremental),'');
      finally
        pro_item_msg_INI.Free;
      end;

      Item.SubItems.Add(DualName);
      if FileExists(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro) then
      begin
        if FileGetAttr(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro)=1 then Item.SubItems.Add('-R-');
        if FileGetAttr(F2Folder+sciezka_do_plikow_pro_items+NazwaPlikuPro)=32 then Item.SubItems.Add('-A-');
      end
      else
        Item.SubItems.Add('');

      item.ImageIndex:=1;
    end;


///++++++++++++++++++++++++++++++++++
{      While not Eof(plikT) do
      begin
        Readln(plikT,pro_name);
        if pro_name=NazwaPliku then
        begin
          item:=ListViewFiles.Items.Add;
          item.Caption:=SearchRec.Name;
          NazwaPlikuPro:=F2Folder+sciezka_do_plikow_pro_items+pro_name+'.pro';

          pro_item_msg_INI := TINIFile.Create(F2Folder+sciezka_do_pro_item_msg+pro_item_ini);
          try
            DualName:=pro_item_msg_INI.ReadString('Descriptions',IntToStr((CzytajWartosc(NazwaPlikuPro,4,4))),'');
          finally
            pro_item_msg_INI.Free;
          end;

          Item.SubItems.Add(DualName);
          if FileExists(NazwaPlikuPro) then
          begin
            if FileGetAttr(NazwaPlikuPro)=1 then Item.SubItems.Add('-R-');
            if FileGetAttr(NazwaPlikuPro)=32 then Item.SubItems.Add('-A-');
          end
          else
            Item.SubItems.Add('');

          item.ImageIndex:=1;
        end;
      end;}
//+++++++++++++++++++++++++++++++++++++
    CloseFile(plikT);
  end;


//  Form_Splash.Progressbar_splash.StepBy(1);
//  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
//  StatusBar1.Panels[1].Text:='Time: '+ TimeToStr(Time_stop-Time_start);
  Progressbar1.StepBy(1);


  ListViewFiles.Items.EndUpdate;
  Screen.Cursor:=crDefault;

//  Form_Splash.Hide;
//  Form_Splash.Close;
//  Form_Splash:=nil;

  ActualIndex:=0; {ustawia na pierwszym elemencie w liscie}
  if Assigned(ListViewFiles.Items[ActualIndex]) then
  begin
    ListViewFiles.Items[ActualIndex].Focused:=True;
    ListViewFiles.Items[ActualIndex].Selected:=True;
    All_components_Visible;
  end
  else
  begin
    All_components_not_visible;
    TabSheetArmor.TabVisible:=False;
    TabSheetContainer.TabVisible:=False;
    TabSheetDrug.TabVisible:=False;
    TabSheetWeapon.TabVisible:=False;
    TabSheetAmmo.TabVisible:=False;
    TabSheetMisc.TabVisible:=False;
    TabSheetKey.TabVisible:=False;

    EditWeight.Visible:=False;
    EditPrice.Visible:=False;
    StaticTextWeight.Visible:=False;
    StaticTextPrice.Visible:=False;

    BitBtnSave.Visible:=False;
    BitBtnCancel.Visible:=False;

    Edit_item_Name.Text:='                                  NO FILE FOUND';
    Editor.Lines.Text:=('Nothing found');
    Editor.Enabled:=False;
    Edit_item_name.Enabled:=False;

    Edit_ItemID.Visible:=False;
    Edit_ItemSize.Visible:=False;

  end;
  ProgressBar1.Position:=0;
//  Lista_ammo;{Wyszukuje pliki *.pro ammo i robi wpisy do *.ini}{przeniesione do Form_Main.create}
end;


{++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------++++++++++++++++++++++++++++}
{++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------++++++++++++++++++++++++++++}
{++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------++++++++++++++++++++++++++++}



procedure TForm_Main.About1Click(Sender: TObject);
begin
  if not Assigned(AboutBox) then
  Aboutbox:=TAboutbox.Create(Application);
  AboutBox.Show;
end;


procedure TForm_Main.ComboBoxDefaultAmmoKeyPress(Sender: TObject;
  var Key: Char);
var linia:string;
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnCancel.Enabled:=True;

  Save1.Enabled:=True;
  linia:=linia+Key;
end;


procedure TForm_Main.Edit_item_nameClick(Sender: TObject);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnCancel.Enabled:=True;
  Save1.Enabled:=True;
end;








procedure TForm_Main.ComboBoxInventoryFrameChange(Sender: TObject);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;

//  BitBtnReset.Enabled:=True;
  Save1.Enabled:=True;
  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;

  Show_Frm(NazwaPlikuObrazka_FRM,1);
end;


procedure TForm_Main.ComboBoxGroundFrameChange(Sender: TObject);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;

//  BitBtnReset.Enabled:=True;
  Save1.Enabled:=True;
  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;

  Show_Frm(NazwaPlikuObrazka_FRM,2);
end;





procedure TForm_Main.archive1Click(Sender: TObject);
begin
  readonly1.Checked:=false;
  archive1.Checked:=true;
  ReadOnlyAttr:='0';
  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    program_INI.WriteString('Main','ReadOnlyAttr',ReadOnlyAttr);
  finally
    program_INI.Free;
  end;
  UpdateList;
end;

procedure TForm_Main.readonly1Click(Sender: TObject);
begin
  readonly1.Checked:=true;
  archive1.Checked:=false;
  ReadOnlyAttr:='1';
  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    program_INI.WriteString('Main','ReadOnlyAttr',ReadOnlyAttr);
  finally
    program_INI.Free;
  end;
  UpdateList;
end;

procedure TForm_Main.Editprotomsg1Click(Sender: TObject);
begin
  if not FileExists(F2Folder+sciezka_do_pro_item_msg+'proto.msg') then
  begin
    ShowMessage('"proto.msg" not exists');
  end
  else
  begin
    if not Assigned(Form_Edit_msg) then
      Form_Edit_msg:=TForm_Edit_msg.Create(Application);
    Form_Edit_msg.Show;
//    Form_Main.Hide;
    Form_Main.Enabled:=False;
  end;
//  WinExec(LPCSTR('notepad.exe '+'readme.txt'),UINT(1));
end;

procedure TForm_Main.ComboBox1Change(Sender: TObject);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;

//  BitBtnReset.Enabled:=True;
  Save1.Enabled:=True;
  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;

  Show_Frm(NazwaPlikuObrazka_FRM,3);
end;

procedure TForm_Main.ComboBox2Change(Sender: TObject);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;

//  BitBtnReset.Enabled:=True;
  Save1.Enabled:=True;
  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;

  Show_Frm(NazwaPlikuObrazka_FRM,4);
end;

procedure TForm_Main.ComboBox_CriticalFailChange(Sender: TObject);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;

  Save1.Enabled:=True;
  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;
end;


procedure TForm_Main.All_components_not_visible;
begin
  with Image5 do
  begin
    Picture := nil;
  end;

  with Image6 do
  begin
    Picture := nil;
  end;


  ListViewFiles.Visible:=False;
  PageControl1.visible:=False;
//  BitBtnSave.Visible:=False;

  Label49.Visible:=False; // dodane 11-06-2008

  Label26.Visible:=False;
  Label31.Visible:=False;
  Label9.Visible:=False;
  Label_material.Visible:=False;
  Label32.Visible:=False;

  StaticTextWeight.Visible:=False;
  StaticTextPrice.Visible:=False;
  StaticText1.Visible:=False;
  StaticText2.Visible:=False;

  ComboBoxInventoryFrame.Visible:=False;
  ComboBoxGroundFrame.Visible:=False;
  ComboBox_Material_Type.Visible:=False;
  ComboBox_Scripts.Visible:=False;

  Edit_ItemID.Visible:=False;
  Edit_ItemSize.Visible:=False;
  EditWeight.Visible:=False;
  EditPrice.Visible:=False;

  Editor.Visible:=False;
  Image1.Visible:=False;
  Image2.Visible:=False;

  Edit_Item_Name.Text:='File not exists';
  BitBtn_EDIT.Visible:=false;
  BitBtnSave.Visible:=false;
  BitBtnCancel.Visible:=false;

  BitBtn1.Visible:=False;
  Edit_Search.Visible:=False;
  Edit_Item_Name.Visible:=False;


end;


procedure TForm_Main.All_components_Visible;
var  Rct: TRect;
begin

// rysowanie ramek wokol komponentów Image itemow
  with Image5 do
  begin
    if changed_background=True then  // dodane 17-02-2010
    begin
      Picture := nil;
      Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
      Rct.Top := 0;
      Rct.Left := 0;
      Rct.Right := Width;
      Rct.Bottom := Height;
      Canvas.FillRect(Rct);
      Canvas.Rectangle(0, 0, 215, 147);
    end
    else
    begin
      Picture := nil;
      Canvas.Brush.Color:=clBtnFace;
      Canvas.Rectangle(0, 0, 215, 147);
    end;
  end;


  with Image6 do
  begin
    if changed_background=True then  // dodane 17-02-2010
    begin
      Picture := nil;    
      Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
      Rct.Top := 0;
      Rct.Left := 0;
      Rct.Right := Width;
      Rct.Bottom := Height;
      Canvas.FillRect(Rct);
      Canvas.Rectangle(0, 0, 215, 147);
    end
    else
    begin
      Picture := nil;
      Canvas.Brush.Color:=clBtnFace;
      Canvas.Rectangle(0, 0, 215, 147);
    end;
  end;

  ListViewFiles.Visible:=True;
  PageControl1.visible:=True;
//  BitBtnSave.Visible:=True;

  Label49.Visible:=True; // dodane 11-06-2008
  Label26.Visible:=True;
  Label31.Visible:=True;
  Label9.Visible:=True;
  Label_material.Visible:=True;
  Label32.Visible:=True;

  StaticTextWeight.Visible:=True;
  StaticTextPrice.Visible:=True;
  StaticText1.Visible:=True;
  StaticText2.Visible:=True;

  ComboBoxInventoryFrame.Visible:=True;
  ComboBoxGroundFrame.Visible:=True;
  ComboBox_Material_Type.Visible:=True;
  ComboBox_Scripts.Visible:=True;

  Edit_ItemID.Visible:=True;
  Edit_ItemSize.Visible:=True;

  EditWeight.Visible:=True;
  EditPrice.Visible:=True;

  Editor.Visible:=True;
  Image1.Visible:=True;
  Image2.Visible:=True;

  BitBtn1.Visible:=True;
  Edit_Search.Visible:=True;
  Edit_Item_Name.Visible:=True;

end;


procedure TForm_Main.All1Click(Sender: TObject);
begin
  UpdateList;
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Armor1Click(Sender: TObject);
begin
  UpdateList_Items(129);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Weapon1Click(Sender: TObject);
begin
  Form_Main.Enabled:=False;
  UpdateList_Items(122);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
  Form_Main.Enabled:=True;  
end;

procedure TForm_Main.Ammo1Click(Sender: TObject);
begin
  UpdateList_Items(81);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Drugs1Click(Sender: TObject);
begin
  UpdateList_Items(125);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Misc1Click(Sender: TObject);
begin
  UpdateList_Items(69);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Keys1Click(Sender: TObject);
begin
  UpdateList_Items(61);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Container1Click(Sender: TObject);
begin
  UpdateList_Items(65);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

//  unpacking files

procedure TForm_Main.Allfiles1Click(Sender: TObject);
begin
  UpdateList_and_unpack_all;
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Armor2Click(Sender: TObject);
begin
  UpdateList_Items_and_unpack(129);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;


procedure TForm_Main.Weapon2Click(Sender: TObject);
begin
  UpdateList_Items_and_unpack(122);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Ammo2Click(Sender: TObject);
begin
  UpdateList_Items_and_unpack(81);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Drug1Click(Sender: TObject);
begin
  UpdateList_Items_and_unpack(125);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Misc2Click(Sender: TObject);
begin
  UpdateList_Items_and_unpack(69);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Container2Click(Sender: TObject);
begin
  UpdateList_Items_and_unpack(65);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Key1Click(Sender: TObject);
begin
  UpdateList_Items_and_unpack(61);
  BitBtnSave.Enabled:=False;
  BitBtnCancel.Enabled:=False;
end;

procedure TForm_Main.Enable1Click(Sender: TObject);
begin
  if Disable1.Checked=true then
  begin
    Enable1.Checked:=true;
    Disable1.Checked:=false;
    //use_master_dat:=true;
	  use_master_dat:=false;
  end;
end;

procedure TForm_Main.Disable1Click(Sender: TObject);
begin
  if Enable1.Checked=true then
  begin
    Enable1.Checked:=false;
    Disable1.Checked:=true;
    //use_master_dat:=false;
	  use_master_dat:=true;
  end;
end;


function ExecuteFile (const NazwaPliku, Parametry,
DomyslnyFolder: string; Tryb: Integer): THandle;
begin
ExecuteFile := ShellExecute (Application.MainForm.Handle, nil,
PChar(NazwaPliku), PChar(Parametry), PChar(DomyslnyFolder), Tryb);
end;

procedure TForm_Main.Readme1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','http://cubik2k.w.interia.pl/f2wedit_help/f2wedit_readme.html',nil,nil,SW_SHOWNORMAL);

//  if jezyk_gry='pl' then
//  begin
//    if not FileExists('f2wedit_readme.html') then
//    begin
//      ShowMessage('File "f2wedit_readme.html" not found!');
//    end
//    else
//    begin
//      ExecuteFile('f2wedit_readme.html','' ,'',SW_NORMAL);
{      if not Assigned(Form_Readme) then
      Form_Readme:=TForm_Readme.Create(Application);
      Form_Readme.Show;
//      Form_Main.Hide;
      Form_Main.Enabled:=False;
}
//    end;
//  end
//  else
//  begin
//    if not FileExists('f2wedit_readme_EN.html') then
//    begin
//      ShowMessage('File "f2wedit_readme_EN.html" not found!');
//    end
//    else
//    begin
//      ExecuteFile('f2wedit_readme_EN.html','' ,'',SW_NORMAL);
{      if not Assigned(Form_Readme) then
      Form_Readme:=TForm_Readme.Create(Application);
      Form_Readme.Show;
//      Form_Main.Hide;
      Form_Main.Enabled:=False;
}
//    end;
//  end
end;

procedure TForm_Main.ComboBox_CriticalFailDropDown(Sender: TObject);
var
  cbx : TComboBox;
  i, w, t: Integer;

  bmp : TBitmap;
begin
  cbx := TComboBox(Sender);

  //potrzebujemy tymczasowego obiektu TCanvas (bo nie mo¿na u¿yæ ComboBox.Canvas), wiêc tworzymy bitmapê
  bmp := TBitmap.Create;
  //przypisujemy czcionkê z kontrolki combobox
  bmp.Canvas.Font := cbx.Font;

  w := 0;
  for i := 0 to cbx.Items.Count - 1 do
  begin
    t := bmp.Canvas.TextWidth(cbx.Items[i]);
    if t > w then w := t;
  end;

  bmp.Free();

  //dodajemy szerokoœæ ramki i odstêp tekstu od ramki
  Inc(w, 1 + 2 + 2 + 1); //1 piksel na ramkê + 2 piksele na odstêp, razy 2 bo z lewej i prawej strony

  //jeœli pozycji na liœcie jest wiêcej ni¿ siê zmieœci w okienku...
  if cbx.Items.Count > cbx.DropDownCount then
    Inc(w, GetSystemMetrics(SM_CXVSCROLL)); //...to rozszerzamy o szerokoœæ pionowego suwaka

//  if w>650 then w:=650;

  SendMessage(cbx.Handle, CB_SETDROPPEDWIDTH, w, 0);
end;

procedure TForm_Main.ComboBox_FireSoundIDDropDown(Sender: TObject);

var
  cbx : TComboBox;
  i, w, t: Integer;

  bmp : TBitmap;
begin
  cbx := TComboBox(Sender);

  //potrzebujemy tymczasowego obiektu TCanvas (bo nie mo¿na u¿yæ ComboBox.Canvas), wiêc tworzymy bitmapê
  bmp := TBitmap.Create;
  //przypisujemy czcionkê z kontrolki combobox
  bmp.Canvas.Font := cbx.Font;

  w := 0;
  for i := 0 to cbx.Items.Count - 1 do
  begin
    t := bmp.Canvas.TextWidth(cbx.Items[i]);
    if t > w then w := t;
  end;

  bmp.Free();

  //dodajemy szerokoœæ ramki i odstêp tekstu od ramki
  Inc(w, 1 + 2 + 2 + 1); //1 piksel na ramkê + 2 piksele na odstêp, razy 2 bo z lewej i prawej strony

  //jeœli pozycji na liœcie jest wiêcej ni¿ siê zmieœci w okienku...
  if cbx.Items.Count > cbx.DropDownCount then
    Inc(w, GetSystemMetrics(SM_CXVSCROLL)); //...to rozszerzamy o szerokoœæ pionowego suwaka

//  if w>650 then w:=650;

  SendMessage(cbx.Handle, CB_SETDROPPEDWIDTH, w, 0);
end;


procedure TForm_Main.BitBtnCancelClick(Sender: TObject);
begin
  //use_master_dat:=true;
  use_master_dat:=false;
  ShowSelected(Selected_Item);
  //use_master_dat:=false;
  use_master_dat:=true;

  BitBtnSave.Enabled:=False;
  BitBtnSave.Visible:=False;

  BitBtnCancel.Enabled:=False;
  BitBtnCancel.Visible:=False;

  Save1.Enabled:=False;

  ListViewFiles.Enabled:=True;

  New1.Enabled:=True;
  Ustawienia1.Enabled:=True;
  Ustawienia2.Enabled:=True;
  Help1.Enabled:=True;

  Image1.Update;
  Image2.Update;

  ListViewFiles.SetFocus;

end;

procedure TForm_Main.Checkforupdate1Click(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'\f2wedit_updater.exe') then
    ShellExecute(Handle, 'open', 'f2wedit_updater.exe', nil, '', SW_SHOWNORMAL)
  else
  begin
    if MessageBox(Handle,'Unfortunately "F2wedit Updater" is missing. You will be redirected to the web-site for downloading neccessary file.','Downloading file.', MB_YESNO + MB_ICONQUESTION) = IdYes then
      ShellExecute(Handle,'open','http://cubik2k.w.interia.pl/f2wedit/f2wedit_updater.zip',nil,nil,SW_SHOWNORMAL);

//      ShellExecute(Handle,'open','http://cubik2k.w.interia.pl/f2wedit/f2wedit_updater.zip',nil,nil,SW_SHOWNORMAL);
  end;

{  If not Assigned(Form_Update) then
  begin
    Form_Update:=TForm_Update.Create(nil);   // dlaczego 'nil' a nie 'Application' ?? Nie wiem ;) ale na razie dzia³a 08/12/2006
    Form_Update.ShowModal;
  end
  else
  begin
    Form_Update.Close;
    Form_Update.Destroy;
    Form_Update:=TForm_Update.Create(nil);         // dlaczego 'nil' a nie 'Application' ?? Nie wiem ;) ale na razie dzia³a 08/12/2006
    Form_Update.ShowModal;
  end;
}
end;

procedure TForm_Main.Saveasbmp1Click(Sender: TObject);
var i,j:Integer;
    col:DWORD;
    R,B,G:Byte;
//    nazwa_obrazka:String[8];
begin
  Image1.Picture.Bitmap.PixelFormat := pf24bit;
  for i:=0 to Image1.width-1 do
    for j:=0 to Image1.Height-1 do
    begin
      col := Image1.Picture.Bitmap.Canvas.Pixels[i, j];
      R := GetRValue(Col);
      G := GetGValue(Col);
      B := GetBValue(Col);
      if (R=65) and (G=110) and (B=155) then begin
        R:=255;
        G:=255;
        B:=255;
        Image1.Picture.Bitmap.Canvas.Pixels[i, j]:=RGB(R,G,B);
      end;
    end;

  if not DirectoryExists(F2Folder + '\data\art\inven\bmp\') then ForceDirectories(F2Folder+'\data\art\inven\bmp\');
  SavePictureDialog1.FileName:=F2Folder+'\data\art\inven\bmp\'+ExtractFileName(ComboBoxInventoryFrame.items[ComboBoxInventoryFrame.ItemIndex])+'.bmp';

  if SavePictureDialog1.Execute then
  begin
    Image1.Picture.Bitmap.PixelFormat := pf8bit;

    Image1.Picture.SaveToFile(SavePictureDialog1.FileName);
  end;

  Image1.Picture.Bitmap.PixelFormat := pf24bit;
  for i:=0 to Image1.width-1 do
    for j:=0 to Image1.Height-1 do
    begin
      col := Image1.Picture.Bitmap.Canvas.Pixels[i, j];
      R := GetRValue(Col);
      G := GetGValue(Col);
      B := GetBValue(Col);
      if (R=255) and (G=255) and (B=255) then begin
        R:=65;
        G:=110;
        B:=155;
        Image1.Picture.Bitmap.Canvas.Pixels[i, j]:=RGB(R,G,B);
      end;
    end;
end;

procedure TForm_Main.Saveasbmp2Click(Sender: TObject);
var i,j:Integer;
    col:DWORD;
    R,B,G:Byte;
//    nazwa_obrazka:String[8];
begin
  Image2.Picture.Bitmap.PixelFormat := pf24bit;
  for i:=0 to Image2.width-1 do
    for j:=0 to Image2.Height-1 do
    begin
      col := Image2.Picture.Bitmap.Canvas.Pixels[i, j];
      R := GetRValue(Col);
      G := GetGValue(Col);
      B := GetBValue(Col);
      if (R=65) and (G=110) and (B=155) then begin
        R:=255;
        G:=255;
        B:=255;
        Image2.Picture.Bitmap.Canvas.Pixels[i, j]:=RGB(R,G,B);
      end;
    end;

  if not DirectoryExists(F2Folder + '\data\art\items\bmp\') then ForceDirectories(F2Folder+'\data\art\items\bmp\');
  SavePictureDialog2.FileName:=F2Folder+'\data\art\items\bmp\'+ExtractFileName(ComboBoxGroundFrame.items[ComboBoxGroundFrame.ItemIndex])+'.bmp';

  if SavePictureDialog2.Execute then
  begin
    Image2.Picture.Bitmap.PixelFormat := pf8bit;

    Image2.Picture.SaveToFile(SavePictureDialog2.FileName);
  end;

  Image2.Picture.Bitmap.PixelFormat := pf24bit;
  for i:=0 to Image2.width-1 do
    for j:=0 to Image2.Height-1 do
    begin
      col := Image2.Picture.Bitmap.Canvas.Pixels[i, j];
      R := GetRValue(Col);
      G := GetGValue(Col);
      B := GetBValue(Col);
      if (R=255) and (G=255) and (B=255) then begin
        R:=65;
        G:=110;
        B:=155;
        Image2.Picture.Bitmap.Canvas.Pixels[i, j]:=RGB(R,G,B);
      end;
    end;
//  ShowMessage('Disabled because not fully implemented yet. Will be in next version.')
end;

procedure TForm_Main.Homepage1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','http://cubik2k.w.interia.pl',nil,nil,SW_SHOWNORMAL);
end;

procedure TForm_Main.Saveasbmp32bit1Click(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
  begin
    Image1.Picture.Bitmap.PixelFormat := pf32bit;
    Image1.Picture.SaveToFile(SavePictureDialog1.FileName);
  end;
end;

procedure TForm_Main.Saveimageasbmp32bit1Click(Sender: TObject);
begin
  if SavePictureDialog2.Execute then
  begin
    Image2.Picture.Bitmap.PixelFormat := pf32bit;
    Image2.Picture.SaveToFile(SavePictureDialog2.FileName);
  end;
end;


procedure TForm_Main.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
//var // R, G, B: Byte;
//    col:DWORD;
begin
{  col := Image1.Picture.Bitmap.Canvas.Pixels[X, Y];
  R := GetRValue(Col);
  G := GetGValue(Col);
  B := GetBValue(Col);
  Label52.Caption:=IntToStr(R)+', '+IntToStr(G)+', '+IntToStr(B);
  }
  Image1.Hint:='Right click to save image to *.bmp'+#10#13+'Image size: '+IntToStr(Image1.Width)+' x '+IntToStr(Image1.Height);
//  Label52.Caption:=
end;

procedure TForm_Main.Image2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
//var R, G, B: Byte;
//    col:DWORD;
begin
{  col := Image1.Picture.Bitmap.Canvas.Pixels[X, Y];
  R := GetRValue(Col);
  G := GetGValue(Col);
  B := GetBValue(Col);
  Label52.Caption:=IntToStr(R)+', '+IntToStr(G)+', '+IntToStr(B);
  }
  Image2.Hint:='Right click to save image to *.bmp'+#10#13+'Image size: '+IntToStr(Image2.Width)+' x '+IntToStr(Image2.Height);
//  Label52.Caption:=
end;

procedure TForm_Main.PopupMenu1Popup(Sender: TObject);
begin
  Properties1.Caption:='Image size: '+IntToStr(Image1.Width)+' x '+IntToStr(Image1.Height);
end;



procedure TForm_Main.PopupMenu2Popup(Sender: TObject);
begin
  Properties2.Caption:='Image size: '+IntToStr(Image2.Width)+' x '+IntToStr(Image2.Height);
end;






//////////////////////////////////////////////////////////
//// FO1 DAT unpacker /////////////////////////
////////////////////////////////////////////////////////
function TForm_Main.ReadReverseDD(var f:file):longint;
var b:byte;
    res:longint;
    a:array [1..4] of byte absolute res;
begin
   res:=0;
   blockread(f,res,4);
   b:=a[1];a[1]:=a[4];a[4]:=b;
   b:=a[2];a[2]:=a[3];a[3]:=b;
   result:=res;
end;

function TForm_Main.ReadString(var f:file):string;
var b:byte;
    res:string[255];
begin
   result:='';
   blockread(f,b,1);
   blockread(f,res[1],b);
   SetLength (res, b);
   readstring:=res;
end;

function TForm_Main.TrailZeros(d:longint):string;
var i:byte;
begin
   result := IntToStr(d);
   for i:=length(Result)+1 to 10 do Result:=' '+Result;
end;

procedure TForm_Main.Unpack (len: integer);
var bytesToRead: word;
    c2: integer;
    bytesLeft: integer;
begin
   while len>0 do
   begin
      blockread (f, bytesToRead, 2);
      bytesToRead := (Lo(bytesToRead) shl 8) + Hi(bytesToRead);
      bytesLeft := bytesToRead and $7FFF;
      if bytesToRead and $8000<>0 then
      begin
         // copy bytesLeft into output stream
         blockread (f, buffer^, bytesLeft, c2);
      end else
      begin
         // unpack bytesLeft
         c2 := LzUnSquash (f, buffer^, bytesLeft);
      end;
      blockwrite (f1, buffer^, c2);
      dec (len, c2);
   end;
end;

procedure TForm_Main.MyCreateDir(s: string);
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
         //CreateDir(r);
      end;
   end;
end;

procedure TForm_Main.CopyPlik(var ffrom:file; sto:string; l, att:longint);
var r: integer;
begin
//   write(sto,' ');
   MyCreateDir(ExtractFileDir(sto));
   //ShowMessage(sto);
   assignFile(f1, sto);
   //assign (f1, sto);
   rewrite(f1,1);

   if att = $20 then
   begin
      //write (#9'plain file  ');
      while l<>0 do
      begin
         if l>bufSize then r:=bufSize else r:=l;
         blockread(ffrom, buffer^ ,r ,r);
         blockwrite(f1,buffer^,r);
         //write('.');
         l:=l-r;
      end;
   end
   else if att=$40 then
   begin
      //write (#9'packed file  ');
      unpack (l);
   end;

   //writeln;
   closeFile(f1);
end;


Procedure TForm_Main.WypakujFO1(dat_file:String; sciezka_plik:String);
var s, s1, s2: string[255];
    att, sp, fl: integer;
    oldPos: integer;

begin
  FileMode := 0;
  try
    s2 := sciezka_plik+#0;

    op:=2;


    assignFile(f,dat_file);
    reset(f,1);
    getmem (buffer, bufSize);

    DirCnt:=readreversedd(f);


    readreversedd(f);
    readreversedd(f);
    readreversedd(f);
    for i:=1 to DirCnt do
      dirs[i] := ReadString(f);

    for i:=1 to DirCnt do
    begin
      FileCnt:=readreversedd(f);
      readreversedd(f);
      readreversedd(f);
      readreversedd(f);
      for j:=1 to FileCnt do
      begin
        s:=readstring(f);
        att:=readreversedd(f);
        sp:=readreversedd(f); {startpos}
        fl:=readreversedd(f);
        readreversedd(f);

        if dirs[i]='.' then
          s1:=s
        else
          s1:=dirs[i]+'\'+s;

        s1 := s1+#0;
        if ((op=2) and (StrLIComp (@s1[1],@s2[1], Length(s2)-1)=0)) then
        begin
          delete (s1, length(s1), 1);
          oldPos := filePos(f);
          seek (f, sp);
          copyPlik (f, F2Folder+'\DATA\'+s1, fl, att);
          seek (f, oldPos);
        end;
      end;
    end;

    freemem (buffer, bufSize);
    closeFile(f);
  except
    on e:Exception do
    begin
      //writeln;
      //writeln ('Error: ', E.Message);
    end;
  end;
  FileMode:=2;
end;




procedure TForm_Main.ExtractFRMfiles1Click(Sender: TObject);
var iter:Integer;
begin
// wypakuj FO1/2 FRM-y
  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Stage 1 of 2: Extracting inventory FRMs...';
  StatusBar1.Update;
  Progressbar1.Max:=ComboBoxInventoryFrame.Items.Count-1;

  ListViewFiles.Items.BeginUpdate;
  Screen.Cursor:=crHourGlass;

  for iter:=0 to ComboBoxInventoryFrame.Items.Count-1 do
  begin
    Application.ProcessMessages;

    NazwaPlikuObrazka_FRM:=F2Folder+sciezka_do_plikow_art_inven_lst+ComboBoxInventoryFrame.items[iter];

    repeat
      if NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]=' ' then Delete(NazwaPlikuObrazka_FRM,length(NazwaPlikuObrazka_FRM),1);
    until NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]<>' ';


    if not FileExists(NazwaPlikuObrazka_FRM) then
    begin
      Wypakowuj_plik(F2Folder + '\data\','art\inven\',ComboBoxInventoryFrame.items[iter]);
    end;

    StatusBar1.Panels[1].Text:='extracting: ' + ComboBoxInventoryFrame.items[iter];
    Progressbar1.StepBy(1);
  end;

  StatusBar1.Update;


  Sleep(1500);

  ProgressBar1.Position:=0;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Stage 2 of 2: Extracting ground FRMs...';
  StatusBar1.Update;
  Screen.Cursor:=crDefault;




  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='';
  StatusBar1.Update;
  Progressbar1.Max:=ComboBoxGroundFrame.Items.Count-1;

  Screen.Cursor:=crHourGlass;

  for iter:=0 to ComboBoxGroundFrame.Items.Count-1 do
  begin
    Application.ProcessMessages;

    NazwaPlikuObrazka_FRM:=F2Folder+sciezka_do_plikow_art_items_lst+ComboBoxGroundFrame.items[iter];

    repeat
      if NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]=' ' then Delete(NazwaPlikuObrazka_FRM,length(NazwaPlikuObrazka_FRM),1);
    until NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]<>' ';


    if not FileExists(NazwaPlikuObrazka_FRM) then
    begin
      Wypakowuj_plik(F2Folder + '\data\','art\items\',ComboBoxGroundFrame.items[iter]);
    end;

    StatusBar1.Panels[1].Text:='extracting: ' + ComboBoxGroundFrame.items[iter];
    Progressbar1.StepBy(1);
  end;


  StatusBar1.Update;

  StatusBar1.Panels[1].Text:='Finished!';

  Sleep(1500);

  ProgressBar1.Position:=0;

  ListViewFiles.Items.EndUpdate;

  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='';
  StatusBar1.Update;
  Screen.Cursor:=crDefault;

end;




procedure TForm_Main.CheckBoxUse_ContMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;
  Save1.Enabled:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;


  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;
end;





procedure TForm_Main.Options1Click(Sender: TObject);
begin
  All_components_Not_Visible;

  FO1_active:=False;
	use_master_dat:=true;


  Form_Main.Show;
  Form_Main.Update;
  Sleep(100);
  StatusBar1.Panels[0].Text:=Application.Title+' '+wersja;
  StatusBar1.Panels[1].Text:='Reload F2wedit ...';
  StatusBar1.Update;

  If not Assigned(Form_Select_Dat_Files) then
  begin
    Form_Select_Dat_Files:=TForm_Select_Dat_Files.Create(nil);   // dlaczego 'nil' a nie 'Application' ?? Nie wiem ;) ale na razie dzia³a 08/12/2006
    Form_Select_Dat_Files.ShowModal;
  end
  else
  begin
    Form_Select_Dat_Files.Close;
    Form_Select_Dat_Files.Destroy;
    Form_Select_Dat_Files:=TForm_Select_Dat_Files.Create(nil);         // dlaczego 'nil' a nie 'Application' ?? Nie wiem ;) ale na razie dzia³a 08/12/2006
    Form_Select_Dat_Files.ShowModal;
  end;

  if Sprawdzanie_plikow = True then
  begin
    Form_Main.Caption:=Application.Title+' '+wersja+'     '+ F2Folder;
    CheckF2weditIni;
    UpdateList;
    Lista_ammo;{Wyszukuje pliki *.pro ammo i robi wpisy do *.ini}

    changed_background:=True;

    with Image5 do
    begin
      Picture := nil;
      Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
      Rct.Top := 0;
      Rct.Left := 0;
      Rct.Right := Width;
      Rct.Bottom := Height;
      Canvas.FillRect(Rct);
      Canvas.Rectangle(0, 0, 215, 147);
    end;

    with Image6 do
    begin
      Picture := nil;
      Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
      Rct.Top := 0;
      Rct.Left := 0;
      Rct.Right := Width;
      Rct.Bottom := Height;
      Canvas.FillRect(Rct);
      Canvas.Rectangle(0, 0, 215, 147);
    end;

    All_components_Visible;
  end;
end;




procedure TForm_Main.EditorKeyPress(Sender: TObject; var Key: Char);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;
  Save1.Enabled:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;

  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;
end;


procedure TForm_Main.EditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;

  BitBtnSave.Visible:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;

  Save1.Enabled:=True;
  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;
end;


procedure TForm_Main.UstawAtrybutPliku(nazwa_pliku:String; atrybut:Integer);
var fileDate : Integer;
begin
  fileDate := FileAge(nazwa_pliku);
  FileSetAttr(nazwa_pliku, atrybut);
  FileSetDate(nazwa_pliku, fileDate);
end;


procedure TForm_Main.CheckBox_1HandMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;
  Save1.Enabled:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;


  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;
end;








procedure TForm_Main.CheckBox_1HandClick(Sender: TObject);
var FLAG_hex_string_tym:String[6];

begin
  if CheckBox_1Hand.Checked=True then CheckBox_2Hand.Checked:=False;
  if CheckBox_1Hand.Checked=False then CheckBox_2Hand.Checked:=True;

  //FLAG_dec:=CzytajWartosc(ActualFile,$18,3);
  //FLAG_hex_string_tym:=IntToHex(FLAG_dec,6);

  //if (CheckBox_1Hand.Checked=True) and (CheckBox_2Hand.Checked=False) and (CheckBox_BigGun.Checked=False) then FLAG_hex_string_tym[6]:='0';
  //if (CheckBox_1Hand.Checked=True) and (CheckBox_2Hand.Checked=False) and (CheckBox_BigGun.Checked=True) then FLAG_hex_string_tym[6]:='1';
  //if (CheckBox_1Hand.Checked=False) and (CheckBox_2Hand.Checked=True) and (CheckBox_BigGun.Checked=False) then FLAG_hex_string_tym[6]:='2';
  //if (CheckBox_1Hand.Checked=False) and (CheckBox_2Hand.Checked=True) and (CheckBox_BigGun.Checked=True) then FLAG_hex_string_tym[6]:='3';

  //Flag_hex_string:=Flag_hex_string_tym[1]+Flag_hex_string_tym[2]+Flag_hex_string_tym[3]+Flag_hex_string_tym[4]+Flag_hex_string_tym[5]+Flag_hex_string[6];
  //FLAG_dec:=StrToIntDef('$'+Flag_hex_string_tym,default);
  //ZapiszWartosc(ActualFile,$18,3,IntToStr(FLAG_dec));
end;

procedure TForm_Main.CheckBox_2HandClick(Sender: TObject);
var FLAG_hex_string_tym:String[6];
begin
  if CheckBox_2Hand.Checked=True then CheckBox_1Hand.Checked:=False;
  if CheckBox_2Hand.Checked=False then CheckBox_1Hand.Checked:=True;

  //FLAG_dec:=CzytajWartosc(ActualFile,$18,3);
  //FLAG_hex_string_tym:=IntToHex(FLAG_dec,6);

  //if (CheckBox_1Hand.Checked=True) and (CheckBox_2Hand.Checked=False) and (CheckBox_BigGun.Checked=False) then FLAG_hex_string_tym[6]:='0';
  //if (CheckBox_1Hand.Checked=True) and (CheckBox_2Hand.Checked=False) and (CheckBox_BigGun.Checked=True) then FLAG_hex_string_tym[6]:='1';
  //if (CheckBox_1Hand.Checked=False) and (CheckBox_2Hand.Checked=True) and (CheckBox_BigGun.Checked=False) then FLAG_hex_string_tym[6]:='2';
  //if (CheckBox_1Hand.Checked=False) and (CheckBox_2Hand.Checked=True) and (CheckBox_BigGun.Checked=True) then FLAG_hex_string_tym[6]:='3';

  //Flag_hex_string:=Flag_hex_string_tym[1]+Flag_hex_string_tym[2]+Flag_hex_string_tym[3]+Flag_hex_string_tym[4]+Flag_hex_string_tym[5]+Flag_hex_string[6];
  //FLAG_dec:=StrToIntDef('$'+Flag_hex_string_tym,default);
  //ZapiszWartosc(ActualFile,$18,3,IntToStr(FLAG_dec));
end;

procedure TForm_Main.CheckBox_BigGunClick(Sender: TObject);
var FLAG_hex_string_tym:String[6];
begin
  if CheckBox_2Hand.Checked=True then CheckBox_1Hand.Checked:=False;
  if CheckBox_2Hand.Checked=False then CheckBox_1Hand.Checked:=True;

  //FLAG_dec:=CzytajWartosc(ActualFile,$18,3);
  //FLAG_hex_string_tym:=IntToHex(FLAG_dec,6);

  //if (CheckBox_1Hand.Checked=True) and (CheckBox_2Hand.Checked=False) and (CheckBox_BigGun.Checked=False) then FLAG_hex_string_tym[6]:='0';
  //if (CheckBox_1Hand.Checked=True) and (CheckBox_2Hand.Checked=False) and (CheckBox_BigGun.Checked=True) then FLAG_hex_string_tym[6]:='1';
  //if (CheckBox_1Hand.Checked=False) and (CheckBox_2Hand.Checked=True) and (CheckBox_BigGun.Checked=False) then FLAG_hex_string_tym[6]:='2';
  //if (CheckBox_1Hand.Checked=False) and (CheckBox_2Hand.Checked=True) and (CheckBox_BigGun.Checked=True) then FLAG_hex_string_tym[6]:='3';

  //Flag_hex_string:=Flag_hex_string_tym[1]+Flag_hex_string_tym[2]+Flag_hex_string_tym[3]+Flag_hex_string_tym[4]+Flag_hex_string_tym[5]+Flag_hex_string[6];
  //FLAG_dec:=StrToIntDef('$'+Flag_hex_string_tym,default);
  //ZapiszWartosc(ActualFile,$18,3,IntToStr(FLAG_dec));
end;






Procedure TForm_Main.Zapisz_Weapon(ActualFile:String);
var zmienna1:Integer;

begin
  if (CheckBox_1Hand.Checked=True) and (CheckBox_2Hand.Checked=False) and (CheckBox_BigGun.Checked=False) then FLAG_hex_string[6]:='0';
  if (CheckBox_1Hand.Checked=True) and (CheckBox_2Hand.Checked=False) and (CheckBox_BigGun.Checked=True) then FLAG_hex_string[6]:='1';
  if (CheckBox_1Hand.Checked=False) and (CheckBox_2Hand.Checked=True) and (CheckBox_BigGun.Checked=False) then FLAG_hex_string[6]:='2';
  if (CheckBox_1Hand.Checked=False) and (CheckBox_2Hand.Checked=True) and (CheckBox_BigGun.Checked=True) then FLAG_hex_string[6]:='3';

  Flag_hex_string:=Flag_hex_string[1]+Flag_hex_string[2]+Flag_hex_string[3]+Flag_hex_string[4]+Flag_hex_string[5]+Flag_hex_string[6]+IntToStr(comboboxATmode2.ItemIndex)+IntToStr(comboboxATmode1.ItemIndex);
  FLAG_dec:=StrToIntDef('$'+Flag_hex_string,default);
  ZapiszWartosc(ActualFile,$18,4,IntToStr(FLAG_dec));


  ZapiszWartosc(ActualFile,$39,4,IntToStr(ComboBoxHoldFrame.ItemIndex));  //wg nowego

  ZapiszWartosc(ActualFile,$3D,4,EditMinDmg.Text);
  ZapiszWartosc(ActualFile,$41,4,EditMaxDmg.Text);

  ZapiszWartosc(ActualFile,$45,4,IntToStr(ComboBoxDmgType.ItemIndex));

  ZapiszWartosc(ActualFile,$49,4,EditRangeMode1.Text);
  ZapiszWartosc(ActualFile,$4D,4,EditRangeMode2.Text);

{  if ComboBoxFiringFrame.ItemIndex=0 then ZapiszWartosc(ActualFile,$51,4,IntToStr($FFFFFFFF))
  else
    ZapiszWartosc(ActualFile,$51,4,IntToStr($05000000+ComboBoxFiringFrame.ItemIndex));}

  if ComboBoxFiringFrame.ItemIndex=0 then
  begin
    ZapiszWartosc(ActualFile,$51,2,IntToStr($FFFF));
    ZapiszWartosc(ActualFile,$53,2,IntToStr($FFFF));
  end
  else
  begin
    ZapiszWartosc(ActualFile,$51,2,IntToStr($0500));
    ZapiszWartosc(ActualFile,$53,2,IntToStr(ComboBoxFiringFrame.ItemIndex));
  end;


  ZapiszWartosc(ActualFile,$55,4,EditMinStrenght.Text);

  ZapiszWartosc(ActualFile,$59,4,EditAPmode1.Text);
  ZapiszWartosc(ActualFile,$5D,4,EditAPmode2.Text);

//  ZapiszWartosc(ActualFile,$61,4,EditCriticalFail.Text);

{Crit Fail}
  begin
//    ZapiszWartosc(ActualFile,$65,2,IntToStr(0));
//    ZapiszWartosc(ActualFile,$67,2,IntToStr(ComboBox_Perk.ItemIndex));

    ZapiszWartosc(ActualFile,$61,4,IntToStr(ComboBox_CriticalFail.ItemIndex));
  end;
{Crit Fail}

{Perk}
  if FO1_active=False then
  begin
    if ComboBox_Perk.ItemIndex=119 then
    begin
      ZapiszWartosc(ActualFile,$65,2,IntToStr($FFFF));
      ZapiszWartosc(ActualFile,$67,2,IntToStr($FFFF));
    end
    else
    begin
      ZapiszWartosc(ActualFile,$65,2,IntToStr(0));
      ZapiszWartosc(ActualFile,$67,2,IntToStr(ComboBox_Perk.ItemIndex));
    end;
  end
  else
  begin
    if ComboBox_Perk.ItemIndex=64 then
    begin
      ZapiszWartosc(ActualFile,$65,2,IntToStr($FFFF));
      ZapiszWartosc(ActualFile,$67,2,IntToStr($FFFF));
    end
    else
    begin
      ZapiszWartosc(ActualFile,$65,2,IntToStr(0));
      ZapiszWartosc(ActualFile,$67,2,IntToStr(ComboBox_Perk.ItemIndex));
    end;
  end;
{end Perk}


  ZapiszWartosc(ActualFile,$69,4,EditBurstRound.Text);

  ZapiszWartosc(ActualFile,$6D,4,IntToStr(ComboBoxAmmoType.ItemIndex));

  program_INI := TINIFile.Create(ExtractFilePath(Application.ExeName) + f2wedit_ini);
  try
    zmienna1:=program_INI.ReadInteger('Ammo'+IntToStr(ComboBoxDefaultAmmo.ItemIndex),'ammo_id',14); //np. 14 - rakieta burz¹ca ale moze byc dowolny id_ammo
  finally
    program_INI.Free;
  end;



  ZapiszWartosc(ActualFile,$71,4,IntToStr(zmienna1));

  ZapiszWartosc(ActualFile,$75,4,EditAmmoCapacity.Text);

  if Combobox_FireSoundID.ItemIndex=0 then ZapiszWartosc(ActualFile,$79,1,IntToStr(ComboBox_FireSoundID.ItemIndex))
  else
    ZapiszWartosc(ActualFile,$79,1,IntToStr(ComboBox_FireSoundID.ItemIndex+32));
end;






procedure TForm_Main.CheckBox_2HandMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;
  Save1.Enabled:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;


  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;
end;

procedure TForm_Main.CheckBox_BigGunMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ListViewFiles.Enabled:=False;
  BitBtnSave.Enabled:=True;
  BitBtnSave.Visible:=True;
  Save1.Enabled:=True;

  BitBtnCancel.Enabled:=True;
  BitBtnCancel.Visible:=True;


  New1.Enabled:=False;
  Ustawienia1.Enabled:=False;
  Ustawienia2.Enabled:=False;
end;

end.


//*********************************************************************************************************
//************************ koniec programu ****************************************************************
//*********************************************************************************************************






// 04-05-2012 starsza wersja MSG2INI do wersji 1.4.5.20 wlacznie 
procedure TForm_Main.Msg2Ini(nazwa_msg,nazwa_ini:String);
var i:Integer;
    plikT1,plikT2:TextFile;
    linia:String;
begin
  AssignFile(plikT1,nazwa_msg);
  Reset(plikT1);

  AssignFile(plikT2,nazwa_ini);
  Rewrite(plikT2);
  Writeln(plikT2,'[Descriptions]');
  While not Eof(plikT1) do
  begin
{    repeat
      linia:='';
      Readln(plikT1,linia);
    until linia[1]<>'#';}
    Readln(plikT1,linia);
    if length(linia)>0 then
    if linia[1]='{' then
    begin
      Delete(linia,1,1); {kasuje z lini pierwszy znak = {                 }
      Delete(linia,length(linia),1); {kasuje z lini ostatni znak =}      {}
      for i:=1 to length(linia) do
      begin
        if linia[i]='}' then
        begin
          Delete(linia,i,4); {kasuje z lini ci¹g 4 nawiasów }{}{          }
          insert('=',linia,i);
          break;
        end;
      end;
      Writeln(plikT2,linia);
    end
    else //jesli linia zaczyna sie od znaku # to
    begin
      for i:=1 to length(linia) do Delete(linia,1,length(linia)); {kasuje cala linie}
    end;
  end;
  CloseFile(plikT1);
  CloseFile(plikT2);
end;

