object Form_select_dat_files: TForm_select_dat_files
  Left = 587
  Top = 322
  Width = 659
  Height = 447
  Caption = 'Setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 337
    Height = 13
    Caption = 'PLEASE PAY ATTENTION WHICH FALLOUT GAME YOU SELECT !!!'
  end
  object Label2: TLabel
    Left = 16
    Top = 128
    Width = 609
    Height = 13
    AutoSize = False
    Caption = 'ATTENTION! *.DAT FILES MUST BE SUITABLE FOR VERSION GAME !!!'
  end
  object Edit1: TEdit
    Left = 112
    Top = 184
    Width = 513
    Height = 21
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 184
    Width = 91
    Height = 25
    Caption = 'master.dat...'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 16
    Top = 224
    Width = 91
    Height = 25
    Caption = 'critter.dat...'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 16
    Top = 264
    Width = 91
    Height = 25
    Caption = 'patch file *.dat...'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object Edit2: TEdit
    Left = 112
    Top = 224
    Width = 513
    Height = 21
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 112
    Top = 264
    Width = 513
    Height = 21
    TabOrder = 9
  end
  object Button1: TButton
    Left = 48
    Top = 360
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 520
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 0
    OnClick = Button2Click
  end
  object BitBtn4: TBitBtn
    Left = 16
    Top = 40
    Width = 91
    Height = 25
    Caption = '[Game]\Data...'
    TabOrder = 1
    OnClick = BitBtn4Click
  end
  object Edit4: TEdit
    Left = 112
    Top = 40
    Width = 513
    Height = 21
    TabOrder = 6
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 312
    Width = 201
    Height = 17
    Caption = 'Set READ_ONLY attrib for  *.pro files'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 16
    Top = 152
    Width = 609
    Height = 17
    Caption = 'Select *.DAT files from game directory.'
    Checked = True
    State = cbChecked
    TabOrder = 11
    OnClick = CheckBox2Click
  end
  object CheckBox3: TCheckBox
    Left = 16
    Top = 80
    Width = 225
    Height = 17
    Caption = 'Set this for FO2 - German version'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
end
