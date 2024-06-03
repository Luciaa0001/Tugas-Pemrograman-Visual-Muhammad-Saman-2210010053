object Form1: TForm1
  Left = 215
  Top = 166
  Width = 364
  Height = 236
  Caption = 'MAIN MENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 80
    Top = 24
    object mniFILE1: TMenuItem
      Caption = 'FILE'
      object mniLOGIN1: TMenuItem
        Caption = 'LOGIN'
        OnClick = mniLOGIN1Click
      end
      object mniLOGOUT1: TMenuItem
        Caption = 'LOGOUT'
        OnClick = mniLOGOUT1Click
      end
    end
    object mniDATAMASTER1: TMenuItem
      Caption = 'DATA MASTER'
      object mniKATEGORI1: TMenuItem
        Caption = 'KATEGORI'
        OnClick = mniKATEGORI1Click
      end
      object mniSATUAN1: TMenuItem
        Caption = 'SATUAN'
        OnClick = mniSATUAN1Click
      end
      object mniSUPPLIER1: TMenuItem
        Caption = 'SUPPLIER'
      end
      object mniKONSUMER1: TMenuItem
        Caption = 'KONSUMER'
      end
    end
    object mniRANSAKSI1: TMenuItem
      Caption = 'TRANSAKSI'
      object mniNJUALAN1: TMenuItem
        Caption = 'PENJUALAN'
      end
      object mniPEMBELIAN1: TMenuItem
        Caption = 'PEMBELIAN'
      end
    end
    object mniLAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      object mniLAPORANPENJUALAN1: TMenuItem
        Caption = 'LAPORAN PENJUALAN'
      end
      object mniLAPORANSTOKBARANG1: TMenuItem
        Caption = 'LAPORAN STOK BARANG'
      end
      object mniLAPORANBARANG1: TMenuItem
        Caption = 'LAPORAN BARANG'
      end
    end
  end
end
