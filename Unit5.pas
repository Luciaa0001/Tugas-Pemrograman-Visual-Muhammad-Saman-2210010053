unit Unit5;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule5 = class(TDataModule)
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    zqry2: TZQuery;
    ds2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule5: TDataModule5;

implementation

{$R *.dfm}

end.
