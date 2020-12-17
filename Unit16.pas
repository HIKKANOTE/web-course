unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, ComObj, ComCtrls;

type
  TLekcia14 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    RichEdit1: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lekcia14: TLekcia14;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TLekcia14.BitBtn2Click(Sender: TObject);
begin
Form1.Show;
Lekcia14.Hide;
end;

procedure TLekcia14.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia14.Hide;
end;

procedure TLekcia14.FormCreate(Sender: TObject);
begin
RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Лекции фаилы\Лекция Команды логических операций.txt');
end;

end.
