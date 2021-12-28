object ServerContainer1: TServerContainer1
  OldCreateOrder = False
  Height = 450
  Width = 682
  object DSServer1: TDSServer
    Left = 96
    Top = 11
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 200
    Top = 11
  end
end
