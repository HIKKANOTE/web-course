unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, ComObj, ComCtrls;

type
  TLekcia4 = class(TForm)
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
  Lekcia4: TLekcia4;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TLekcia4.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia4.Hide;
end;

procedure TLekcia4.BitBtn2Click(Sender: TObject);
begin
Form1.Show;
Lekcia4.Hide;
end;

procedure TLekcia4.FormCreate(Sender: TObject);
begin
RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'������ �����\������ 4 �������������� �������.txt');
end;


end.
