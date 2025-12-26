unit Model.Classes.Client;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Client;

  procedure AssignDataSetModelClassClient(const ADataSet: TFDDataSet);
  function CreateModelClassClient: IModelClassClient;
  function CreateFromJSONModelClassClient(const AJSONObject: TJSONObject): IModelClassClient;
  function CreateFromDataSetModelClassClient: IModelClassClient;

implementation

uses
  System.SysUtils,
  Model.Generator.GIDs,
  Model.Classes.BaseObject;

type
  ///<summary>Таблица - клиенти</summary>
  TModelClassClient = class(TModelClassBaseObject, IModelClassClient)

  {$REGION 'Class Properties'}
  private class var

  public

  {$ENDREGION}


  {$REGION 'Private Methods'}
  private

  {$ENDREGION}


  {$REGION 'Private Fields'}
  private
    FTaxID: String;
    FAddress: String;
    FContact: String;
    FVIP: String;
    FMarkUp: String;
    FLoyaltyCard: String;
  {$ENDREGION}


  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties'}
  private

  {$ENDREGION}


  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetTaxID: String;
    procedure SetTaxID(const AValue: String);
    function GetAddress: String;
    procedure SetAddress(const AValue: String);
    function GetContact: String;
    procedure SetContact(const AValue: String);
    function GetVIP: String;
    procedure SetVIP(const AValue: String);
    function GetMarkUp: String;
    procedure SetMarkUp(const AValue: String);
    function GetLoyaltyCard: String;
    procedure SetLoyaltyCard(const AValue: String);
  {$ENDREGION}


  {$REGION 'Interfaced Properties'}
  public
    ///<summary>код в системата на клиента<summary>
//    property GID: String read GetGID write SetGID;
    ///<summary>наименование на клиента<summary>
//    property Name: String read GetName write SetName;
    ///<summary>идентификатор (ЕИК, ЕГН, друг) на клиента<summary>
    property TaxID: String read GetTaxID write SetTaxID;
    ///<summary>адрес на клиента<summary>
    property Address: String read GetAddress write SetAddress;
    ///<summary>лице за контакт (МОЛ) на клиента<summary>
    property Contact: String read GetContact write SetContact;
    ///<summary>специален статус на клиента<summary>
    property VIP: String read GetVIP write SetVIP;
    ///<summary>надценка на клиента<summary>
    property MarkUp: String read GetMarkUp write SetMarkUp;
    ///<summary>номер на карта за лоялност на клиента<summary>
    property LoyaltyCard: String read GetLoyaltyCard write SetLoyaltyCard;
    ///<summary>дата и час на първоначално конфигуриране на клиента в системата<summary>
//    property AttachedAt: String read GetAttachedAt write SetAttachedAt;
    ///<summary>дата и час на последна промяна на клиента<summary>
//    property ModifiedAt: String read GetModifiedAt write SetModifiedAt;
    ///<summary>дата и час на извеждане на клиента от употреба<summary>
//    property DetachedAt: String read GetDetachedAt write SetDetachedAt;
  {$ENDREGION}


  {$REGION 'Interfaced Methods'}
  public
    procedure UpdateFromDataSet; override;
    procedure UpdateInDataSet; override;
    function ToJSON: TJSONObject; override;
  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    constructor CreateFromJSON(const AJSONObject: TJSONObject);
  {$ENDREGION}
  end;

{ TModelClassClient }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TModelClassClient.GetTaxID: String;
begin
  Result := FTaxID;
end;

procedure TModelClassClient.SetTaxID(const AValue: String);
begin
  FTaxID := AValue;
end;

function TModelClassClient.GetAddress: String;
begin
  Result := FAddress;
end;

procedure TModelClassClient.SetAddress(const AValue: String);
begin
  FAddress := AValue;
end;

function TModelClassClient.GetContact: String;
begin
  Result := FContact;
end;

procedure TModelClassClient.SetContact(const AValue: String);
begin
  FContact := AValue;
end;

function TModelClassClient.GetVIP: String;
begin
  Result := FVIP;
end;

procedure TModelClassClient.SetVIP(const AValue: String);
begin
  FVIP := AValue;
end;

function TModelClassClient.GetMarkUp: String;
begin
  Result := FMarkUp;
end;

procedure TModelClassClient.SetMarkUp(const AValue: String);
begin
  FMarkUp := AValue;
end;

function TModelClassClient.GetLoyaltyCard: String;
begin
  Result := FLoyaltyCard;
end;

procedure TModelClassClient.SetLoyaltyCard(const AValue: String);
begin
  FLoyaltyCard := AValue;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TModelClassClient.UpdateFromDataSet;
begin
  inherited UpdateFromDataSet;
  TaxID := DataSet.FieldByName('TaxID').Value;
  Address := DataSet.FieldByName('Address').Value;
  Contact := DataSet.FieldByName('Contact').Value;
  VIP := DataSet.FieldByName('VIP').Value;
  MarkUp := DataSet.FieldByName('MarkUp').Value;
  LoyaltyCard := DataSet.FieldByName('LoyaltyCard').Value;
end;

procedure TModelClassClient.UpdateInDataSet;
begin
  inherited UpdateInDataSet;

  DataSet.Edit;

  DataSet.FieldByName('TaxID').Value := TaxID;
  DataSet.FieldByName('Address').Value := Address;
  DataSet.FieldByName('Contact').Value := Contact;
  DataSet.FieldByName('VIP').Value := VIP;
  DataSet.FieldByName('MarkUp').Value := MarkUp;
  DataSet.FieldByName('LoyaltyCard').Value := LoyaltyCard;

  DataSet.Post;
end;

function TModelClassClient.ToJSON: TJSONObject;
begin
  Result := inherited ToJSON;
  Result.AddPair('TaxID', TaxID);
  Result.AddPair('Address', Address);
  Result.AddPair('Contact', Contact);
  Result.AddPair('VIP', VIP);
  Result.AddPair('MarkUp', MarkUp);
  Result.AddPair('LoyaltyCard', LoyaltyCard);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelClassClient.Create;
begin
  inherited Create;
  GID := TGeneratorGIDs.NewGIDByName('ClientGID').ToString;
end;

constructor TModelClassClient.CreateFromJSON(const AJSONObject: TJSONObject);
begin
  inherited CreateFromJSON(AJSONObject);
  TaxID := (AJSONObject.GetValue('TaxID') as TJSONString).Value;
  Address := (AJSONObject.GetValue('Address') as TJSONString).Value;
  Contact := (AJSONObject.GetValue('Contact') as TJSONString).Value;
  VIP := (AJSONObject.GetValue('VIP') as TJSONString).Value;
  MarkUp := (AJSONObject.GetValue('MarkUp') as TJSONString).Value;
  LoyaltyCard := (AJSONObject.GetValue('LoyaltyCard') as TJSONString).Value;
end;

{$ENDREGION}

procedure AssignDataSetModelClassClient(const ADataSet: TFDDataSet);
begin
  TModelClassClient.AssignDataSet(ADataSet);
end;

function CreateModelClassClient: IModelClassClient;
begin
  Result := TModelClassClient.Create;
end;

function CreateFromJSONModelClassClient(const AJSONObject: TJSONObject): IModelClassClient;
begin
  Result := TModelClassClient.CreateFromJSON(AJSONObject);
end;

function CreateFromDataSetModelClassClient: IModelClassClient;
begin
  Result := TModelClassClient.CreateFromDataSet;
end;

end.
