unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    mniFILE1: TMenuItem;
    mniLOGIN1: TMenuItem;
    mniLOGOUT1: TMenuItem;
    mniDATAMASTER1: TMenuItem;
    mniKATEGORI1: TMenuItem;
    mniSATUAN1: TMenuItem;
    mniSUPPLIER1: TMenuItem;
    mniKONSUMER1: TMenuItem;
    mniRANSAKSI1: TMenuItem;
    mniNJUALAN1: TMenuItem;
    mniPEMBELIAN1: TMenuItem;
    mniLAPORAN1: TMenuItem;
    mniLAPORANPENJUALAN1: TMenuItem;
    mniLAPORANSTOKBARANG1: TMenuItem;
    mniLAPORANBARANG1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure mniLOGIN1Click(Sender: TObject);
    procedure mniLOGOUT1Click(Sender: TObject);
    procedure mniKATEGORI1Click(Sender: TObject);
    procedure mniSATUAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  mm1.items[1].Visible:=false;
  mm1.Items[2].Visible:=false;
  mm1.Items[3].Visible:=false;
end;

procedure TForm1.mniLOGIN1Click(Sender: TObject);
begin
  form2.show;
end;

procedure TForm1.mniLOGOUT1Click(Sender: TObject);
begin
  mm1.items[1].Visible:=false;
  mm1.Items[2].Visible:=false;
  mm1.Items[3].Visible:=false;
end;

procedure TForm1.mniKATEGORI1Click(Sender: TObject);
begin
  form3.show;
end;

procedure TForm1.mniSATUAN1Click(Sender: TObject);
begin
form4.show;
end;

end.
