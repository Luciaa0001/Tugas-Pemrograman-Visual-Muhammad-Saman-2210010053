object Form4: TForm4
  Left = 771
  Top = 235
  Width = 434
  Height = 380
  Caption = 'SATUAN'
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
    Top = 24
    Width = 31
    Height = 13
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 24
    Top = 64
    Width = 60
    Height = 13
    Caption = 'DESKRIPSI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 24
    Top = 296
    Width = 28
    Height = 13
    Caption = 'CARI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 0
  end
  object btn2: TButton
    Left = 120
    Top = 104
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 216
    Top = 104
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 312
    Top = 104
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn4Click
  end
  object edt1: TEdit
    Left = 96
    Top = 24
    Width = 289
    Height = 21
    TabOrder = 4
  end
  object edt2: TEdit
    Left = 96
    Top = 64
    Width = 289
    Height = 21
    TabOrder = 5
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 152
    Width = 361
    Height = 120
    DataSource = DataModule5.ds2
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 72
    Top = 296
    Width = 201
    Height = 21
    TabOrder = 7
  end
  object btn5: TButton
    Left = 296
    Top = 296
    Width = 89
    Height = 25
    Caption = 'CARI'
    TabOrder = 8
    OnClick = btn5Click
  end
end
