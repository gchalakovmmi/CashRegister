unit DataModule.Sales;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModuleSales = class(TDataModule)
    DataSourceSales: TDataSource;
      FDMemTableSales: TFDMemTable;
        FDMemTableSalesGID: TStringField;
        FDMemTableSalesSaleUniqueID: TStringField;
        FDMemTableSalesCreatedDate: TStringField;
        FDMemTableSalesCreatedTime: TStringField;
        FDMemTableSalesDue: TStringField;

    DataSourceSaleDetails: TDataSource;
      FDMemTableSaleDetails: TFDMemTable;
        FDMemTableSaleDetailsGID: TStringField;
        FDMemTableSaleDetailsItemName: TStringField;
        FDMemTableSaleDetailsMeasire: TStringField;
        FDMemTableSaleDetailsQuantity: TStringField;
        FDMemTableSaleDetailsPrice: TStringField;
        FDMemTableSaleDetailsTotal: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleSales: TDataModuleSales;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
