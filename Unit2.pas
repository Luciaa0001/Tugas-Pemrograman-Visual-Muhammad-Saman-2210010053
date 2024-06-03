unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
  if (edt1.Text = 'admin') or (edt1.Text = 'ADMIN') then
  begin
    form1.mm1.items[1].visible:=true;
    form1.mm1.items[2].visible:=false;
    form1.mm1.items[3].visible:=false;
    ShowMessage('Login Successful as Admin');
    close;
  end else if (edt1.Text = 'kasir') or (edt1.text='KASIR') then
  begin
    form1.mm1.items[1].visible:=false;
    form1.mm1.items[2].visible:=true;
    form1.mm1.items[3].visible:=false;
    ShowMessage('Login Successful as Kasir');
    close;
  end else if (edt1.Text = 'pemilik') or (edt1.text='PEMILIK') then
  begin
    form1.mm1.items[1].visible:=false;
    form1.mm1.items[2].visible:=false;
    form1.mm1.items[3].visible:=true;
    ShowMessage('Login Successful as Pemilik');
    close;
  end else if edt1.Text = '' then
  begin
    ShowMessage('Login failed, please fill the text');
  end else
  begin
    ShowMessage('Login Failed, please fill according to your position');
  end;
end;

end.
