unit DataModule.Clients;

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
  Interfaces.Model.Classes.Clients,
  Model.Classes.Clients,
  Model.Classes.Client;

type
  TDataModuleClients = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTableAddress: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
    DataSource: TDataSource;
    FDMemTableTaxID: TStringField;
    FDMemTableContact: TStringField;
    FDMemTableVIP: TStringField;
    FDMemTableMarkUp: TStringField;
    FDMemTableLoyaltyCard: TStringField;
  private
    FClients: IModelClassClients;
  public
    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModuleClients: TDataModuleClients;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModuleClients }

procedure TDataModuleClients.LoadFromFile;
begin
  FClients := CreateFromFileModelClassClients;
  AssignDataSetModelClassClients(FDMemTable);
  AssignDataSetModelClassClient(FDMemTable);
  FClients.UpdateInDataSet;
end;

procedure TDataModuleClients.SaveToFile;
begin
  AssignDataSetModelClassClients(FDMemTable);
  AssignDataSetModelClassClient(FDMemTable);
  FClients.UpdateFromDataSet;
  FClients.SaveToFile;
end;

end.
