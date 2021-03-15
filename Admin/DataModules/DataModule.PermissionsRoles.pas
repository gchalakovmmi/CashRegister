unit DataModule.PermissionsRoles;

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
  Interfaces.Model.Classes.PermissionsRoles,
  Model.Classes.PermissionsRoles,
  Model.Classes.PermissionRole;

type
  TDataModulePermissionsRoles = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTablePermissionGID: TStringField;
      FDMemTablePermissionName: TStringField;
      FDMemTableRoleGID: TStringField;
      FDMemTableRoleName: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
    DataSource: TDataSource;
    procedure FDMemTablePermissionNameChange(Sender: TField);
    procedure FDMemTableRoleNameChange(Sender: TField);
  private
    FPermissionRoles: IModelClassPermissionsRoles;
  public
    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModulePermissionsRoles: TDataModulePermissionsRoles;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  DataModule.Permissions,
  DataModule.Roles;

{ TDataModulePermissionRoles }

procedure TDataModulePermissionsRoles.FDMemTablePermissionNameChange(Sender: TField);
begin
  if DataModulePermissions.FDMemTable.Locate('Name', FDMemTablePermissionName.AsString, []) then begin
    FDMemTablePermissionGID.AsString := DataModulePermissions.FDMemTableGID.AsString;
  end;
end;

procedure TDataModulePermissionsRoles.FDMemTableRoleNameChange(Sender: TField);
begin
  if DataModuleRoles.FDMemTable.Locate('Name', FDMemTableRoleName.AsString, []) then begin
    FDMemTableRoleGID.AsString := DataModuleRoles.FDMemTableGID.AsString;
  end;
end;

procedure TDataModulePermissionsRoles.LoadFromFile;
begin
  FPermissionRoles := CreateFromFileModelClassPermissionsRoles;
  AssignDataSetModelClassPermissionsRoles(FDMemTable);
  AssignDataSetModelClassPermissionRole(FDMemTable);
  FPermissionRoles.UpdateInDataSet;
end;

procedure TDataModulePermissionsRoles.SaveToFile;
begin
  AssignDataSetModelClassPermissionsRoles(FDMemTable);
  AssignDataSetModelClassPermissionRole(FDMemTable);
  FPermissionRoles.UpdateFromDataSet;
  FPermissionRoles.SaveToFile;
end;

end.

