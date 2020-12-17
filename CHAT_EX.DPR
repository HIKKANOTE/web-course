program chat_ex;

uses
  Forms,
  MAIN in 'MAIN.PAS' {Form32},
  conn in 'conn.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm32, Form32);
  Application.Run;
end.
