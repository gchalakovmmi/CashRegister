object ViewMain: TViewMain
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1076#1072#1078#1073#1072' JSON -> DB'
  ClientHeight = 516
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object ButtonSelectSale: TButton
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 629
    Height = 38
    Align = alTop
    Caption = #1048#1079#1073#1077#1088#1077#1090#1077' '#1087#1088#1086#1076#1072#1078#1073#1072
    TabOrder = 0
    OnClick = ButtonSelectSaleClick
  end
  object OpenDialog: TOpenDialog
    Left = 544
    Top = 40
  end
end
