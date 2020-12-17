unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, ComObj, ComCtrls;

type
  TLekcia11 = class(TForm)
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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lekcia11: TLekcia11;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TLekcia11.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia11.Hide;
end;

procedure TLekcia11.BitBtn2Click(Sender: TObject);
begin
Form1.Show;
Lekcia11.Hide;
end;

procedure TLekcia11.Button1Click(Sender: TObject);
begin
 RichEdit1.Print('doc');
end;

procedure TLekcia11.FormCreate(Sender: TObject);
begin
RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Лекции фаилы\Лекция 10_Компьютерная поддержка разработки и сопровождения ПС.txt');
end;

end.
