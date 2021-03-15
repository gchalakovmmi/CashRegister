unit Model.Classes.Sale.Payments;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Sale.Payments;

  function CreateModelClassSalePayments: IModelClassSalePayments;
  function CreateFromJSONModelClassSalePayments(const AJSONArray: TJSONArray): IModelClassSalePayments;
  procedure AssignDataSetModelClassSalePayments(const ADataSet: TFDDataSet);

implementation

uses
  System.Generics.Collections,
  Interfaces.Enums,
  Interfaces.Model.Classes.Sale.Payment,
  Model.Classes.Sale.Payment;

type
  TModelClassSalePayments = class(TInterfacedObject, IModelClassSalePayments)

  {$REGION 'Class Properties'}
  private class var
    FDataSet: TFDDataSet;
  public
    class property DataSet: TFDDataSet read FDataSet write FDataSet;
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
    FList: TList<IModelClassSalePayment>;
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
    function GetList: TList<IModelClassSalePayment>;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property List: TList<IModelClassSalePayment> read GetList;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public
    procedure UpdateFromDataSet(const AParentGID: Integer);
    procedure UpdateInDataSet;
    function ToJSON: TJSONArray;

    function Include(const AType, AAmount: String): Boolean;
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    constructor CreateFromJSON(const AJSONArray: TJSONArray);
    destructor Destroy; override;
  {$ENDREGION}
  end;

function CreateModelClassSalePayments: IModelClassSalePayments;
begin
  Result := TModelClassSalePayments.Create;
end;

function CreateFromJSONModelClassSalePayments(const AJSONArray: TJSONArray): IModelClassSalePayments;
begin
  Result := TModelClassSalePayments.CreateFromJSON(AJSONArray);
end;

procedure AssignDataSetModelClassSalePayments(const ADataSet: TFDDataSet);
begin
  TModelClassSalePayments.DataSet := ADataSet;
end;

{ TModelClassSalePayments }

{$REGION 'Private Methods'}

{$ENDREGION}

{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}

{$REGION 'Interfaced Properties Getters/Setters'}

function TModelClassSalePayments.GetList: TList<IModelClassSalePayment>;
begin
  Result := FList;
end;

{$ENDREGION}

{$REGION 'Interfaced Methods'}

procedure TModelClassSalePayments.UpdateFromDataSet(const AParentGID: Integer);
var
  LSalePayment: IModelClassSalePayment;
  LFound: Boolean;
begin
  DataSet.First;
  while not DataSet.Eof do begin
    if DataSet.FieldByName('parent_gid').Value = AParentGID then begin
      LFound := False;
      for LSalePayment in List do begin
        if LSalePayment.GID = DataSet.FieldByName('gid').Value then begin
          LSalePayment.UpdateFromDataSet;
          LFound := True;
          Break;
        end;
      end;
      if not LFound then begin
        LSalePayment := CreateFromDataSetModelClassSalePayment;
        List.Add(LSalePayment);
      end;
    end;
    DataSet.Next;
  end;
end;

procedure TModelClassSalePayments.UpdateInDataSet;
var
  LSalePayment: IModelClassSalePayment;
begin
  for LSalePayment in List do begin
    LSalePayment.UpdateInDataSet;
  end;
end;

function TModelClassSalePayments.ToJSON: TJSONArray;
var
  LSalePayment: IModelClassSalePayment;
begin
  Result := TJSONArray.Create;
  for LSalePayment in List do begin
    Result.Add(LSalePayment.ToJSON);
  end;
end;

function TModelClassSalePayments.Include(const AType, AAmount: String): Boolean;
var
  LSalePayment: IModelClassSalePayment;
begin
  for LSalePayment in List do begin
    if (LSalePayment.PaymentType = AType) and (LSalePayment.Payment = AAmount) then begin
      Exit(True);
    end;
  end;
  Exit(False);
end;


{$ENDREGION}

{$REGION 'Constructors/Destructors'}

constructor TModelClassSalePayments.Create;
begin
  inherited;
  FList := TList<IModelClassSalePayment>.Create;
end;

constructor TModelClassSalePayments.CreateFromJSON(const AJSONArray: TJSONArray);
var
  LJSONValue: TJSONValue;
begin
  inherited;
  FList := TList<IModelClassSalePayment>.Create;

  for LJSONValue in AJSONArray do begin
    FList.Add(CreateFromJSONModelClassSalePayment(LJSONValue as TJSONObject));
  end;
end;

destructor TModelClassSalePayments.Destroy;
begin
  FList.DisposeOf;
  inherited;
end;

{$ENDREGION}

end.

