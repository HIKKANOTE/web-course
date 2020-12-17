object Form27: TForm27
  Left = 0
  Top = 0
  Caption = 'Chat'
  ClientHeight = 293
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 8
    Width = 481
    Height = 289
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Connect'
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 18
        Height = 24
        Caption = 'IP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 27
        Top = 3
        Width = 142
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 16
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Connect'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 97
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Disconnect'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 178
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Reconnect'
        TabOrder = 3
        OnClick = Button3Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Chat'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 3
        Top = 88
        Width = 456
        Height = 170
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 3
        Top = 16
        Width = 377
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Button4: TButton
        Left = 386
        Top = 16
        Width = 84
        Height = 32
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
        TabOrder = 2
        OnClick = Button4Click
      end
    end
  end
  object Memo2: TMemo
    Left = 469
    Top = 0
    Width = 150
    Height = 293
    TabOrder = 1
  end
  object ServerSocket1: TServerSocket
    Active = True
    Port = 1111
    ServerType = stNonBlocking
    OnClientConnect = ServerSocket1ClientConnect
    OnClientRead = ServerSocket1ClientRead
    Left = 525
    Top = 240
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 1111
    Left = 544
    Top = 192
  end
end
