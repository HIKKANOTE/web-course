unit Unit34;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ComCtrls, Menus;

type
  TForm34 = class(TForm)
    TreeView1: TTreeView;
    WebBrowser1: TWebBrowser;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form34: TForm34;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm34.N1Click(Sender: TObject);
begin
Form34.Hide;
Form2.show;
end;

procedure TForm34.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
case
TreeView1.Selected.AbsoluteIndex of
1:WebBrowser1.Navigate((extractfilepath(application.ExeName)+'������ �����\����1\�������� � html.htm'));


2:WebBrowser1.Navigate((extractfilepath(application.ExeName)+'���� HTML\test_1.html'));
end;
end;

end.
