unit DataModule.Workstations;

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
  Interfaces.Model.Classes.Workstations,
  Model.Classes.Workstations,
  Model.Classes.Workstation;

type
  TDataModuleWorkstations = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTableStoreGID: TStringField;
      FDMemTableStoreName: TStringField;
      FDMemTableFiscalDeviceGID: TStringField;
      FDMemTableFiscalDeviceName: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
    DataSource: TDataSource;
    procedure FDMemTableStoreNameChange(Sender: TField);
    procedure FDMemTableFiscalDeviceNameChange(Sender: TField);
  private
    FWorkstations: IModelClassWorkstations;
  public
    property Workstations: IModelClassWorkstations read FWorkstations;

    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModuleWorkstations: TDataModuleWorkstations;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  DataModule.Stores,
  DataModule.FiscalDevices;

{$R *.dfm}

{ TDataModuleWorkstations }

procedure TDataModuleWorkstations.FDMemTableStoreNameChange(Sender: TField);
begin
  if DataModuleStores.FDMemTable.Locate('Name', FDMemTableStoreName.AsString, []) then begin
    FDMemTableStoreGID.AsString := DataModuleStores.FDMemTableGID.AsString;
  end;
end;

procedure TDataModuleWorkstations.FDMemTableFiscalDeviceNameChange(Sender: TField);
begin
  if DataModuleFiscalDevices.FDMemTable.Locate('Name', FDMemTableFiscalDeviceName.AsString, []) then begin
    FDMemTableFiscalDeviceGID.AsString := DataModuleFiscalDevices.FDMemTableGID.AsString;
  end;
end;

procedure TDataModuleWorkstations.LoadFromFile;
begin
  FWorkstations := CreateFromFileModelClassWorkstations;
  AssignDataSetModelClassWorkstations(FDMemTable);
  AssignDataSetModelClassWorkstation(FDMemTable);
  FWorkstations.UpdateInDataSet;
end;

procedure TDataModuleWorkstations.SaveToFile;
begin
  AssignDataSetModelClassWorkstations(FDMemTable);
  AssignDataSetModelClassWorkstation(FDMemTable);
  FWorkstations.UpdateFromDataSet;
  FWorkstations.SaveToFile;
end;

end.

