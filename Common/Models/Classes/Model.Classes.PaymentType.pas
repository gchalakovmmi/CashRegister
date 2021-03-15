unit Model.Classes.PaymentType;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.PaymentType;

  procedure AssignDataSetModelClassPaymentType(const ADataSet: TFDDataSet);
  function CreateModelClassPaymentType: IModelClassPaymentType;
  function CreateFromJSONModelClassPaymentType(const AJSONObject: TJSONObject): IModelClassPaymentType;
  function CreateFromDataSetModelClassPaymentType: IModelClassPaymentType;

implementation

uses
  System.SysUtils,
  Model.Generator.GIDs,
  Model.Classes.BaseObject;

type
  ///<summary>Таблица - видове плащания</summary>
  TModelClassPaymentType = class(TModelClassBaseObject, IModelClassPaymentType)

  {$REGION 'Class Properties'}
  private class var

  public

  {$ENDREGION}


  {$REGION 'Private Methods'}
  private

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

  {$ENDREGION}


  {$REGION 'Interfaced Properties'}
  public
    ///<summary>код в системата на вида плащане<summary>
//    property GID: String read GetGID write SetGID;
    ///<summary>наименование на вида плащане<summary>
//    property Name: String read GetName write SetName;
    ///<summary>дата и час на първоначално конфигуриране на вида плащане в системата<summary>
//    property AttachedAt: String read GetAttachedAt write SetAttachedAt;
    ///<summary>дата и час на последна промяна на вида плащане<summary>
//    property ModifiedAt: String read GetModifiedAt write SetModifiedAt;
    ///<summary>дата и час на извеждане на вида плащане от употреба<summary>
//    property DetachedAt: String read GetDetachedAt write SetDetachedAt;
  {$ENDREGION}


  {$REGION 'Interfaced Methods'}
  public
  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
  {$ENDREGION}
  end;

{ TModelClassPaymentType }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelClassPaymentType.Create;
begin
  inherited Create;
  GID := TGeneratorGIDs.NewGIDByName('PaymentTypeGID').ToString;
end;

{$ENDREGION}

procedure AssignDataSetModelClassPaymentType(const ADataSet: TFDDataSet);
begin
  TModelClassPaymentType.AssignDataSet(ADataSet);
end;

function CreateModelClassPaymentType: IModelClassPaymentType;
begin
  Result := TModelClassPaymentType.Create;
end;

function CreateFromJSONModelClassPaymentType(const AJSONObject: TJSONObject): IModelClassPaymentType;
begin
  Result := TModelClassPaymentType.CreateFromJSON(AJSONObject);
end;

function CreateFromDataSetModelClassPaymentType: IModelClassPaymentType;
begin
  Result := TModelClassPaymentType.CreateFromDataSet;
end;

end.
