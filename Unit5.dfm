object DataModule5: TDataModule5
  OldCreateOrder = False
  Left = 280
  Top = 213
  Height = 177
  Width = 185
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'database_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\ADA PROJECT DELPHI 7\libmysql.dll'
    Left = 16
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*from kategori')
    Params = <>
    Left = 64
    Top = 16
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 112
    Top = 16
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT*FROM SATUAN')
    Params = <>
    Left = 64
    Top = 72
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 112
    Top = 72
  end
end
