program srv_ex;

uses
  Forms,
  srvmain in 'SRVMAIN.PAS' {Form29};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm29, Form29);
  Application.Run;
end.
