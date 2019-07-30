object DataModuleData: TDataModuleData
  OldCreateOrder = False
  Height = 150
  Width = 215
  object Table1: TTable
    DatabaseName = 'Z:\!anet4\Sources\FPTest2019\Data\COMMON\CONTRAGENTS\'
    TableName = 'companies.db'
    Left = 112
    Top = 24
  end
  object Database1: TDatabase
    Connected = True
    DatabaseName = 'CashRegister'
    DriverName = 'STANDARD'
    Params.Strings = (
      'path=Z:\!anet4\Sources\FPTest2019\Data\COMMON\CONTRAGENTS\')
    SessionName = 'Default'
    Left = 32
    Top = 24
  end
end
