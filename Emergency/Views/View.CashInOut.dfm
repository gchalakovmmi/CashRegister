object ViewCashInOut: TViewCashInOut
  Left = 276
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  BorderWidth = 1
  Caption = #1057#1051#1059#1046#1045#1041#1053#1054' '#1042#1066#1042#1045#1046#1044#1040#1053#1045' '#1048' '#1048#1047#1042#1045#1046#1044#1040#1053#1045' '#1053#1040' '#1057#1059#1052#1048
  ClientHeight = 176
  ClientWidth = 712
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 25
  object LabelCash: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 706
    Height = 25
    Align = alTop
    Alignment = taCenter
    ExplicitWidth = 7
  end
  object ButtonCashOut: TButton
    Left = 359
    Top = 46
    Width = 345
    Height = 120
    Caption = #1057#1051#1059#1046#1045#1041#1053#1054' '#1048#1047#1042#1045#1046#1044#1040#1053#1045
    TabOrder = 0
    OnClick = ButtonCashOutClick
  end
  object ButtonCashIn: TButton
    Left = 8
    Top = 48
    Width = 345
    Height = 120
    Caption = #1057#1051#1059#1046#1045#1041#1053#1054' '#1042#1066#1042#1045#1046#1044#1040#1053#1045
    TabOrder = 1
    OnClick = ButtonCashInClick
  end
end
