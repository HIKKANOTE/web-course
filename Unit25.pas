unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, ShellAPI;

type
  TPrezentacia = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    Label1: TLabel;
    BitBtn23: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Prezentacia: TPrezentacia;

implementation

uses Unit1;

{$R *.dfm}

procedure TPrezentacia.BitBtn1Click(Sender: TObject);

 var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Алгоритмы и способы их описания.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;


procedure TPrezentacia.BitBtn23Click(Sender: TObject);
begin
Prezentacia.Hide;
end;

procedure TPrezentacia.BitBtn2Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Алфавит Паскаль.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;



procedure TPrezentacia.BitBtn3Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Ветвления в Паскале.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;
procedure TPrezentacia.BitBtn4Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Генератор случайных чисел.pptx'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn5Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Графические возможности Паскаль ABC.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn6Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Графические опре!аторы Паскаль задачи.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn8Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\классификация языков программирования.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn9Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\классификация ЯП.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn10Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Логические величины.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn7Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\двумерный массив.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn12Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Операторы цы!кла.pptx'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn13Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\операции mod div.pptx'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn14Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Операции функции выражения.pptx'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn11Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Основные этапы решения задач на ЭВМ.pptx'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn16Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Паскаль АВС.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn17Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Презентация Логические операции в Паскале .pptx'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn18Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Процедуры и функции.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn19Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Структо!рное понятие.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn20Click(Sender: TObject);
 var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Циклы в алгоритмах.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn21Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Этапы решения задач на компьютере.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn22Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Язык программирования Паскаль.ppt'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

procedure TPrezentacia.BitBtn15Click(Sender: TObject);
var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Презентации\Основные этапы решения задач на ЭВМ.pptx'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
    //CloseHandle(hProcess); //Не уверен...
  finally
    WindowState := wsNormal;
  end;
end;

end.
