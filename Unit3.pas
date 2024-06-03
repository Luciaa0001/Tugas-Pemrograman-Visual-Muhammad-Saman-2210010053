unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    edt2: TEdit;
    btn4: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;
  SearchText: string;

implementation

uses
  Unit5;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
if edt1.Text = '' then
  begin
    ShowMessage('Masukkan teks');
    Exit;
  end;

DataModule5.zqry1.SQL.Clear;
DataModule5.zqry1.SQL.Add('INSERT INTO kategori VALUES (null, ''' + edt1.Text + ''')');
DataModule5.zqry1.ExecSQL;

DataModule5.zqry1.SQL.Clear;
DataModule5.zqry1.SQL.Add('SELECT * FROM kategori');
DataModule5.zqry1.Open;
ShowMessage('Data berhasil disimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule5.zqry1.SQL.Clear;
DataModule5.zqry1.SQL.Add('UPDATE kategori SET name = ''' + edt1.Text + ''' WHERE Id = ''' + a + '''');
DataModule5.zqry1.ExecSQL;

DataModule5.zqry1.SQL.Clear;
DataModule5.zqry1.SQL.Add('SELECT * FROM kategori');
DataModule5.zqry1.Open;
ShowMessage('Data berhasil diupdate');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule5.zqry1.SQL.Clear;
DataModule5.zqry1.SQL.Add('Delete from kategori where id = '''+a+'''');
DataModule5.zqry1.ExecSQL;

DataModule5.zqry1.SQL.Clear;
DataModule5.zqry1.SQL.Add('SELECT * FROM kategori');
DataModule5.zqry1.Open;
ShowMessage('Data berhasil dihapus');
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  //declare SearchText: string; di bagian VAR lalu copas kodingnya
  //perhatikan nama tabel dan kolomnya yang ingin di cari, lihati comment selanjutnya
  SearchText := Trim(edt2.Text);

  if SearchText = '' then
  begin
    ShowMessage('Masukkan teks untuk melakukan pencarian.');
    Exit;
  end;

  DataModule5.zqry1.Close;
  DataModule5.zqry1.SQL.Clear;
  //ingat ganti SELECT*FROM namatabel WHERE namakolom
  DataModule5.zqry1.SQL.Add('SELECT * FROM kategori WHERE name LIKE :SearchText');
  DataModule5.zqry1.ParamByName('SearchText').AsString := '%' + SearchText + '%';
  DataModule5.zqry1.Open;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.text:=DataModule5.zqry1.Fields[1].AsString;
  a:= DataModule5.zqry1.Fields[0].AsString;
end;

end.
