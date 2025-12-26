object DataModuleItems: TDataModuleItems
  OldCreateOrder = False
  Height = 150
  Width = 215
  object DataSource: TDataSource
    DataSet = FDMemTable
    Left = 119
    Top = 40
  end
  object FDMemTable: TFDMemTable
    Filtered = True
    OnFilterRecord = FDMemTableFilterRecord
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 40
    Top = 40
    object FDMemTableID: TIntegerField
      FieldName = 'ID'
    end
    object FDMemTableCode: TStringField
      FieldName = 'Code'
      Size = 10
    end
    object FDMemTableItem: TStringField
      FieldName = 'Item'
      Size = 40
    end
    object FDMemTableVendorPrice: TCurrencyField
      FieldName = 'VendorPrice'
    end
    object FDMemTableClientPrice: TCurrencyField
      FieldName = 'ClientPrice'
    end
    object FDMemTableBarCode: TStringField
      FieldName = 'BarCode'
      Size = 15
    end
    object FDMemTablePresent: TFloatField
      FieldName = 'Present'
    end
    object FDMemTableMeasure: TStringField
      FieldName = 'Measure'
      Size = 5
    end
    object FDMemTableCoeff: TFloatField
      FieldName = 'Coeff'
    end
    object FDMemTableMinimum: TFloatField
      FieldName = 'Minimum'
    end
    object FDMemTableFactor: TFloatField
      FieldName = 'Factor'
    end
    object FDMemTableDiscount: TFloatField
      FieldName = 'Discount'
    end
    object FDMemTableorgMeasure: TStringField
      FieldName = 'orgMeasure'
      Size = 5
    end
    object FDMemTableorgVendorPrice: TFloatField
      FieldName = 'orgVendorPrice'
    end
    object FDMemTableorgClientPrice: TFloatField
      FieldName = 'orgClientPrice'
    end
    object FDMemTableLot: TStringField
      FieldName = 'Lot'
      Size = 10
    end
    object FDMemTableVAT: TFloatField
      FieldName = 'VAT'
    end
  end
end
