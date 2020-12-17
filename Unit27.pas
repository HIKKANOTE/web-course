unit Unit27;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls, ComCtrls;

type
  TForm27 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    Edit2: TEdit;
    Button4: TButton;
    Memo2: TMemo;
    ServerSocket1: TServerSocket;
    ClientSocket1: TClientSocket;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ServerSocket1ClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form27: TForm27;

implementation

{$R *.dfm}

procedure TForm27.Button1Click(Sender: TObject);
begin
ClientSocket1.host:=edit1.Text;
ClientSocket1.active:=true;
end;

procedure TForm27.Button2Click(Sender: TObject);
begin
clientsocket1.active:=false;

end;

procedure TForm27.Button3Click(Sender: TObject);
begin
ClientSocket1.host:=edit1.Text;
clientsocket1.active:=false;
ClientSocket1.active:=true;
end;

procedure TForm27.Button4Click(Sender: TObject);
begin
clientsocket1.socket.sendtext(edit2.Text);
memo1.Lines.Add('Отправлено: ' + edit2.text)
end;

procedure TForm27.ServerSocket1ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
memo2.Lines.add(socket.RemoteAddress);
end;

procedure TForm27.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
memo1.Lines.Add('Получено: ' + socket.ReceiveText);
end;

end.
