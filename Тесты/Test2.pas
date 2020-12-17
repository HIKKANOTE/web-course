unit Test2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellApi, StdCtrls;

type
  TTestForm2 = class(TForm)
    Label1: TLabel;
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestForm2: TTestForm2;

implementation

{$R *.dfm}

procedure TTestForm2.Label1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', PChar(extractfilepath(paramstr(1))+'Help\'+'Человек и Информация.htm'), '', '', SW_SHOWNORMAL);
end;

end.
