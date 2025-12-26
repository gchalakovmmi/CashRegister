unit Model.Classes.Sale.Details;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Sale.Details;

  function CreateModelClassSaleDetails: IModelClassSaleDetails;
  function CreateFromJSONModelClassSaleDetails(const AJSONArray: TJSONArray): IModelClassSaleDetails;
  procedure AssignDataSetModelClassSaleDetails(const ADataSet: TFDDataSet);

implementation

uses
  System.Generics.Collections,
  Interfaces.Enums,
  Interfaces.Model.Classes.Sale.Detail,
  Model.Classes.Sale.Detail;

type
  TModelClassSaleDetails = class(TInterfacedObject, IModelClassSaleDetails)

  {$REGION 'Class Properties'}
  private class var
    FDataSet: TFDDataSet;
  public
    class property DataSet: TFDDataSet read FDataSet write FDataSet;
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
    FList: TList<IModelClassSaleDetail>;
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
    function GetList: TList<IModelClassSaleDetail>;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property List: TList<IModelClassSaleDetail> read GetList;
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

function CreateModelClassSaleDetails: IModelClassSaleDetails;
begin
  Result := TModelClassSaleDetails.Create;
end;

function CreateFromJSONModelClassSaleDetails(const AJSONArray: TJSONArray): IModelClassSaleDetails;
begin
  Result := TModelClassSaleDetails.CreateFromJSON(AJSONArray);
end;

procedure AssignDataSetModelClassSaleDetails(const ADataSet: TFDDataSet);
begin
  TModelClassSaleDetails.DataSet := ADataSet;
end;

{ TModelClassSaleDetails }

{$REGION 'Private Methods'}

{$ENDREGION}

{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}

{$REGION 'Interfaced Properties Getters/Setters'}

function TModelClassSaleDetails.GetList: TList<IModelClassSaleDetail>;
begin
  Result := FList;
end;

{$ENDREGION}

{$REGION 'Interfaced Methods'}

procedure TModelClassSaleDetails.UpdateFromDataSet(const AParentGID: Integer);
var
  LSaleDetail: IModelClassSaleDetail;
  LFound: Boolean;
begin
  DataSet.First;
  while not DataSet.Eof do begin
    if DataSet.FieldByName('parent_gid').Value = AParentGID then begin
      LFound := False;
      for LSaleDetail in List do begin
        if LSaleDetail.GID = DataSet.FieldByName('gid').Value then begin
          LSaleDetail.UpdateFromDataSet;
          LFound := True;
          Break;
        end;
      end;
      if not LFound then begin
        LSaleDetail := CreateFromDataSetModelClassSaleDetail;
        List.Add(LSaleDetail);
      end;
    end;
    DataSet.Next;
  end;
end;

procedure TModelClassSaleDetails.UpdateInDataSet;
var
  LSaleDetail: IModelClassSaleDetail;
begin
  for LSaleDetail in List do begin
    LSaleDetail.UpdateInDataSet;
  end;
end;

function TModelClassSaleDetails.ToJSON: TJSONArray;
var
  LSaleDetail: IModelClassSaleDetail;
begin
  Result := TJSONArray.Create;
  for LSaleDetail in List do begin
    Result.Add(LSaleDetail.ToJSON);
  end;
end;

{$ENDREGION}

{$REGION 'Constructors/Destructors'}

constructor TModelClassSaleDetails.Create;
begin
  inherited;
  FList := TList<IModelClassSaleDetail>.Create;
end;

constructor TModelClassSaleDetails.CreateFromJSON(const AJSONArray: TJSONArray);
var
  LJSONObject: TJSONValue;
begin
  inherited;
  FList := TList<IModelClassSaleDetail>.Create;

  for LJSONObject in AJSONArray do begin
    FList.Add(CreateFromJSONModelClassSaleDetail(LJSONObject as TJSONObject));
  end;
end;

destructor TModelClassSaleDetails.Destroy;
begin
  FList.DisposeOf;
  inherited;
end;

{$ENDREGION}

end.

