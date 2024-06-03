unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    btn5: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a: String;
  SearchText: String;

implementation

uses
  Unit5;

{$R *.dfm}

procedure TForm4.btn2Click(Sender: TObject);
begin
if (edt1.Text = '') and (edt2.Text ='') then
  begin
    ShowMessage('Masukkan teks');
    Exit;
  end;

DataModule5.zqry1.SQL.Clear;
DataModule5.zqry1.SQL.Add('INSERT INTO satuan (name, deskripsi) VALUES (:name, :deskripsi)');
DataModule5.zqry1.ParamByName('name').AsString := edt1.Text;
DataModule5.zqry1.ParamByName('deskripsi').AsString := edt2.Text;
DataModule5.zqry1.ExecSQL;

DataModule5.zqry1.SQL.Clear;
DataModule5.zqry1.SQL.Add('SELECT * FROM satuan');
DataModule5.zqry1.Open;
ShowMessage('Data berhasil disimpan');
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  DataModule5.zqry1.SQL.Clear;
  DataModule5.zqry1.SQL.Add('UPDATE satuan SET name = :nama, deskripsi = :deskripsi WHERE Id = :id');
  DataModule5.zqry1.ParamByName('nama').AsString := edt1.Text;
  DataModule5.zqry1.ParamByName('deskripsi').AsString := edt2.Text;
  DataModule5.zqry1.ParamByName('id').AsString := a; // Assuming 'a' is the ID value
  DataModule5.zqry1.ExecSQL;

  // Clear the SQL statement before executing the SELECT query
  DataModule5.zqry1.SQL.Clear;
  DataModule5.zqry1.SQL.Add('SELECT * FROM satuan');
  DataModule5.zqry1.Open;
  ShowMessage('Data berhasil diupdate');
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
  edt1.text:= DataModule5.zqry2.Fields[1].AsString;
  a:= DataModule5.zqry2.Fields[0].AsString;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
DataModule5.zqry1.SQL.Clear;
  DataModule5.zqry1.SQL.Add('DELETE FROM satuan WHERE id = :id');
  DataModule5.zqry1.ParamByName('id').AsString := a; // Assuming 'a' is the ID value
  DataModule5.zqry1.ExecSQL;

  // Clear the SQL statement before executing the SELECT query
  DataModule5.zqry1.SQL.Clear;
  DataModule5.zqry1.SQL.Add('SELECT * FROM kategori');
  DataModule5.zqry1.Open;
  ShowMessage('Data berhasil dihapus');
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
  // Declare SearchText: string; in the VAR section of your code.

  SearchText := Trim(edt3.Text);

  if SearchText = '' then
  begin
    ShowMessage('Masukkan teks untuk melakukan pencarian.');
    Exit;
  end;

  DataModule5.zqry2.Close;
  DataModule5.zqry2.SQL.Clear;
  DataModule5.zqry2.SQL.Add('SELECT * FROM satuan WHERE name LIKE :SearchText');
  DataModule5.zqry2.ParamByName('SearchText').AsString := '%' + SearchText + '%';
  DataModule5.zqry2.Open;

end;

end.
 