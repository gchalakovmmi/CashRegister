unit DataModule.Roles;

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
  Interfaces.Model.Classes.Roles,
  Model.Classes.Roles,
  Model.Classes.Role;

type
  TDataModuleRoles = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
    DataSource: TDataSource;
  private
    FRoles: IModelClassRoles;
  public
    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModuleRoles: TDataModuleRoles;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModuleRoles }

procedure TDataModuleRoles.LoadFromFile;
begin
  FRoles := CreateFromFileModelClassRoles;
  AssignDataSetModelClassRoles(FDMemTable);
  AssignDataSetModelClassRole(FDMemTable);
  FRoles.UpdateInDataSet;
end;

procedure TDataModuleRoles.SaveToFile;
begin
  AssignDataSetModelClassRoles(FDMemTable);
  AssignDataSetModelClassRole(FDMemTable);
  FRoles.UpdateFromDataSet;
  FRoles.SaveToFile;
end;

end.

