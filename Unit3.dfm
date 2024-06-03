object Form3: TForm3
  Left = 408
  Top = 195
  Width = 396
  Height = 335
  Caption = 'KATEGORI'
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
    Left = 24
    Top = 16
    Width = 39
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 24
    Top = 232
    Width = 98
    Height = 13
    Caption = 'MASUKKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 80
    Top = 16
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 80
    Top = 56
    Width = 67
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 56
    Width = 73
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 280
    Top = 56
    Width = 65
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 96
    Width = 321
    Height = 120
    DataSource = DataModule5.ds1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 136
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 272
    Top = 232
    Width = 73
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
    OnClick = btn4Click
  end
end
