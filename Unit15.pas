unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, ComObj, ComCtrls;

type
  TLekcia13 = class(TForm)
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
  Lekcia13: TLekcia13;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TLekcia13.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia13.Hide;
end;

procedure TLekcia13.BitBtn2Click(Sender: TObject);
begin
Form1.Show;
Lekcia13.Hide;
end;

procedure TLekcia13.FormCreate(Sender: TObject);
begin
RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Лекции фаилы\Лекция Библиотека общих функций.txt');
end;

end.
