object DataModuleSales: TDataModuleSales
  OldCreateOrder = False
  Height = 203
  Width = 302
  object FDMemTableSales: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 56
    Top = 32
    object FDMemTableSalesGID: TStringField
      FieldName = 'GID'
    end
    object FDMemTableSalesSaleUniqueID: TStringField
      FieldName = 'SaleUniqueID'
      Size = 21
    end
    object FDMemTableSalesCreatedDate: TStringField
      FieldName = 'CreatedDate'
    end
    object FDMemTableSalesCreatedTime: TStringField
      FieldName = 'CreatedTime'
    end
    object FDMemTableSalesDue: TStringField
      FieldName = 'Due'
    end
  end
  object FDMemTableSaleDetails: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 56
    Top = 120
    object FDMemTableSaleDetailsGID: TStringField
      FieldName = 'GID'
    end
    object FDMemTableSaleDetailsItemName: TStringField
      FieldName = 'ItemName'
      Size = 60
    end
    object FDMemTableSaleDetailsMeasire: TStringField
      FieldName = 'Measire'
    end
    object FDMemTableSaleDetailsQuantity: TStringField
      FieldName = 'Quantity'
    end
    object FDMemTableSaleDetailsPrice: TStringField
      FieldName = 'Price'
    end
    object FDMemTableSaleDetailsTotal: TStringField
      FieldName = 'Total'
    end
  end
  object DataSourceSales: TDataSource
    DataSet = FDMemTableSales
    Left = 208
    Top = 32
  end
  object DataSourceSaleDetails: TDataSource
    DataSet = FDMemTableSaleDetails
    Left = 208
    Top = 120
  end
end
