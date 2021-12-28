unit DataModule.Clients;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Datasnap.DBClient,
  Bde.DBTables,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModuleClients = class(TDataModule)
    DataSource: TDataSource;
      FDMemTable: TFDMemTable;
        FDMemTableID: TIntegerField;
        FDMemTableName: TStringField;
        FDMemTableAddress: TStringField;
        FDMemTableContact: TStringField;
        FDMemTableVIP: TBooleanField;
        FDMemTableSurcharge: TFloatField;
        FDMemTableLoyaltyCardNumber: TStringField;
    FDMemTableTaxNumber: TStringField;


  {$REGION 'Published Methods'}
    procedure FDMemTableFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private

  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FKeyWord: String;

    FSelectedID: integer;
    FSelectedTAXNUMBER: string;
    FSelectedNAME: string;
    FSelectedVIP: Boolean;
    FSelectedMARKUP: real;
    FSelectedLOYALTYCARDNUMBER: string;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private

  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    procedure SetKeyWord(const AValue: String);

  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property KeyWord: String read FKeyWord write SetKeyWord;

    property SelectedID : integer read FSelectedID write FSelectedID;
    property SelectedTAXNUMBER : string read FSelectedTAXNUMBER write FSelectedTAXNUMBER;
    property SelectedNAME : string read FSelectedNAME write FSelectedNAME;
    property SelectedVIP : Boolean read FSelectedVIP write FSelectedVIP;
    property SelectedMARKUP : real read FSelectedMARKUP write FSelectedMARKUP;
    property SelectedLOYALTYCARDNUMBER : string read FSelectedLOYALTYCARDNUMBER write FSelectedLOYALTYCARDNUMBER;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public
    procedure RefreshData;
    procedure Refilter;
    procedure ClearSelected;
    procedure SelectCommonClient;
    procedure Select;
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}

  end;

var
  DataModuleClients: TDataModuleClients;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  Winapi.Windows,
  System.IOUtils,
  System.Variants,
  Globals,
  Helper.MyFuncs,
  View.Message;

{ TDataModuleClients }

{$REGION 'Published Methods'}

procedure TDataModuleClients.FDMemTableFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  if FKeyWord <> '' then begin
      Accept := (FKeyWord = DataSet.FieldByName('TAXNUMBER').AsString) or
                (FKeyWord = DataSet.FieldByName('LOYALTYCARDNUMBER').AsString) or
                (Match(AnsiUpperCase(FKeyWord), AnsiUpperCase(DataSet.FieldByName('NAME').AsString)));
  end else begin
    Accept := True;
  end;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

procedure TDataModuleClients.SetKeyWord(const AValue: String);
begin
  FKeyWord := AValue;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TDataModuleClients.RefreshData;
var
  LQuery: TQuery;
  LActive: Boolean;
  LID: Integer;
begin
  ViewMessage.ShowBadMessage('Обновяване на клиенти ...');
  LID := 0;
  LActive := DataSource.DataSet.Active;
  if LActive then LID := DataSource.DataSet.FieldByName('ID').AsInteger;

  FDMemTable.DisableControls;
  FDMemTable.Close;
  FDMemTable.CreateDataSet;
  FDMemTable.Filtered := False;

  LQuery := TQuery.Create(Self);
  LQuery.DatabaseName := G.ContragentsFolder;
  LQuery.SQL.Clear;
  LQuery.SQL.Add('SELECT ID, TAXNUMBER, NAME, VIP, MARKUP, LOYALTYCARD FROM Companies');
  LQuery.SQL.Add('WHERE (Companies.Act = ''*'')');
  LQuery.SQL.Add('ORDER BY NAME');

  LQuery.Open;
  while not LQuery.Eof do begin
    FDMemTable.Append;
    FDMemTable.FieldByName('ID').AsInteger := LQuery.FieldByName('ID').AsInteger;
    FDMemTable.FieldByName('TAXNUMBER').AsString := LQuery.FieldByName('TAXNUMBER').AsString;
    FDMemTable.FieldByName('NAME').AsString := LQuery.FieldByName('NAME').AsString;
    FDMemTable.FieldByName('VIP').AsBoolean := (LQuery.FieldByName('VIP').AsString = '*');
    FDMemTable.FieldByName('SURCHARGE').AsFloat := LQuery.FieldByName('MARKUP').AsFloat;
    FDMemTable.FieldByName('LOYALTYCARDNUMBER').AsString := LQuery.FieldByName('LOYALTYCARD').AsString;
    FDMemTable.Post;
    LQuery.Next;
  end;
  LQuery.Close;

  FDMemTable.Filtered := True;
  FDMemTable.First;

  if LActive then FDMemTable.Locate('ID', LID, []);
  FDMemTable.EnableControls;

  ViewMessage.Hide;
end;

procedure TDataModuleClients.Refilter;
var
  LID: Integer;
  LLoyaltyCardNumber: String;
begin
  LID := DataSource.DataSet.FieldByName('ID').AsInteger;
  LLoyaltyCardNumber := DataSource.DataSet.FieldByName('LOYALTYCARDNUMBER').AsString;
  DataSource.DataSet.DisableControls;
  DataSource.DataSet.Filtered := False;
  DataSource.DataSet.Filtered := True;
  DataSource.DataSet.Locate('ID;LOYALTYCARDNUMBER', VarArrayOf([LID, LLoyaltyCardNumber]), []);
  DataSource.DataSet.EnableControls;
end;

procedure TDataModuleClients.ClearSelected;
begin
  SelectedID := 0;
  SelectedTAXNUMBER := '';
  SelectedNAME := '';
  SelectedVIP := False;
  SelectedMARKUP := 0;
  SelectedLOYALTYCARDNUMBER := '';
end;

procedure TDataModuleClients.SelectCommonClient;
begin

end;

procedure TDataModuleClients.Select;
begin
  if DataSource.DataSet.RecordCount = 0 then begin
    Beep(440, 500);
    ViewMessage.ShowBadMessagePlus('НЕ Е ИЗБРАН КЛИЕНТ');
    ClearSelected;
    Exit;
  end;
  SelectedID := DataSource.DataSet.FieldByName('ID').AsInteger;
  SelectedTAXNUMBER := DataSource.DataSet.FieldByName('TAXNUMBER').AsString;
  SelectedNAME := DataSource.DataSet.FieldByName('NAME').AsString;
  SelectedVIP := DataSource.DataSet.FieldByName('VIP').AsBoolean;
  SelectedMARKUP := DataSource.DataSet.FieldByName('SURCHARGE').AsFloat;
  SelectedLOYALTYCARDNUMBER := DataSource.DataSet.FieldByName('LOYALTYCARDNUMBER').AsString;

  if SelectedNAME = '' then begin
    ViewMessage.ShowBadMessagePlus('Избран е клиент без име!');
  end;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

end.
