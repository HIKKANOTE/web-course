unit Unit30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, shellapi, Buttons;

type
  TForm30 = class(TForm)
    Button1: TButton;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

procedure TForm30.BitBtn1Click(Sender: TObject);

 var
  hProcess: THandle;
begin
  WindowState := wsMinimized;
  try
    hProcess := ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'Видеоуроки\видео.avi'), nil, nil, SW_SHOWMAXIMIZED);
    if hProcess < 32 then
      raiseLastOSError;
    WaitForSingleObject(hProcess, INFINITE);
  finally
    WindowState := wsNormal;
  end;
end;

procedure TForm30.Button1Click(Sender: TObject);
begin
close;
end;
end.
