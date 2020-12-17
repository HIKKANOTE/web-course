unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, ComObj, ComCtrls;

type
  TLekcia22 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    RichEdit1: TRichEdit;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lekcia22: TLekcia22;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TLekcia22.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia22.Hide;
end;

procedure TLekcia22.BitBtn2Click(Sender: TObject);
begin
Form1.Show;
Lekcia22.Hide;
end;

procedure TLekcia22.FormCreate(Sender: TObject);
begin
RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'������ �����\�������� Emu8086.txt');
end;

end.
