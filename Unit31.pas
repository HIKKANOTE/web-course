unit Unit31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm31 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form31: TForm31;

implementation

uses SRVMAIN;

{$R *.dfm}

procedure TForm31.BitBtn1Click(Sender: TObject);
begin
if (edit1.Text = '123') then Form29.show;
begin
  if (edit1.Text <> '123') then showmessage('Пароль не верный') else form31.hide;
end;
end;
procedure TForm31.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
