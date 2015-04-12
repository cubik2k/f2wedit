object Form1_frm_viewer: TForm1_frm_viewer
  Left = 360
  Top = 221
  Width = 241
  Height = 270
  Caption = 'FRM viewer'
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
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 215
    Height = 147
  end
  object Label1: TLabel
    Left = 8
    Top = 200
    Width = 39
    Height = 13
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 77
    Top = 168
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
end
