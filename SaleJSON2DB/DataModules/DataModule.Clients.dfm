object DataModuleClients: TDataModuleClients
  OldCreateOrder = False
  Height = 150
  Width = 296
  object FDMemTable: TFDMemTable
    Active = True
    OnFilterRecord = FDMemTableFilterRecord
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Address'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Contact'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VIP'
        DataType = ftBoolean
      end
      item
        Name = 'Surcharge'
        DataType = ftFloat
      end
      item
        Name = 'LoyaltyCardNumber'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TaxNumber'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 88
    Top = 56
    object FDMemTableID: TIntegerField
      FieldName = 'ID'
    end
    object FDMemTableName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object FDMemTableAddress: TStringField
      FieldName = 'Address'
      Size = 60
    end
    object FDMemTableContact: TStringField
      FieldName = 'Contact'
      Size = 60
    end
    object FDMemTableVIP: TBooleanField
      FieldName = 'VIP'
    end
    object FDMemTableSurcharge: TFloatField
      FieldName = 'Surcharge'
      DisplayFormat = '0.00%'
    end
    object FDMemTableLoyaltyCardNumber: TStringField
      FieldName = 'LoyaltyCardNumber'
    end
    object FDMemTableTaxNumber: TStringField
      FieldName = 'TaxNumber'
    end
  end
  object DataSource: TDataSource
    DataSet = FDMemTable
    Left = 192
    Top = 56
  end
end
