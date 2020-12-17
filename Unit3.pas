unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, ComCtrls, ComObj;

type
  TLekcia1 = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RichEdit1: TRichEdit;
    Label2: TLabel;
    Button1: TButton;
    TrackBar1: TTrackBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lekcia1: TLekcia1;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TLekcia1.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
Lekcia1.close;
end;

procedure TLekcia1.BitBtn2Click(Sender: TObject);
begin
Lekcia1.close;
end;

procedure TLekcia1.Button1Click(Sender: TObject);
begin

RichEdit1.Print('doc');

end;

procedure TLekcia1.FormCreate(Sender: TObject);
begin
 RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'Лекции фаилы\Лекция 1-2 Программы и ПО.txt');
end;

procedure TLekcia1.TrackBar1Change(Sender: TObject);
begin
Richedit1.font.Size:=trackbar1.position;
end;

end.
