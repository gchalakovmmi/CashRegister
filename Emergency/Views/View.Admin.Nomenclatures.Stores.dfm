object ViewAdminNomenclatureStores: TViewAdminNomenclatureStores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = #1054#1044#1048#1058' '#1055#1056#1054#1044#1040#1046#1041#1048
  ClientHeight = 531
  ClientWidth = 1784
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object GridSales: TDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 305
    Width = 1768
    Height = 218
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alClient
    DataSource = DataSource2
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'SaleDate'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaleTime'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Measure'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Quantity'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Price'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Discount'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'VATRate'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Total'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1784
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 1004
    object Label7: TLabel
      Left = 8
      Top = 4
      Width = 137
      Height = 16
      Caption = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1087#1077#1088#1080#1086#1076#1072':'
    end
    object Label8: TLabel
      Left = 8
      Top = 56
      Width = 120
      Height = 16
      Caption = #1050#1088#1072#1081' '#1085#1072' '#1087#1077#1088#1080#1086#1076#1072':'
    end
    object Label9: TLabel
      Left = 178
      Top = 4
      Width = 121
      Height = 16
      Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1086#1073#1077#1082#1090':'
    end
    object Label10: TLabel
      Left = 178
      Top = 57
      Width = 106
      Height = 16
      Caption = #1056#1072#1073#1086#1090#1085#1086' '#1084#1103#1089#1090#1086':'
    end
    object Label11: TLabel
      Left = 492
      Top = 5
      Width = 85
      Height = 16
      Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083':'
    end
    object Label12: TLabel
      Left = 492
      Top = 57
      Width = 156
      Height = 16
      Caption = #1060#1080#1089#1082#1072#1083#1085#1086' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086':'
    end
    object ComboBox4: TComboBox
      Left = 492
      Top = 79
      Width = 292
      Height = 24
      TabOrder = 0
      Text = #1042#1057#1048#1063#1050#1048
    end
    object DatePicker2: TDatePicker
      Left = 8
      Top = 26
      Height = 24
      Date = 43673.000000000000000000
      DateFormat = 'd/M/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      MinYear = 2019
      TabOrder = 1
    end
    object DatePicker3: TDatePicker
      Left = 8
      Top = 78
      Height = 25
      Date = 43830.000000000000000000
      DateFormat = 'd/M/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      MinYear = 2019
      TabOrder = 2
    end
    object ComboBox6: TComboBox
      Left = 178
      Top = 26
      Width = 292
      Height = 24
      TabOrder = 3
      Text = #1052#1040#1043#1040#1047#1048#1053' "'#1040#1053#1045#1058' 4 - SWEET"'
    end
    object ComboBox7: TComboBox
      Left = 178
      Top = 79
      Width = 292
      Height = 24
      TabOrder = 4
      Text = #1042#1057#1048#1063#1050#1048
    end
    object ComboBox8: TComboBox
      Left = 492
      Top = 27
      Width = 292
      Height = 24
      TabOrder = 5
      Text = #1042#1057#1048#1063#1050#1048
    end
    object Button1: TButton
      Left = 800
      Top = 26
      Width = 105
      Height = 25
      Caption = #1054#1041#1053#1054#1042#1048
      TabOrder = 6
    end
    object Button2: TButton
      Left = 800
      Top = 79
      Width = 105
      Height = 25
      Caption = #1045#1050#1057#1055#1054#1056#1058
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 1784
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    ExplicitWidth = 1112
    object Button3: TButton
      Left = 8
      Top = 6
      Width = 105
      Height = 25
      Caption = #1044#1054#1041#1040#1042#1048
      TabOrder = 0
    end
    object Button4: TButton
      Left = 119
      Top = 6
      Width = 105
      Height = 25
      Caption = #1055#1056#1054#1052#1045#1053#1048
      TabOrder = 1
    end
    object Button5: TButton
      Left = 230
      Top = 6
      Width = 105
      Height = 25
      Caption = #1047#1040#1055#1048#1057
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 145
    Width = 1768
    Height = 144
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alTop
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Store'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Workstation'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FiscalDevice'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'User'
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Client'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaleUniqueID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CreatedDate'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CreatedTime'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CompletedDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CompletedTime'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object T1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 416
    Top = 216
    object T1GID: TStringField
      DisplayLabel = '#'
      FieldName = 'GID'
    end
    object T1Name: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'Name'
      Size = 40
    end
    object T1Address: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'Address'
      Size = 80
    end
    object T1AttachedAt: TStringField
      DisplayLabel = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085
      FieldName = 'AttachedAt'
    end
    object T1ModifiedAt: TStringField
      DisplayLabel = #1055#1088#1086#1084#1077#1085#1077#1085
      FieldName = 'ModifiedAt'
    end
    object T1DetachedAt: TStringField
      DisplayLabel = #1048#1079#1074#1077#1076#1077#1085
      FieldName = 'DetachedAt'
    end
    object T1FiscalDevice: TStringField
      DisplayLabel = #1060#1059
      FieldName = 'FiscalDevice'
    end
    object T1Store: TStringField
      DisplayLabel = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1086#1073#1077#1082#1090
      FieldName = 'Store'
      Size = 40
    end
    object T1User: TStringField
      DisplayLabel = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
      FieldName = 'User'
    end
    object T1Role: TStringField
      DisplayLabel = #1056#1086#1083#1103
      FieldName = 'Role'
    end
    object T1CreatedAt: TStringField
      DisplayLabel = #1044#1072#1090#1072', '#1095#1072#1089
      FieldName = 'CreatedAt'
    end
    object T1EventType: TStringField
      DisplayLabel = #1057#1098#1073#1080#1090#1080#1077
      FieldName = 'EventType'
    end
    object T1SUID: TStringField
      DisplayLabel = #1059#1053#1055
      FieldName = 'SUID'
    end
    object T1Description: TStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'Description'
      Size = 80
    end
    object T1Workstation: TStringField
      DisplayLabel = #1056#1072#1073#1086#1090#1085#1086' '#1084#1103#1089#1090#1086
      FieldName = 'Workstation'
    end
    object T1Brand: TStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      FieldName = 'Brand'
    end
    object T1Model: TStringField
      DisplayLabel = #1052#1086#1076#1077#1083
      FieldName = 'Model'
    end
    object T1SaleUniqueID: TStringField
      DisplayLabel = #1059#1053#1055
      DisplayWidth = 21
      FieldName = 'SaleUniqueID'
      Size = 21
    end
    object T1Total: TStringField
      Alignment = taRightJustify
      DisplayLabel = #1057#1059#1052#1040
      FieldName = 'Total'
    end
    object T1CreatedDate: TStringField
      DisplayLabel = #1047#1040#1055#1054#1063#1053#1040#1058#1040' ('#1076#1072#1090#1072')'
      FieldName = 'CreatedDate'
    end
    object T1CreatedTime: TStringField
      DisplayLabel = #1047#1040#1055#1054#1063#1053#1040#1058#1040' ('#1095#1072#1089')'
      FieldName = 'CreatedTime'
    end
    object T1CompletedDate: TStringField
      DisplayLabel = #1055#1056#1048#1050#1051#1070#1063#1045#1053#1040' ('#1076#1072#1090#1072')'
      FieldName = 'CompletedDate'
    end
    object T1CompletedTime: TStringField
      DisplayLabel = #1055#1056#1048#1050#1051#1070#1063#1045#1053#1040' ('#1095#1072#1089')'
      FieldName = 'CompletedTime'
    end
    object T1Client: TStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'Client'
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = T1
    Left = 328
    Top = 216
  end
  object T2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 408
    Top = 368
    object T2SaleDate: TStringField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'SaleDate'
    end
    object T2SaleTime: TStringField
      DisplayLabel = #1063#1072#1089
      FieldName = 'SaleTime'
    end
    object T2Item: TStringField
      DisplayLabel = #1057#1090#1086#1082#1072'/'#1091#1089#1083#1091#1075#1072
      FieldName = 'Item'
      Size = 40
    end
    object T2Measure: TStringField
      DisplayLabel = #1052#1103#1088#1082#1072
      FieldName = 'Measure'
      Size = 5
    end
    object T2Quantity: TStringField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'Quantity'
    end
    object T2Price: TStringField
      DisplayLabel = #1045#1076'.'#1094#1077#1085#1072
      FieldName = 'Price'
    end
    object T2Discount: TStringField
      DisplayLabel = #1054#1090#1089#1090#1098#1087#1082#1072
      FieldName = 'Discount'
    end
    object T2VATRate: TStringField
      DisplayLabel = #1044#1044#1057' %'
      FieldName = 'VATRate'
    end
    object T2VAT: TStringField
      DisplayLabel = #1044#1044#1057
      FieldName = 'VAT'
    end
    object T2Total: TStringField
      DisplayLabel = #1057#1091#1084#1072
      FieldName = 'Total'
    end
  end
  object DataSource2: TDataSource
    DataSet = T2
    Left = 320
    Top = 368
  end
end
