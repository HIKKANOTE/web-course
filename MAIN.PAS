unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ScktComp;

type
  TForm32 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Panel3: TPanel;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    ClientSocket1: TClientSocket;
    Button4: TButton;
    CheckBox1: TCheckBox;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Connecting(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form32: TForm32;
  nickname: string;

implementation

uses conn, Unit28;

{$R *.DFM}

procedure TForm32.Button2Click(Sender: TObject);
 var do_connect: Boolean;
     host,port: string;
     s:tstrings;
begin
  {Показываем окно установки соединения с сервером}
  Form33 := TForm33.Create(Application);
  {do_connect = True, если была нажата кнопка Connect}
  do_connect := (Form33.ShowModal = mrOk);
  {заполнение переменных до того, как мы уничтожим форму}
  host := Form33.Edit1.Text;
  port := Form33.Edit2.Text;
  nickname := Form33.Edit3.Text;
  {Уничтожаем форму}
  Form28.Free;
  {Если была нажата кнопка Cancel, то уходим отсюда}
  if not do_connect then
   Exit;
  {Если соединение уже установлено, то обрываем его}
  if ClientSocket1.Active then
   ClientSocket1.Close;
  {Устанавливаем свойства Host и Port}
  ClientSocket1.Host := host;
  ClientSocket1.Port := StrToInt(port);
  {Пытаемся соединиться}
  ClientSocket1.Open;

end;

procedure TForm32.Button3Click(Sender: TObject);
begin
  {Закрываем соединение (если оно установлено)}
  ListBox1.items.clear;
  if ClientSocket1.Active then
   ClientSocket1.Close;
end;

procedure TForm32.Button4Click(Sender: TObject);
begin
close;
end;

procedure TForm32.ClientSocket1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  {Если произошла ошибка, выводим ее код в Memo1}
  {Insert вставляет строку в указанную позицию (в данном случае - 0 - в начало)}
  Memo1.Lines.Insert(0,'Socket error ('+IntToStr(ErrorCode)+')');
  ErrorCode:=0;
end;

procedure TForm32.ClientSocket1Connecting(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  {соединяемся...}
  Memo1.Lines.Insert(0,'Соединяемся...');
end;

procedure TForm32.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  {соединились!}
  Memo1.Lines.Insert(0,'Соединение успешно установлено');
end;

procedure TForm32.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Memo1.Lines.Insert(0,'Отключение...');
end;

procedure TForm32.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
 var s,from_,to_: string;
begin
  {присваиваем s полученную от сервера строку}
  s := Socket.ReceiveText;
  {Если сервер посылает нам User List}
  if Copy(s,1,2) = '#U' then begin
   Delete(s,1,2);
   {Чистим ListBox1}
   ListBox1.Items.Clear;
   {Добавляем по одному пользователю в список. Имена пользователей разделены знаком ";"}
   while Pos(';',s) > 0 do begin
    ListBox1.Items.Add(Copy(s,1,Pos(';',s)-1));
    Delete(s,1,Pos(';',s));
   end;
   Exit;
  end;
  {Если нам прислали общее сообщение (видимое для всех)}
  if Copy(s,1,2) = '#M' then begin
   Delete(s,1,2);
   {Добавляем его в Memo1}
   Memo1.Lines.Insert(0,Copy(s,1,Pos(';',s)-1)+'> '+
                        Copy(s,Pos(';',s)+1,Length(s)-Pos(';',s)));
   Exit;
  end;
  {Если нам прислали запрос на наше имя юзера}
  if Copy(s,1,2) = '#N' then begin
   {Посылаем ответ}
   Socket.SendText('#N'+nickname);
   Exit;
  end;
  {Если нам прислали приватное сообщение )}
  if Copy(s,1,2) = '#P' then begin
   Delete(s,1,2);
   {Выделяем в to_ - кому оно предназначено}
   to_ := Copy(s,1,Pos(';',s)-1);
   Delete(s,1,Pos(';',s));
   {Выделяем в from_ - кем отправлено}
   from_ := Copy(s,1,Pos(';',s)-1);
   Delete(s,1,Pos(';',s));
   {Если оно для нас, или написано нами - добавляем в Memo1
    (иногда полезно убрать этот оператор if  )}
   if (to_ = nickname)or(from_ = nickname) then
    Memo1.Lines.Insert(0,from_+' (private) > '+s);
   Exit;
  end;
end;

procedure TForm32.Button1Click(Sender: TObject);
 var s: string;
begin
  {Если мы хотим послать приватное сообщение, но не выбрали адресата -
   нас покарают замечанием :) и выгонят из обработчика}
  if (CheckBox1.Checked)and(ListBox1.ItemIndex < 0) then begin
   Exit;
  end;
  {Если это приватное сообщение}
  if CheckBox1.Checked then
   s := '#P'+ListBox1.Items[ListBox1.ItemIndex]+';' {добавляем спец.команду и адресат}
  else {А если не очень приватное?}
   s := '#M'; {Просто спец.команду}
  {Добавляем наше имя (от кого) и само сообщение}
  s := s+nickname+';'+Edit1.Text;
  {Посылаем все это по сокету}
  ClientSocket1.Socket.SendText(s);
  {И снова ждем ввода в уже чистом TEdit-е}
  Edit1.Text := '';
  ActiveControl := Edit1;
end;

procedure TForm32.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
   Button1.Click;
end;

end.
