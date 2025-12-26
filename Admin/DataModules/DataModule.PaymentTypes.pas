unit DataModule.PaymentTypes;

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
  Interfaces.Model.Classes.PaymentTypes,
  Model.Classes.PaymentTypes,
  Model.Classes.PaymentType;

type
  TDataModulePaymentTypes = class(TDataModule)
    FDMemTable: TFDMemTable;
      FDMemTableGID: TStringField;
      FDMemTableName: TStringField;
      FDMemTableAttachedAt: TStringField;
      FDMemTableModifiedAt: TStringField;
      FDMemTableDetachedAt: TStringField;
    DataSource: TDataSource;
  private
    FPaymentTypes: IModelClassPaymentTypes;
  public
    procedure LoadFromFile;
    procedure SaveToFile;
  end;

var
  DataModulePaymentTypes: TDataModulePaymentTypes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModulePaymentTypes }

procedure TDataModulePaymentTypes.LoadFromFile;
begin
  FPaymentTypes := CreateFromFileModelClassPaymentTypes;
  AssignDataSetModelClassPaymentTypes(FDMemTable);
  AssignDataSetModelClassPaymentType(FDMemTable);
  FPaymentTypes.UpdateInDataSet;
end;

procedure TDataModulePaymentTypes.SaveToFile;
begin
  AssignDataSetModelClassPaymentTypes(FDMemTable);
  AssignDataSetModelClassPaymentType(FDMemTable);
  FPaymentTypes.UpdateFromDataSet;
  FPaymentTypes.SaveToFile;
end;

end.

