unit DataModule.Measures;

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
  Interfaces.Model.Classes.Measures,
  Model.Classes.Measures,
  Model.Classes.Measure;

type
  TDataModuleMeasures = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTableItemGID: TStringField;
      FDMemTableItemName: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
      FDMemTableCoeff: TStringField;
      FDMemTableMeasure: TStringField;
      FDMemTableBarcode: TStringField;
      FDMemTableFactor: TStringField;
      FDMemTableMinimum: TStringField;
      FDMemTableDiscount: TStringField;
    DataSource: TDataSource;
    procedure FDMemTableItemNameChange(Sender: TField);
  private
    FMeasures: IModelClassMeasures;
  public
    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModuleMeasures: TDataModuleMeasures;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  DataModule.Items;

{ TDataModuleMeasures }

procedure TDataModuleMeasures.FDMemTableItemNameChange(Sender: TField);
begin
  if DataModuleItems.FDMemTable.Locate('Name', FDMemTableItemName.AsString, []) then begin
    FDMemTableItemGID.AsString := DataModuleItems.FDMemTableGID.AsString;
  end;
end;

procedure TDataModuleMeasures.LoadFromFile;
begin
  FMeasures := CreateFromFileModelClassMeasures;
  AssignDataSetModelClassMeasures(FDMemTable);
  AssignDataSetModelClassMeasure(FDMemTable);
  FMeasures.UpdateInDataSet;
end;

procedure TDataModuleMeasures.SaveToFile;
begin
  AssignDataSetModelClassMeasures(FDMemTable);
  AssignDataSetModelClassMeasure(FDMemTable);
  FMeasures.UpdateFromDataSet;
  FMeasures.SaveToFile;
end;

end.
