object ViewSale: TViewSale
  Left = 476
  Top = 95
  BorderIcons = []
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = #1055#1056#1054#1044#1040#1046#1041#1040
  ClientHeight = 723
  ClientWidth = 1205
  Color = 12582847
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  StyleElements = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object PanelButtons: TPanel
    Left = 0
    Top = 0
    Width = 1205
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object ButtonSaveAndNew: TButton
      Left = 764
      Top = 6
      Width = 120
      Height = 33
      Action = ActionSaveAndNew
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object ButtonCardPayment: TButton
      Left = 260
      Top = 6
      Width = 120
      Height = 33
      Action = ActionCardPayment
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object ButtonCheckItem: TButton
      Left = 638
      Top = 6
      Width = 120
      Height = 33
      Action = ActionCheckItem
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object ButtonExit: TButton
      Left = 8
      Top = 6
      Width = 120
      Height = 33
      Action = ActionExit
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object ButtonPayment: TButton
      Left = 386
      Top = 6
      Width = 120
      Height = 33
      Action = ActionPayment
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object ButtonRemoveItem: TButton
      Left = 512
      Top = 6
      Width = 120
      Height = 33
      Action = ActionRemoveItem
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object ButtonVoucherPayment: TButton
      Left = 134
      Top = 6
      Width = 120
      Height = 33
      Action = ActionVoucherPayment
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object ButtonDiscard: TButton
      Left = 890
      Top = 6
      Width = 120
      Height = 33
      Action = ActionDiscard
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object ButtonDuplicateReceipt: TButton
      Left = 1016
      Top = 6
      Width = 120
      Height = 33
      Action = ActionDuplicateReceipt
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
  end
  object PanelShow: TPanel
    Left = 0
    Top = 41
    Width = 1205
    Height = 64
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object EditShow: TDBEdit
      Left = 8
      Top = 6
      Width = 971
      Height = 56
      DataField = 'LastItemName'
      DataSource = DataModuleSale.DataSourceSale
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -40
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      StyleElements = []
      OnEnter = EditShowEnter
    end
  end
  object PanelPayment: TPanel
    Left = 0
    Top = 449
    Width = 1205
    Height = 274
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    ExplicitTop = 430
    object LabelReturned: TLabel
      Left = 784
      Top = 200
      Width = 78
      Height = 23
      Caption = #1056#1045#1057#1058#1054':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelCashPayment: TLabel
      Left = 784
      Top = 72
      Width = 168
      Height = 18
      Caption = #1055#1051#1040#1058#1045#1053#1054' '#1042' '#1041#1056#1054#1049':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelCardPayment: TLabel
      Left = 784
      Top = 136
      Width = 177
      Height = 18
      Caption = #1055#1051#1040#1058#1045#1053#1054' '#1057' '#1050#1040#1056#1058#1040':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelTotal: TLabel
      Left = 784
      Top = 4
      Width = 98
      Height = 23
      Caption = #1042#1057#1048#1063#1050#1054':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelVoucherPayment: TLabel
      Left = 576
      Top = 136
      Width = 189
      Height = 18
      Caption = #1055#1051#1040#1058#1045#1053#1054' '#1057' '#1042#1040#1059#1063#1045#1056':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 36608
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelMinVIP: TLabel
      Left = 8
      Top = 36
      Width = 690
      Height = 32
      Caption = #1052#1080#1085#1080#1084#1072#1083#1085#1072#1090#1072' '#1089#1091#1084#1072' 20.00'#1083#1074'.'#1085#1077' '#1077' '#1076#1086#1089#1090#1080#1075#1085#1072#1090#1072'!'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object EditTotal: TDBEdit
      Left = 784
      Top = 28
      Width = 185
      Height = 40
      DataField = 'Due'
      DataSource = DataModuleSale.DataSourceSale
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      StyleElements = []
      OnEnter = EditTotalEnter
    end
    object EditCardPayment: TDBEdit
      Left = 784
      Top = 156
      Width = 185
      Height = 40
      DataField = 'CardPayment'
      DataSource = DataModuleSale.DataSourceSale
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      StyleElements = []
      OnEnter = EditCardPaymentEnter
      OnExit = EditCardPaymentExit
      OnKeyPress = EditCardPaymentKeyPress
    end
    object EditCashPayment: TDBEdit
      Left = 784
      Top = 90
      Width = 185
      Height = 40
      DataField = 'CashPayment'
      DataSource = DataModuleSale.DataSourceSale
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      StyleElements = []
      OnEnter = EditCashPaymentEnter
      OnKeyPress = EditCashPaymentKeyPress
    end
    object EditReturned: TDBEdit
      Left = 784
      Top = 223
      Width = 185
      Height = 40
      DataField = 'Returned'
      DataSource = DataModuleSale.DataSourceSale
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 3
      StyleElements = []
      OnEnter = EditReturnedEnter
    end
    object EditVoucherPayment: TDBEdit
      Left = 576
      Top = 156
      Width = 185
      Height = 40
      DataField = 'VoucherPayment'
      DataSource = DataModuleSale.DataSourceSale
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentColor = True
      ParentFont = False
      TabOrder = 4
      StyleElements = []
      OnEnter = EditVoucherPaymentEnter
      OnKeyPress = EditVoucherPaymentKeyPress
    end
  end
  object PanelGrid: TPanel
    Left = 0
    Top = 105
    Width = 1205
    Height = 344
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    ExplicitHeight = 325
    object Grid: TDBGrid
      AlignWithMargins = True
      Left = 8
      Top = 0
      Width = 1189
      Height = 344
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 8
      Margins.Bottom = 0
      Align = alClient
      Color = 12582847
      DataSource = DataModuleSale.DataSourceSaleDetails
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = RUSSIAN_CHARSET
      TitleFont.Color = 36608
      TitleFont.Height = -15
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      StyleElements = []
      OnDrawColumnCell = GridDrawColumnCell
      OnEnter = GridEnter
      OnKeyPress = GridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'BarCode'
          Title.Alignment = taCenter
          Title.Caption = #1041#1040#1056#1050#1054#1044
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ItemName'
          Title.Alignment = taCenter
          Title.Caption = #1040#1056#1058#1048#1050#1059#1051
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Measure'
          Title.Alignment = taCenter
          Title.Caption = #1052#1071#1056#1050#1040
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Quantity'
          Title.Alignment = taCenter
          Title.Caption = #1050#1054#1051'.'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Price'
          Title.Alignment = taCenter
          Title.Caption = #1045#1044'.'#1062#1045#1053#1040
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Total'
          Title.Alignment = taCenter
          Title.Caption = #1057#1059#1052#1040
          Visible = True
        end>
    end
  end
  object ActionManager: TActionManager
    Left = 792
    Top = 56
    StyleName = 'Platform Default'
    object ActionExit: TAction
      Caption = 'ESC - '#1048#1047#1061#1054#1044
      ShortCut = 27
      OnExecute = ActionExitExecute
    end
    object ActionVoucherPayment: TAction
      Caption = 'F3 - '#1057' '#1042#1040#1059#1063#1045#1056
      ShortCut = 114
      OnExecute = ActionVoucherPaymentExecute
    end
    object ActionCardPayment: TAction
      Caption = 'F4 - '#1057' '#1050#1040#1056#1058#1040
      ShortCut = 115
      OnExecute = ActionCardPaymentExecute
    end
    object ActionPayment: TAction
      Caption = 'F6 - '#1055#1051#1040#1058#1045#1053#1054
      ShortCut = 117
      OnExecute = ActionPaymentExecute
    end
    object ActionRemoveItem: TAction
      Caption = 'F8 - '#1055#1056#1045#1052#1040#1061#1053#1048
      ShortCut = 119
      OnExecute = ActionRemoveItemExecute
    end
    object ActionCheckItem: TAction
      Caption = 'F9 - '#1055#1056#1054#1042#1045#1056#1050#1040
      ShortCut = 120
      OnExecute = ActionCheckItemExecute
    end
    object ActionSaveAndNew: TAction
      Caption = 'F10 - '#1047#1040#1055#1048#1057
      ShortCut = 121
      OnExecute = ActionSaveAndNewExecute
    end
    object ActionDiscard: TAction
      Caption = 'CTRL+F11 - '#1054#1058#1050#1040#1047
      ShortCut = 16506
      OnExecute = ActionDiscardExecute
    end
    object ActionDuplicateReceipt: TAction
      Caption = 'ALT+F12 - '#1044#1059#1041#1051#1048#1050#1040#1058
      ShortCut = 32891
      OnExecute = ActionDuplicateReceiptExecute
    end
  end
  object TimerClose: TTimer
    Enabled = False
    Interval = 3600000
    Left = 688
    Top = 56
  end
end
