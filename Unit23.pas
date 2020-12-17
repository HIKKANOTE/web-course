unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, ComObj, ComCtrls;

type
  TLekcia21 = class(TForm)
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
  Lekcia21: TLekcia21;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TLekcia21.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia21.Hide;
end;

procedure TLekcia21.BitBtn2Click(Sender: TObject);
begin
Form1.Show;
Lekcia21.Hide;
end;

procedure TLekcia21.FormCreate(Sender: TObject);
begin
RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'������ �����\����� ������������.txt');
end;

end.
