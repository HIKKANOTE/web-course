unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, ShellAPI;

type
  TPraktika = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
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
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Praktika: TPraktika;

implementation

uses Unit1;

{$R *.dfm}

procedure TPraktika.BitBtn1Click(Sender: TObject);
begin

  Praktika.Hide;

end;

procedure TPraktika.Button1Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\2.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button2Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\3.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button3Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\4.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button4Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\5.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button5Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\6.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button6Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\7.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button7Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\8.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button8Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\9.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button9Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\10.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button10Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\11.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button11Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\12.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button12Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\13.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button13Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\14.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button14Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\15.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button15Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\16.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button16Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\17.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button17Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\18.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button18Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\19.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button19Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\20.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button20Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\21.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button21Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\22.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button22Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\23.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button23Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\24.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button24Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\25.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button25Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\26.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button26Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\27.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button27Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\28.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button28Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\29.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button29Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\30.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button30Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\31.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button31Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\32.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button32Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\33.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button33Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\34.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button34Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\35.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button35Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\36.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button36Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\37.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button37Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\38.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button38Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\39.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button39Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\40.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button40Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\41.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button41Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\42.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button42Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\43.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button43Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\44.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button44Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\45.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button45Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\46.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button46Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\47.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button47Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\48.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button48Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\59.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button49Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\50.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button50Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\массивы.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button51Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\Приложение.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button52Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\Команды графического модуля.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;


procedure TPraktika.Button53Click(Sender: TObject);
var   hProcess: THandle;
begin
     WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Практические\приложение  обработки матриц.doc'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
end;
end;

end.
