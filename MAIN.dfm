object Form32: TForm32
  Left = 192
  Top = 107
  ActiveControl = Button2
  Caption = #1063#1072#1090
  ClientHeight = 400
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 581
    Height = 73
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 448
      Top = 40
      Width = 113
      Height = 25
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 40
      Width = 434
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = Edit1KeyDown
    end
    object Button2: TButton
      Left = 16
      Top = 8
      Width = 153
      Height = 25
      Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 448
      Top = 7
      Width = 113
      Height = 27
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button4Click
    end
    object CheckBox1: TCheckBox
      Left = 241
      Top = 17
      Width = 32
      Height = 17
      TabOrder = 5
      Visible = False
    end
    object Button3: TButton
      Left = 175
      Top = 9
      Width = 138
      Height = 25
      Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100#1089#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 445
    Top = 73
    Width = 136
    Height = 286
    Align = alRight
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 134
      Height = 14
      Align = alTop
      Alignment = taCenter
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ExplicitWidth = 82
    end
    object ListBox1: TListBox
      Left = 1
      Top = 15
      Width = 134
      Height = 270
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 359
    Width = 581
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 0
    Top = 73
    Width = 445
    Height = 286
    Align = alClient
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = 'localhost'
    Port = 1111
    OnConnecting = ClientSocket1Connecting
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    OnError = ClientSocket1Error
    Left = 56
    Top = 104
  end
end
