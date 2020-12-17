program Test;
uses
  Forms,
  Test1 in 'Test1.pas' {TestForm1},
  Test2 in 'Test2.pas' {TestForm2},
  Test3 in 'Test3.pas' {TestForm3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Тестовик';
  Application.CreateForm(TTestForm1, TestForm1);
  Application.CreateForm(TTestForm2, TestForm2);
  Application.CreateForm(TTestForm3, TestForm3);
  Application.Run;
end.
