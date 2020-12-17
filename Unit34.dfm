object Form34: TForm34
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  BorderIcons = [biMinimize]
  Caption = #1051#1077#1082#1094#1080#1080' 1 '#1090#1077#1084#1099
  ClientHeight = 497
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 137
    Height = 497
    Align = alLeft
    Indent = 19
    TabOrder = 0
    OnChange = TreeView1Change
    Items.NodeData = {
      03020000003C0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      0001000000010F120432043504340435043D0438043504200032042000480054
      004D004C00200000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000000000001013100260000000000000000000000FFFFFFFFFFFFFFFF000000
      00000000000000000001045400650073007400}
  end
  object WebBrowser1: TWebBrowser
    Left = 137
    Top = 0
    Width = 714
    Height = 497
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 136
    ExplicitWidth = 851
    ControlData = {
      4C000000CB4900005E3300000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 40
    object N1: TMenuItem
      Caption = #1053#1072#1079#1072#1076
      OnClick = N1Click
    end
  end
end
