program Project1;

uses
  Forms,
  Unit2 in 'Unit2.pas' {Form2},
  Unit25 in 'Unit25.pas' {Prezentacia},
  Unit26 in 'Unit26.pas' {Praktika},
  MAIN in 'MAIN.PAS' {Form32},
  SRVMAIN in 'SRVMAIN.PAS' {Form29},
  Unit1 in 'Unit1.pas' {Form1},
  CONN in 'CONN.PAS' {Form33},
  Test1 in 'Тесты\Test1.pas' {TestForm1},
  Test3 in 'Тесты\Test3.pas' {TestForm3},
  Unit30 in 'Unit30.pas' {Form30},
  Unit31 in 'Unit31.pas' {Form31},
  Unit34 in 'Unit34.pas' {Form34};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TPrezentacia, Prezentacia);
  Application.CreateForm(TPraktika, Praktika);
  Application.CreateForm(TForm32, Form32);
  Application.CreateForm(TForm29, Form29);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm33, Form33);
  Application.CreateForm(TTestForm1, TestForm1);
  Application.CreateForm(TTestForm3, TestForm3);
  Application.CreateForm(TForm30, Form30);
  Application.CreateForm(TForm31, Form31);
  Application.CreateForm(TForm34, Form34);
  Application.Run;
end.
