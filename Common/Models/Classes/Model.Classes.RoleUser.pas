unit Model.Classes.RoleUser;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.RoleUser;

  procedure AssignDataSetModelClassRoleUser(const ADataSet: TFDDataSet);
  function CreateModelClassRoleUser: IModelClassRoleUser;
  function CreateFromJSONModelClassRoleUser(const AJSONObject: TJSONObject): IModelClassRoleUser;
  function CreateFromDataSetModelClassRoleUser: IModelClassRoleUser;

implementation

uses
  System.SysUtils,
  Model.Generator.GIDs,
  Model.Classes.BaseObject;

type
  ///<summary>Таблица - присвоени роли на потребители (оператори)</summary>
  TModelClassRoleUser = class(TModelClassBaseObject, IModelClassRoleUser)

  {$REGION 'Class Properties'}
  private class var

  public

  {$ENDREGION}


  {$REGION 'Private Methods'}
  private

  {$ENDREGION}


  {$REGION 'Private Fields'}
  private
    FRoleGID: String;
    FUserGID: String;
  {$ENDREGION}


  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties'}
  private

  {$ENDREGION}


  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetRoleGID: String;
    procedure SetRoleGID(const AValue: String);
    function GetUserGID: String;
    procedure SetUserGID(const AValue: String);
  {$ENDREGION}


  {$REGION 'Interfaced Properties'}
  public
    ///<summary>код в системата на връзката между роля и потребител<summary>
//    property GID: String read GetGID write SetGID;
    ///<summary>код в системата на ролята<summary>
    property RoleGID: String read GetRoleGID write SetRoleGID;
    ///<summary>код в системата на потребителя<summary>
    property UserGID: String read GetUserGID write SetUserGID;
    ///<summary>дата и час на първоначално конфигуриране на присвоената роля на потребителя в системата<summary>
//    property AttachedAt: String read GetAttachedAt write SetAttachedAt;
    ///<summary>дата и час на последна промяна на присвоената роля на потребителя<summary>
//    property ModifiedAt: String read GetModifiedAt write SetModifiedAt;
    ///<summary>дата и час на извеждане на присвоената роля на потребителя от употреба<summary>
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

{ TModelClassRoleUser }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TModelClassRoleUser.GetRoleGID: String;
begin
  Result := FRoleGID;
end;

procedure TModelClassRoleUser.SetRoleGID(const AValue: String);
begin
  FRoleGID := AValue;
end;

function TModelClassRoleUser.GetUserGID: String;
begin
  Result := FUserGID;
end;

procedure TModelClassRoleUser.SetUserGID(const AValue: String);
begin
  FUserGID := AValue;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TModelClassRoleUser.UpdateFromDataSet;
begin
  inherited UpdateFromDataSet;
  RoleGID := DataSet.FieldByName('RoleGID').Value;
  UserGID := DataSet.FieldByName('UserGID').Value;
end;

procedure TModelClassRoleUser.UpdateInDataSet;
begin
  inherited UpdateInDataSet;

  DataSet.Edit;
  DataSet.FieldByName('RoleGID').Value := RoleGID;
  DataSet.FieldByName('UserGID').Value := UserGID;
  DataSet.Post;
end;

function TModelClassRoleUser.ToJSON: TJSONObject;
begin
  Result := inherited ToJSON;
  Result.AddPair('RoleGID', RoleGID);
  Result.AddPair('UserGID', UserGID);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelClassRoleUser.Create;
begin
  inherited Create;
  GID := TGeneratorGIDs.NewGIDByName('RoleUserGID').ToString;
end;

constructor TModelClassRoleUser.CreateFromJSON(const AJSONObject: TJSONObject);
begin
  inherited CreateFromJSON(AJSONObject);
  RoleGID := (AJSONObject.GetValue('RoleGID') as TJSONString).Value;
  UserGID := (AJSONObject.GetValue('UserGID') as TJSONString).Value;
end;

{$ENDREGION}

procedure AssignDataSetModelClassRoleUser(const ADataSet: TFDDataSet);
begin
  TModelClassRoleUser.AssignDataSet(ADataSet);
end;

function CreateModelClassRoleUser: IModelClassRoleUser;
begin
  Result := TModelClassRoleUser.Create;
end;

function CreateFromJSONModelClassRoleUser(const AJSONObject: TJSONObject): IModelClassRoleUser;
begin
  Result := TModelClassRoleUser.CreateFromJSON(AJSONObject);
end;

function CreateFromDataSetModelClassRoleUser: IModelClassRoleUser;
begin
  Result := TModelClassRoleUser.CreateFromDataSet;
end;

end.
