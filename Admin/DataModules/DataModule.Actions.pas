unit DataModule.Actions;

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
  Interfaces.Model.Classes.Actions,
  Model.Classes.Actions,
  Model.Classes.Action;

type
  TDataModuleActions = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
    DataSource: TDataSource;
  private
    FActions: IModelClassActions;
  public
    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModuleActions: TDataModuleActions;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModuleActions }

procedure TDataModuleActions.LoadFromFile;
begin
  FActions := CreateFromFileModelClassActions;
  AssignDataSetModelClassActions(FDMemTable);
  AssignDataSetModelClassAction(FDMemTable);
  FActions.UpdateInDataSet;
end;

procedure TDataModuleActions.SaveToFile;
begin
  AssignDataSetModelClassActions(FDMemTable);
  AssignDataSetModelClassAction(FDMemTable);
  FActions.UpdateFromDataSet;
  FActions.SaveToFile;
end;

end.

