unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, ComObj, ComCtrls;

type
  TLekcia8 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    RichEdit1: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  Lekcia8: TLekcia8;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TLekcia8.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia8.Hide;
end;

procedure TLekcia8.BitBtn2Click(Sender: TObject);
begin
Form1.Show;
Lekcia8.Hide;
end;

procedure TLekcia8.FormCreate(Sender: TObject);
begin
RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Лекции фаилы\Лекция 7 Операторы работы с экраном.txt');
end;

end.
