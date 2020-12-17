unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, sSkinManager, acPNG, Buttons, ShellAPI;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label2: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    sSkinManager1: TsSkinManager;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit25, Unit26, Unit27, Unit28, SRVMAIN, MAIN, Test1, Unit30,
  Unit31;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
 var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Инструкция\instruction.htm'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
  finally
    WindowState := wsNormal;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.close;
Form2.Show;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Prezentacia.Show;
Form1.Hide;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 Praktika.Show;
Form1.Hide;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Form32.Show;
Form1.Hide;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Form31.Show;
Form1.Hide;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
TestForm1.Show;
Form1.Hide;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Form30.Show;
Form1.Hide;
end;



procedure TForm1.FormCreate(Sender: TObject);

begin

form1.sskinmanager1.skinname:='Deep (internal)';
Form1.BorderStyle := bsDialog;
Form1.BorderStyle := bsSingle
end;


procedure Tform1.FormKeyDown(Sender: TObject;
var Key: Word;

  Shift: TShiftState);
  var hProcess: THandle;
begin
 if (Key=VK_F1)then
 WindowState := wsMinimized;
  try
 ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Инструкция\instruction.htm'), nil, nil, SW_SHOW);
      if hProcess < 32 then
      raiseLastOSError;
        WaitForSingleObject(hProcess, INFINITE);
  finally
      WindowState := wsNormal;
  end;

 end;


end.
