unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, shellapi, acPNG;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    BitBtn6: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11,
  Unit12, Unit13, Unit14, Unit15, Unit16, Unit17, Unit18, Unit19, Unit20,
  Unit21, Unit22, Unit23, Unit24, Unit1, Unit34;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Form2.close;
Form34.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Hide;
Lekcia2.Show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form2.Hide;
Lekcia3.Show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form2.Hide;
Lekcia4.Show;
end;


procedure TForm2.Button5Click(Sender: TObject);
 var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Дистрибутив\WYSIWYG_Web_Builder_9.2.0_Portable_Rus\WYSIWYGWebBuilderPortable.exe'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
  finally
    WindowState := wsNormal;





end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
Form2.Hide;
Lekcia6.Show;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
Form2.Hide;
Lekcia7.Show;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
Form2.Hide;
Lekcia8.Show;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
Form2.Hide;
Lekcia9.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Form1.Hide;
Form2.BorderStyle := bsDialog;
Form2.BorderStyle := bsSingle
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
close;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
Form34.show;
Form2.Hide;
end;

procedure TForm2.BitBtn6Click(Sender: TObject);
 var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Дистрибутив\WYSIWYG_Web_Builder_9.2.0_Portable_Rus\WYSIWYGWebBuilderPortable.exe'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
  finally
    WindowState := wsNormal;
  end;




end;

procedure TForm2.Button10Click(Sender: TObject);
begin
Form2.Hide;
Lekcia10.Show;
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
Form2.Hide;
Lekcia11.Show;
end;

procedure TForm2.Button12Click(Sender: TObject);
begin
Form2.Hide;
Lekcia12.Show;
end;

procedure TForm2.Button13Click(Sender: TObject);
begin
Form2.Hide;
Lekcia13.Show;
end;

procedure TForm2.Button14Click(Sender: TObject);
begin
Form2.Hide;
Lekcia14.Show;
end;

procedure TForm2.Button15Click(Sender: TObject);
begin
Form2.Hide;
Lekcia15.Show;
end;

procedure TForm2.Button16Click(Sender: TObject);
begin
Form2.Hide;
Lekcia16.Show;
end;

procedure TForm2.Button17Click(Sender: TObject);
begin
Form2.Hide;
Lekcia17.Show;
end;

procedure TForm2.Button18Click(Sender: TObject);
begin
Form2.Hide;
Lekcia18.Show;
end;

procedure TForm2.Button19Click(Sender: TObject);
begin
Form2.Hide;
Lekcia19.Show;
end;

procedure TForm2.Button20Click(Sender: TObject);
begin
Form2.Hide;
Lekcia20.Show;
end;

procedure TForm2.Button21Click(Sender: TObject);
begin
Form2.close;
Lekcia21.Show;
end;

procedure TForm2.Button22Click(Sender: TObject);
begin
Form2.close;
Lekcia22.Show;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
close;
end;

end.
 