unit Model.Classes.Measure;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Measure;

  procedure AssignDataSetModelClassMeasure(const ADataSet: TFDDataSet);
  function CreateModelClassMeasure: IModelClassMeasure;
  function CreateFromJSONModelClassMeasure(const AJSONObject: TJSONObject): IModelClassMeasure;
  function CreateFromDataSetModelClassMeasure: IModelClassMeasure;

implementation

uses
  System.SysUtils,
  Model.Generator.GIDs,
  Model.Classes.BaseObject;

type
  ///<summary>Таблица - мерки/кодове</summary>
  TModelClassMeasure = class(TModelClassBaseObject, IModelClassMeasure)

  {$REGION 'Class Properties'}
  private class var

  public

  {$ENDREGION}


  {$REGION 'Private Methods'}
  private

  {$ENDREGION}


  {$REGION 'Private Fields'}
  private
    FItemGID: String;
    FCoeff: String;
    FMeasure: String;
    FBarcode: String;
    FFactor: String;
    FMinimum: String;
    FDiscount: String;
  {$ENDREGION}


  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties'}
  private

  {$ENDREGION}


  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetItemGID: String;
    procedure SetItemGID(const AValue: String);
    function GetCoeff: String;
    procedure SetCoeff(const AValue: String);
    function GetMeasure: String;
    procedure SetMeasure(const AValue: String);
    function GetBarcode: String;
    procedure SetBarcode(const AValue: String);
    function GetFactor: String;
    procedure SetFactor(const AValue: String);
    function GetMinimum: String;
    procedure SetMinimum(const AValue: String);
    function GetDiscount: String;
    procedure SetDiscount(const AValue: String);
  {$ENDREGION}


  {$REGION 'Interfaced Properties'}
  public
    ///<summary>код в системата на мярката/кода<summary>
//    property GID: String read GetGID write SetGID;
    ///<summary>код в системата на стоката/услугата<summary>
    property ItemGID: String read GetItemGID write SetItemGID;
    ///<summary>коефициент на мярката/кода<summary>
    property Coeff: String read GetCoeff write SetCoeff;
    ///<summary>мярка на мярката/кода<summary>
    property Measure: String read GetMeasure write SetMeasure;
    ///<summary>код/баркод на мярката/кода<summary>
    property Barcode: String read GetBarcode write SetBarcode;
    ///<summary>кратност на мярката/кода<summary>
    property Factor: String read GetFactor write SetFactor;
    ///<summary>минимум (количество при избор на този код) на мярката/кода<summary>
    property Minimum: String read GetMinimum write SetMinimum;
    ///<summary>отстъпка (при избиране на този код) на мярката/кода<summary>
    property Discount: String read GetDiscount write SetDiscount;
    ///<summary>дата и час на първоначално конфигуриране на мярката/кода в системата<summary>
//    property AttachedAt: String read GetAttachedAt write SetAttachedAt;
    ///<summary>дата и час на последна промяна на мярката/кода<summary>
//    property ModifiedAt: String read GetModifiedAt write SetModifiedAt;
    ///<summary>дата и час на извеждане на мярката/кода от употреба<summary>
//    property DetachedAt: String read GetDetachedAt write SetDetachedAt;
  {$ENDREGION}


  {$REGION 'Interfaced Methods'}
  public
    procedure UpdateFromDataSet; override;
    procedure UpdateInDataSet;  override;
    function ToJSON: TJSONObject;  override;
  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    constructor CreateFromJSON(const AJSONObject: TJSONObject);
  {$ENDREGION}
  end;

{ TModelClassMeasure }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TModelClassMeasure.GetItemGID: String;
begin
  Result := FItemGID;
end;

procedure TModelClassMeasure.SetItemGID(const AValue: String);
begin
  FItemGID := AValue;
end;

function TModelClassMeasure.GetCoeff: String;
begin
  Result := FCoeff;
end;

procedure TModelClassMeasure.SetCoeff(const AValue: String);
begin
  FCoeff := AValue;
end;

function TModelClassMeasure.GetMeasure: String;
begin
  Result := FMeasure;
end;

procedure TModelClassMeasure.SetMeasure(const AValue: String);
begin
  FMeasure := AValue;
end;

function TModelClassMeasure.GetBarcode: String;
begin
  Result := FBarcode;
end;

procedure TModelClassMeasure.SetBarcode(const AValue: String);
begin
  FBarcode := AValue;
end;

function TModelClassMeasure.GetFactor: String;
begin
  Result := FFactor;
end;

procedure TModelClassMeasure.SetFactor(const AValue: String);
begin
  FFactor := AValue;
end;

function TModelClassMeasure.GetMinimum: String;
begin
  Result := FMinimum;
end;

procedure TModelClassMeasure.SetMinimum(const AValue: String);
begin
  FMinimum := AValue;
end;

function TModelClassMeasure.GetDiscount: String;
begin
  Result := FDiscount;
end;

procedure TModelClassMeasure.SetDiscount(const AValue: String);
begin
  FDiscount := AValue;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TModelClassMeasure.UpdateFromDataSet;
begin
  inherited UpdateFromDataSet;
  ItemGID := DataSet.FieldByName('ItemGID').Value;
  Coeff := DataSet.FieldByName('Coeff').Value;
  Measure := DataSet.FieldByName('Measure').Value;
  Barcode := DataSet.FieldByName('Barcode').Value;
  Factor := DataSet.FieldByName('Factor').Value;
  Minimum := DataSet.FieldByName('Minimum').Value;
  Discount := DataSet.FieldByName('Discount').Value;
end;

procedure TModelClassMeasure.UpdateInDataSet;
begin
  inherited UpdateInDataSet;

  DataSet.Edit;
  DataSet.FieldByName('ItemGID').Value := ItemGID;
  DataSet.FieldByName('Coeff').Value := Coeff;
  DataSet.FieldByName('Measure').Value := Measure;
  DataSet.FieldByName('Barcode').Value := Barcode;
  DataSet.FieldByName('Factor').Value := Factor;
  DataSet.FieldByName('Minimum').Value := Minimum;
  DataSet.FieldByName('Discount').Value := Discount;
  DataSet.Post;
end;

function TModelClassMeasure.ToJSON: TJSONObject;
begin
  Result := inherited ToJSON;
  Result.AddPair('ItemGID', ItemGID);
  Result.AddPair('Coeff', Coeff);
  Result.AddPair('Measure', Measure);
  Result.AddPair('Barcode', Barcode);
  Result.AddPair('Factor', Factor);
  Result.AddPair('Minimum', Minimum);
  Result.AddPair('Discount', Discount);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelClassMeasure.Create;
begin
  inherited Create;
  GID := TGeneratorGIDs.NewGIDByName('MeasureGID').ToString;
end;

constructor TModelClassMeasure.CreateFromJSON(const AJSONObject: TJSONObject);
begin
  inherited CreateFromJSON(AJSONObject);
  ItemGID := (AJSONObject.GetValue('ItemGID') as TJSONString).Value;
  Coeff := (AJSONObject.GetValue('Coeff') as TJSONString).Value;
  Measure := (AJSONObject.GetValue('Measure') as TJSONString).Value;
  Barcode := (AJSONObject.GetValue('Barcode') as TJSONString).Value;
  Factor := (AJSONObject.GetValue('Factor') as TJSONString).Value;
  Minimum := (AJSONObject.GetValue('Minimum') as TJSONString).Value;
  Discount := (AJSONObject.GetValue('Discount') as TJSONString).Value;
end;

{$ENDREGION}

procedure AssignDataSetModelClassMeasure(const ADataSet: TFDDataSet);
begin
  TModelClassMeasure.AssignDataSet(ADataSet);
end;

function CreateModelClassMeasure: IModelClassMeasure;
begin
  Result := TModelClassMeasure.Create;
end;

function CreateFromJSONModelClassMeasure(const AJSONObject: TJSONObject): IModelClassMeasure;
begin
  Result := TModelClassMeasure.CreateFromJSON(AJSONObject);
end;

function CreateFromDataSetModelClassMeasure: IModelClassMeasure;
begin
  Result := TModelClassMeasure.CreateFromDataSet;
end;

end.
