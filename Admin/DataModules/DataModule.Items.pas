unit DataModule.Items;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin,
  Data.DB,
  Interfaces.Model.Classes.Items,
  Model.Classes.Items,
  Model.Classes.Item;

type
  TDataModuleItems = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
    DataSource: TDataSource;
    FDMemTableShortName: TStringField;
    FDMemTableCode: TStringField;
    FDMemTableVendorPrice: TStringField;
    FDMemTableClientPrice: TStringField;
    FDMemTableBaseMeasure: TStringField;
    FDMemTableBaseCoeff: TStringField;
    FDMemTableBasePrice: TStringField;
  private
    FItems: IModelClassItems;
  public
    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModuleItems: TDataModuleItems;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModuleItems }

procedure TDataModuleItems.LoadFromFile;
begin
  FItems := CreateFromFileModelClassItems;
  AssignDataSetModelClassItems(FDMemTable);
  AssignDataSetModelClassItem(FDMemTable);
  FItems.UpdateInDataSet;
end;

procedure TDataModuleItems.SaveToFile;
begin
  AssignDataSetModelClassItems(FDMemTable);
  AssignDataSetModelClassItem(FDMemTable);
  FItems.UpdateFromDataSet;
  FItems.SaveToFile;
end;

end.
