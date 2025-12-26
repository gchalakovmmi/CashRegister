unit Model.Persistable.List;

interface

uses
  System.JSON,
  System.Generics.Collections,
  System.Generics.Defaults,
  System.Types,
  Data.DB,

  Model.Persistable;

type
  TModelPersistableList<T: TModelPersistable, constructor> = class

  {$REGION 'Private Methods'}
  private
    FList: TThreadList<T>;
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FOwnedObjects: Boolean;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private
    function GetList: TThreadList<T>;
  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
    property List: TThreadList<T> read GetList;
  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetCount: Integer;
    function GetItem(AIndex: Integer): T;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Count: Integer read GetCount;
    property Item[AIndex: Integer]: T read GetItem; default;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public
    // List access
    procedure Add(AItem: T);
    procedure InsertAt(APos: Integer; AItem: T);
    procedure DeleteAt(APos: Integer);
    procedure Prepend(AItem: T);
    procedure Clear;
    procedure Sort(const AComparer: IComparer<T>);

    function FindByGID(AGID: Integer): T;
    procedure Remove(AItem: T);
    procedure RemoveItem(const AItem: T; ADirection: TDirection);

    // IPersistable
    procedure Save;
    procedure Insert;
    procedure Update;
    procedure Delete;

    // IDataSetable
    procedure SaveToDataSet(ADataSet: TDataSet);
    procedure InsertIntoDataSet(ADataSet: TDataSet);
    procedure UpdateDataSet(ADataSet: TDataSet);
    procedure DeleteFromDataSet(ADataSet: TDataSet);

    // IFileable
    procedure ToFile(AFileName: String);

    // IJSONableList
    function ToJSON: TJSONArray;

    function SQLTableName: String;
    class function SQLParams(AExtraSQL: String): String;
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    constructor CreateNotOwned;
    constructor FromDataSet(ADataSet: TDataSet);
    constructor FromFile(AFileName: String);
    constructor FromJSON(AJSONArray: TJSONArray);
    constructor FromSQL(AExtraSQL: String = '');
    destructor Destroy; override;
  {$ENDREGION}
  end;

implementation

uses
  FMX.Dialogs,
  System.SysUtils,
  System.IOUtils,
  System.Rtti,
//  Model.SQLServer,
  Model.Persistable.Attribute;

{ TModelPersistableList<T> }

{$REGION 'Private Methods'}

{$ENDREGION}

{$REGION 'Private Properties Getters/Setters'}

function TModelPersistableList<T>.GetList: TThreadList<T>;
begin
  Result := FList;
end;

{$ENDREGION}

{$REGION 'Interfaced Properties Getters/Setters'}

function TModelPersistableList<T>.GetCount: Integer;
var
  LList: TList<T>;
begin
  LList := List.LockList;
  try
    Result := LList.Count;
  finally
    List.UnlockList;
  end;
end;

function TModelPersistableList<T>.GetItem(AIndex: Integer): T;
var
  LList: TList<T>;
begin
  Result := nil;
  LList := List.LockList;
  try
    Result := LList[AIndex];
  finally
    List.UnlockList;
  end;
end;

{$ENDREGION}

{$REGION 'Interfaced Methods'}

// List access
procedure TModelPersistableList<T>.Add(AItem: T);
begin
  if AItem <> nil then begin
    List.Add(AItem);
  end;
end;

procedure TModelPersistableList<T>.InsertAt(APos: Integer; AItem: T);
var
  LList: TList<T>;
begin
  LList := List.LockList;
  try
    LList.Insert(APos, AItem);
  finally
    List.UnlockList;
  end;
end;

procedure TModelPersistableList<T>.DeleteAt(APos: Integer);
var
  LList: TList<T>;
begin
  LList := List.LockList;
  try
    LList.Delete(APos);
  finally
    List.UnlockList;
  end;
end;

procedure TModelPersistableList<T>.Prepend(AItem: T);
begin
  InsertAt(0, AItem);
end;

procedure TModelPersistableList<T>.Clear;
begin
  List.Clear;
end;

procedure TModelPersistableList<T>.Sort(const AComparer: IComparer<T>);
var
  LList: TList<T>;
begin
  LList := List.LockList;
  try
    LList.Sort(AComparer);
  finally
    List.UnlockList;
  end;
end;

function TModelPersistableList<T>.FindByGID(AGID: Integer): T;
var
  LItem: T;
  i: Integer;
begin
  Result := nil;
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    if LItem.GID = AGID then begin
      Result := LItem;
    end;
  end;
end;

procedure TModelPersistableList<T>.Remove(AItem: T);
begin
  List.Remove(AItem);
end;

procedure TModelPersistableList<T>.RemoveItem(const AItem: T; ADirection: TDirection);
begin
  List.RemoveItem(AItem, ADirection);
end;

// IPersistable
procedure TModelPersistableList<T>.Save;
var
  LItem: T;
  i: Integer;
begin
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    LItem.Save;
  end;
end;

procedure TModelPersistableList<T>.Insert;
var
  LItem: T;
  i: Integer;
begin
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    LItem.Insert;
  end;
end;

procedure TModelPersistableList<T>.Update;
var
  LItem: T;
  i: Integer;
begin
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    LItem.Update;
  end;
end;

procedure TModelPersistableList<T>.Delete;
var
  LItem: T;
  i: Integer;
begin
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    LItem.Delete;
  end;
end;

// IDataSetable
procedure TModelPersistableList<T>.SaveToDataSet(ADataSet: TDataSet);
var
  LItem: T;
  i: Integer;
begin
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    LItem.SaveToDataSet(ADataSet);
  end;
end;

procedure TModelPersistableList<T>.InsertIntoDataSet(ADataSet: TDataSet);
var
  LItem: T;
  i: Integer;
begin
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    LItem.InsertIntoDataSet(ADataSet);
  end;
end;

procedure TModelPersistableList<T>.UpdateDataSet(ADataSet: TDataSet);
var
  LItem: T;
  i: Integer;
begin
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    LItem.UpdateDataSet(ADataSet);
  end;
end;

procedure TModelPersistableList<T>.DeleteFromDataSet(ADataSet: TDataSet);
var
  LItem: T;
  i: Integer;
begin
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    LItem.DeleteFromDataSet(ADataSet);
  end;
end;

// IFileable
procedure TModelPersistableList<T>.ToFile(AFileName: String);
var
  LJSONArray: TJSONArray;
begin
  LJSONArray := ToJSON;
  try
    try
      TFile.WriteAllText(AFileName, LJSONArray.ToString, TEncoding.UTF8);
    except on E: Exception do
      ShowMessage('TModelPersistableList<T>.ToFile exception: '+E.Message+' '+AFileName);
    end;
  finally
    FreeAndNil(LJSONArray);
  end;
end;

// IJSONableList
function TModelPersistableList<T>.ToJSON: TJSONArray;
var
  LItem: T;
  i: Integer;
begin
  Result := TJSONArray.Create;
  for i := 0 to Count - 1 do begin
    LItem := Item[i];
    Result.Add(LItem.ToJSON);
  end;
end;

function TModelPersistableList<T>.SQLTableName: String;
var
  LRttiContext: TRttiContext;
  LRttiType: TRttiType;
  LClassAttribute: TCustomAttribute;
begin
  Result := '';
  LRttiContext := TRttiContext.Create;
  try
    LRttiType := LRttiContext.GetType(Self.ClassType);

    for LClassAttribute in LRttiType.GetAttributes do begin
      if LClassAttribute is TModelPersistableAttribute then begin
        Result := TModelPersistableAttribute(LClassAttribute).Attribute;
      end;
    end;
  finally
    LRttiContext.Free;
  end;
end;

class function TModelPersistableList<T>.SQLParams(AExtraSQL: String): String;
begin
  Result := T.SQLParams(AExtraSQL);
end;

{$ENDREGION}

{$REGION 'Constructors/Destructors'}

constructor TModelPersistableList<T>.Create;
begin
  FList := TThreadList<T>.Create;
  FOwnedObjects := True;
end;

constructor TModelPersistableList<T>.CreateNotOwned;
begin
  FList := TThreadList<T>.Create;
  FOwnedObjects := False;
end;

constructor TModelPersistableList<T>.FromDataSet(ADataSet: TDataSet);
begin
  FOwnedObjects := True;
  FList := TThreadList<T>.Create;
  ADataSet.First;
  while not ADataSet.Eof do begin
    Add(T.FromDataSet(ADataSet));
    ADataSet.Next;
  end;
  ADataSet.First;
end;

constructor TModelPersistableList<T>.FromFile(AFileName: String);
var
  LJSONArray: TJSONArray;
  i: Integer;
  LText: String;
begin
  FOwnedObjects := True;
  FList := TThreadList<T>.Create;
  if FileExists(AFileName) then begin
    try
      LText := TFile.ReadAllText(AFileName, TEncoding.UTF8);
    except on E: Exception do
      ShowMessage('TModelPersistable.FromFile exception: '+E.Message+' '+AFileName);
    end;
    LJSONArray := TJSONObject.ParseJSONValue(LText) as TJSONArray;
    for i := 0 to LJSONArray.Count - 1 do begin
      Add(
        T.FromJSON(
          LJSONArray.Items[i] as TJSONObject
        )
      );
    end;
    LJSONArray.Free;
  end;
end;

constructor TModelPersistableList<T>.FromJSON(AJSONArray: TJSONArray);
var
  i: Integer;
begin
  FOwnedObjects := True;
  FList := TThreadList<T>.Create;
  if Assigned(AJSONArray) then begin
    for i := 0 to AJSONArray.Count - 1 do begin
      Add(
        T.FromJSON(
          AJSONArray.Items[i] as TJSONObject
        )
      );
    end;
  end;
end;

constructor TModelPersistableList<T>.FromSQL(AExtraSQL: String = '');
var
  LParamsString: String;
  LResultString: String;
  LResultJSONArray: TJSONArray;
  LSQLServer: TModelSQLServer;
begin
  FOwnedObjects := True;
  LParamsString := T.SQLParams(AExtraSQL);
  LSQLServer := TModelSQLServer.Create(nil);
  try
    LResultString := LSQLServer.GetPersistableList(LParamsString);
  finally
    LSQLServer.Free;
  end;
  LResultJSONArray := TJSONObject.ParseJSONValue(LResultString) as TJSONArray;
  FromJSON(LResultJSONArray);
  LResultJSONArray.Free;
end;

destructor TModelPersistableList<T>.Destroy;
var
  i: Integer;
begin
  if FOwnedObjects then begin
    for i := 0 to Count - 1 do begin
      Item[i].Free;
    end;
  end;

  FList.Free;
  inherited Destroy;
end;

{$ENDREGION}

end.
