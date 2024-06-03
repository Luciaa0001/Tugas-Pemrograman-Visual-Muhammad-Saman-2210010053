object Form2: TForm2
  Left = 192
  Top = 125
  Width = 234
  Height = 206
  Caption = 'LOGIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 80
    Top = 24
    Width = 51
    Height = 18
    Caption = 'LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 32
    Top = 56
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 56
    Top = 96
    Width = 105
    Height = 25
    Caption = 'MASUK'
    TabOrder = 1
    OnClick = btn1Click
  end
end
