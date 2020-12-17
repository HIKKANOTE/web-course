unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, ComObj, ComCtrls;

type
  TLekcia10 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    RichEdit1: TRichEdit;
    Label2: TLabel;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lekcia10: TLekcia10;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TLekcia10.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia10.Hide;
end;

procedure TLekcia10.BitBtn2Click(Sender: TObject);
begin
Form1.Show;
Lekcia10.Hide;
end;

procedure TLekcia10.Button1Click(Sender: TObject);
begin
RichEdit1.Print('doc');
end;

procedure TLekcia10.FormCreate(Sender: TObject);
begin
RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Ëåêöèè ôàèëû\Ëåêöèÿ 9_ÎÚÅÊÒÍÛÉ ÏÎÄÕÎÄ Ê ĞÀÇĞÀÁÎÒÊÅ.txt');
end;

end.
