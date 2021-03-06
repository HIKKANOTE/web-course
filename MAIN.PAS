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
  {���������� ���� ��������� ���������� � ��������}
  Form33 := TForm33.Create(Application);
  {do_connect = True, ���� ���� ������ ������ Connect}
  do_connect := (Form33.ShowModal = mrOk);
  {���������� ���������� �� ����, ��� �� ��������� �����}
  host := Form33.Edit1.Text;
  port := Form33.Edit2.Text;
  nickname := Form33.Edit3.Text;
  {���������� �����}
  Form28.Free;
  {���� ���� ������ ������ Cancel, �� ������ ������}
  if not do_connect then
   Exit;
  {���� ���������� ��� �����������, �� �������� ���}
  if ClientSocket1.Active then
   ClientSocket1.Close;
  {������������� �������� Host � Port}
  ClientSocket1.Host := host;
  ClientSocket1.Port := StrToInt(port);
  {�������� �����������}
  ClientSocket1.Open;

end;

procedure TForm32.Button3Click(Sender: TObject);
begin
  {��������� ���������� (���� ��� �����������)}
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
  {���� ��������� ������, ������� �� ��� � Memo1}
  {Insert ��������� ������ � ��������� ������� (� ������ ������ - 0 - � ������)}
  Memo1.Lines.Insert(0,'Socket error ('+IntToStr(ErrorCode)+')');
  ErrorCode:=0;
end;

procedure TForm32.ClientSocket1Connecting(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  {�����������...}
  Memo1.Lines.Insert(0,'�����������...');
end;

procedure TForm32.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  {�����������!}
  Memo1.Lines.Insert(0,'���������� ������� �����������');
end;

procedure TForm32.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Memo1.Lines.Insert(0,'����������...');
end;

procedure TForm32.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
 var s,from_,to_: string;
begin
  {����������� s ���������� �� ������� ������}
  s := Socket.ReceiveText;
  {���� ������ �������� ��� User List}
  if Copy(s,1,2) = '#U' then begin
   Delete(s,1,2);
   {������ ListBox1}
   ListBox1.Items.Clear;
   {��������� �� ������ ������������ � ������. ����� ������������� ��������� ������ ";"}
   while Pos(';',s) > 0 do begin
    ListBox1.Items.Add(Copy(s,1,Pos(';',s)-1));
    Delete(s,1,Pos(';',s));
   end;
   Exit;
  end;
  {���� ��� �������� ����� ��������� (������� ��� ����)}
  if Copy(s,1,2) = '#M' then begin
   Delete(s,1,2);
   {��������� ��� � Memo1}
   Memo1.Lines.Insert(0,Copy(s,1,Pos(';',s)-1)+'> '+
                        Copy(s,Pos(';',s)+1,Length(s)-Pos(';',s)));
   Exit;
  end;
  {���� ��� �������� ������ �� ���� ��� �����}
  if Copy(s,1,2) = '#N' then begin
   {�������� �����}
   Socket.SendText('#N'+nickname);
   Exit;
  end;
  {���� ��� �������� ��������� ��������� )}
  if Copy(s,1,2) = '#P' then begin
   Delete(s,1,2);
   {�������� � to_ - ���� ��� �������������}
   to_ := Copy(s,1,Pos(';',s)-1);
   Delete(s,1,Pos(';',s));
   {�������� � from_ - ��� ����������}
   from_ := Copy(s,1,Pos(';',s)-1);
   Delete(s,1,Pos(';',s));
   {���� ��� ��� ���, ��� �������� ���� - ��������� � Memo1
    (������ ������� ������ ���� �������� if  )}
   if (to_ = nickname)or(from_ = nickname) then
    Memo1.Lines.Insert(0,from_+' (private) > '+s);
   Exit;
  end;
end;

procedure TForm32.Button1Click(Sender: TObject);
 var s: string;
begin
  {���� �� ����� ������� ��������� ���������, �� �� ������� �������� -
   ��� �������� ���������� :) � ������� �� �����������}
  if (CheckBox1.Checked)and(ListBox1.ItemIndex < 0) then begin
   Exit;
  end;
  {���� ��� ��������� ���������}
  if CheckBox1.Checked then
   s := '#P'+ListBox1.Items[ListBox1.ItemIndex]+';' {��������� ����.������� � �������}
  else {� ���� �� ����� ���������?}
   s := '#M'; {������ ����.�������}
  {��������� ���� ��� (�� ����) � ���� ���������}
  s := s+nickname+';'+Edit1.Text;
  {�������� ��� ��� �� ������}
  ClientSocket1.Socket.SendText(s);
  {� ����� ���� ����� � ��� ������ TEdit-�}
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
