unit srvmain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ScktComp, sSkinManager, Buttons;

type
  TForm29 = class(TForm)
    Panel1: TPanel;
    ListBox1: TListBox;
    ServerSocket1: TServerSocket;
    Label1: TLabel;
    sSkinManager1: TsSkinManager;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form29: TForm29;

implementation

{$R *.DFM}




procedure TForm29.BitBtn1Click(Sender: TObject);
 var s: string;
begin
  {Запрашиваем порт}
  s := InputBox('Запуск сервера','Введите порт:','1001');
  if s = '' then
   Exit;
  {Чистим юзер лист}
  ListBox1.Items.Clear;
  {Устанавливаем порт}
  ServerSocket1.Port := StrToInt(s);
  {Запускаем сервер}
  ServerSocket1.Open;
end;



procedure TForm29.bitbtn2Click(Sender: TObject);
begin
  {Чистим юзер лист и останавливаем сервер}
  ListBox1.Items.Clear;
  if ServerSocket1.Active then
   ServerSocket1.Close;
end;



procedure TForm29.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TForm29.FormCreate(Sender: TObject);
begin
form29.sskinmanager1.skinname:='LongHorn (internal)';
end;

procedure TForm29.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
 var s: string;
     i: Integer;
begin
  {сохраняем в s присланную нам строку}
  s := Socket.ReceiveText;
  {Если кто-то прислал нам свое имя}
  if Copy(s,1,2) = '#N' then begin
   Delete(s,1,2);
   {Добавляем его в юзер лист}
   ListBox1.Items.Add(s);
   {Записываем в s команду для посылки нового списка юзеров}
   s := '#U';
   for i := 0 to ListBox1.Items.Count-1 do
    s := s+ListBox1.Items[i]+';';
   {...и рассылаем этот список всем клиентам}
   for i := 0 to ServerSocket1.Socket.ActiveConnections-1 do
    ServerSocket1.Socket.Connections[i].SendText(s);
   Exit;
  end;
  {Если кто-то кинул сообщение - рассылаем его всем клиентам}
  if (Copy(s,1,2) = '#M')or(Copy(s,1,2) = '#P') then begin
   for i := 0 to ServerSocket1.Socket.ActiveConnections-1 do
    ServerSocket1.Socket.Connections[i].SendText(s);
   Exit;
  end;
end;

procedure TForm29.ServerSocket1ClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
 var i: Integer;
begin
  {Кто-то присоединился или отсоединился? Нет проблем! Запрашиваем у всех
   юзеров их имена}
  ListBox1.Items.Clear;
  for i := 0 to ServerSocket1.Socket.ActiveConnections-1 do
   ServerSocket1.Socket.Connections[i].SendText('#N');
end;

end.
