unit DataModule.Permissions;

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
  Interfaces.Model.Classes.Permissions,
  Model.Classes.Permissions,
  Model.Classes.Permission;

type
  TDataModulePermissions = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTableDescription: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
    DataSource: TDataSource;
  private
    FPermissions: IModelClassPermissions;
  public
    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModulePermissions: TDataModulePermissions;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModulePermissions }

procedure TDataModulePermissions.LoadFromFile;
begin
  FPermissions := CreateFromFileModelClassPermissions;
  AssignDataSetModelClassPermissions(FDMemTable);
  AssignDataSetModelClassPermission(FDMemTable);
  FPermissions.UpdateInDataSet;
end;

procedure TDataModulePermissions.SaveToFile;
begin
  AssignDataSetModelClassPermissions(FDMemTable);
  AssignDataSetModelClassPermission(FDMemTable);
  FPermissions.UpdateFromDataSet;
  FPermissions.SaveToFile;
end;

end.

