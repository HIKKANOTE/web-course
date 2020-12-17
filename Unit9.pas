unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, jpeg, ComObj, ComCtrls;

type
  TLekcia7 = class(TForm)
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
  Lekcia7: TLekcia7;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TLekcia7.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia7.Hide;
end;

procedure TLekcia7.BitBtn2Click(Sender: TObject);
begin
Form1.Show;
Lekcia7.Hide;
end;

procedure TLekcia7.FormCreate(Sender: TObject);
begin
RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Лекции фаилы\Лекция 6_Тестирование и отладка ПС.txt');
end;

end.
