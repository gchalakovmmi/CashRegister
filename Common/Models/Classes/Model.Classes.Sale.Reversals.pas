unit Model.Classes.Sale.Reversals;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Sale.Reversals;

  function CreateModelClassSaleReversals: IModelClassSaleReversals;
  function CreateFromJSONModelClassSaleReversals(const AJSONArray: TJSONArray): IModelClassSaleReversals;
  procedure AssignDataSetModelClassSaleReversals(const ADataSet: TFDDataSet);

implementation

uses
  System.Generics.Collections,
  Interfaces.Enums,
  Interfaces.Model.Classes.Sale.Reversal,
  Model.Classes.Sale.Reversal;

type
  TModelClassSaleReversals = class(TInterfacedObject, IModelClassSaleReversals)

  {$REGION 'Class Properties'}
  private class var
    FDataSet: TFDDataSet;
  public
    class property DataSet: TFDDataSet read FDataSet write FDataSet;
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
    FList: TList<IModelClassSaleReversal>;
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private

  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetList: TList<IModelClassSaleReversal>;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property List: TList<IModelClassSaleReversal> read GetList;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public
    procedure UpdateFromDataSet(const AParentGID: Integer);
    procedure UpdateInDataSet;
    function ToJSON: TJSONArray;
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    constructor CreateFromJSON(const AJSONArray: TJSONArray);
    destructor Destroy; override;
  {$ENDREGION}
  end;

function CreateModelClassSaleReversals: IModelClassSaleReversals;
begin
  Result := TModelClassSaleReversals.Create;
end;

function CreateFromJSONModelClassSaleReversals(const AJSONArray: TJSONArray): IModelClassSaleReversals;
begin
  Result := TModelClassSaleReversals.CreateFromJSON(AJSONArray);
end;

procedure AssignDataSetModelClassSaleReversals(const ADataSet: TFDDataSet);
begin
  TModelClassSaleReversals.DataSet := ADataSet;
end;

{ TModelClassSaleReversals }

{$REGION 'Private Methods'}

{$ENDREGION}

{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}

{$REGION 'Interfaced Properties Getters/Setters'}

function TModelClassSaleReversals.GetList: TList<IModelClassSaleReversal>;
begin
  Result := FList;
end;

{$ENDREGION}

{$REGION 'Interfaced Methods'}

procedure TModelClassSaleReversals.UpdateFromDataSet(const AParentGID: Integer);
var
  LSaleReversal: IModelClassSaleReversal;
  LFound: Boolean;
begin
  DataSet.First;
  while not DataSet.Eof do begin
    if DataSet.FieldByName('parent_gid').Value = AParentGID then begin
      LFound := False;
      for LSaleReversal in List do begin
        if LSaleReversal.GID = DataSet.FieldByName('gid').Value then begin
          LSaleReversal.UpdateFromDataSet;
          LFound := True;
          Break;
        end;
      end;
      if not LFound then begin
        LSaleReversal := CreateFromDataSetModelClassSaleReversal;
        List.Add(LSaleReversal);
      end;
    end;
    DataSet.Next;
  end;
end;

procedure TModelClassSaleReversals.UpdateInDataSet;
var
  LSaleReversal: IModelClassSaleReversal;
begin
  for LSaleReversal in List do begin
    LSaleReversal.UpdateInDataSet;
  end;
end;

function TModelClassSaleReversals.ToJSON: TJSONArray;
var
  LSaleReversal: IModelClassSaleReversal;
begin
  Result := TJSONArray.Create;
  for LSaleReversal in List do begin
    Result.Add(LSaleReversal.ToJSON);
  end;
end;

{$ENDREGION}

{$REGION 'Constructors/Destructors'}

constructor TModelClassSaleReversals.Create;
begin
  inherited;
  FList := TList<IModelClassSaleReversal>.Create;
end;

constructor TModelClassSaleReversals.CreateFromJSON(const AJSONArray: TJSONArray);
var
  LJSONValue: TJSONValue;
begin
  inherited;
  FList := TList<IModelClassSaleReversal>.Create;

  for LJSONValue in AJSONArray do begin
    FList.Add(CreateFromJSONModelClassSaleReversal(LJSONValue as TJSONObject));
  end;
end;

destructor TModelClassSaleReversals.Destroy;
begin
  FList.DisposeOf;
  inherited;
end;

{$ENDREGION}

end.

