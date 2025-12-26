unit DataModule.RolesUsers;

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
  Interfaces.Model.Classes.RolesUsers,
  Model.Classes.RolesUsers,
  Model.Classes.RoleUser;

type
  TDataModuleRolesUsers = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTableRoleGID: TStringField;
      FDMemTableRoleName: TStringField;
      FDMemTableUserGID: TStringField;
      FDMemTableUserName: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
    DataSource: TDataSource;
    procedure FDMemTableRoleNameChange(Sender: TField);
    procedure FDMemTableUserNameChange(Sender: TField);
  private
    FRolesUsers: IModelClassRolesUsers;
  public
    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModuleRolesUsers: TDataModuleRolesUsers;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  DataModule.Roles,
  DataModule.Users;

{ TDataModuleRolesUsers }

procedure TDataModuleRolesUsers.FDMemTableRoleNameChange(Sender: TField);
begin
  if DataModuleRoles.FDMemTable.Locate('Name', FDMemTableRoleName.AsString, []) then begin
    FDMemTableRoleGID.AsString := DataModuleRoles.FDMemTableGID.AsString;
  end;
end;

procedure TDataModuleRolesUsers.FDMemTableUserNameChange(Sender: TField);
begin
  if DataModuleUsers.FDMemTable.Locate('Name', FDMemTableUserName.AsString, []) then begin
    FDMemTableUserGID.AsString := DataModuleUsers.FDMemTableGID.AsString;
  end;
end;

procedure TDataModuleRolesUsers.LoadFromFile;
begin
  FRolesUsers := CreateFromFileModelClassRolesUsers;
  AssignDataSetModelClassRolesUsers(FDMemTable);
  AssignDataSetModelClassRoleUser(FDMemTable);
  FRolesUsers.UpdateInDataSet;
end;

procedure TDataModuleRolesUsers.SaveToFile;
begin
  AssignDataSetModelClassRolesUsers(FDMemTable);
  AssignDataSetModelClassRoleUser(FDMemTable);
  FRolesUsers.UpdateFromDataSet;
  FRolesUsers.SaveToFile;
end;

end.

