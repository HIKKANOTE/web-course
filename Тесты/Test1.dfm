object TestForm1: TTestForm1
  Left = 673
  Top = 409
  Caption = #1058#1077#1089#1090
  ClientHeight = 252
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 440
    Top = 8
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = #1044#1072#1083#1077#1077
    TabOrder = 0
    OnClick = Button1Click
  end
  object AnswerGroup: TRadioGroup
    Left = 8
    Top = 112
    Width = 585
    Height = 129
    Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1086#1090#1074#1077#1090#1072':'
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 32
    Width = 585
    Height = 74
    Caption = #1042#1086#1087#1088#1086#1089
    TabOrder = 2
    object Question: TLabel
      Left = 2
      Top = 15
      Width = 581
      Height = 57
      Align = alClient
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 3
      ExplicitHeight = 13
    end
  end
  object TestBox: TComboBox
    Left = 8
    Top = 8
    Width = 425
    Height = 21
    TabOrder = 3
    OnCloseUp = TestBoxCloseUp
  end
  object Button2: TButton
    Left = 518
    Top = 8
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
end
