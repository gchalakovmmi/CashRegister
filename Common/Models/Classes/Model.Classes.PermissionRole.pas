unit Model.Classes.PermissionRole;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.PermissionRole;

  procedure AssignDataSetModelClassPermissionRole(const ADataSet: TFDDataSet);
  function CreateModelClassPermissionRole: IModelClassPermissionRole;
  function CreateFromJSONModelClassPermissionRole(const AJSONObject: TJSONObject): IModelClassPermissionRole;
  function CreateFromDataSetModelClassPermissionRole: IModelClassPermissionRole;

implementation

uses
  System.SysUtils,
  Model.Generator.GIDs,
  Model.Classes.BaseObject;

type
  ///<summary>Таблица - присвоени права на роля</summary>
  TModelClassPermissionRole = class(TModelClassBaseObject, IModelClassPermissionRole)

  {$REGION 'Class Properties'}
  private class var

  public

  {$ENDREGION}


  {$REGION 'Private Methods'}
  private

  {$ENDREGION}


  {$REGION 'Private Fields'}
  private
    FPermissionGID: String;
    FRoleGID: String;
  {$ENDREGION}


  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties'}
  private

  {$ENDREGION}


  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetPermissionGID: String;
    procedure SetPermissionGID(const AValue: String);
    function GetRoleGID: String;
    procedure SetRoleGID(const AValue: String);
  {$ENDREGION}


  {$REGION 'Interfaced Properties'}
  public
    ///<summary>код в системата на връзката между разрешението и ролята<summary>
//    property GID: String read GetGID write SetGID;
    ///<summary>код в системата на разрешението<summary>
    property PermissionGID: String read GetPermissionGID write SetPermissionGID;
    ///<summary>код в системата на ролята<summary>
    property RoleGID: String read GetRoleGID write SetRoleGID;
    ///<summary>дата и час на първоначално конфигуриране на присвоеното право на ролята в системата<summary>
//    property AttachedAt: String read GetAttachedAt write SetAttachedAt;
    ///<summary>дата и час на последна промяна на присвоеното право на ролята<summary>
//    property ModifiedAt: String read GetModifiedAt write SetModifiedAt;
    ///<summary>дата и час на извеждане на присвоеното право на ролята от употреба<summary>
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

{ TModelClassPermissionRole }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TModelClassPermissionRole.GetPermissionGID: String;
begin
  Result := FPermissionGID;
end;

procedure TModelClassPermissionRole.SetPermissionGID(const AValue: String);
begin
  FPermissionGID := AValue;
end;

function TModelClassPermissionRole.GetRoleGID: String;
begin
  Result := FRoleGID;
end;

procedure TModelClassPermissionRole.SetRoleGID(const AValue: String);
begin
  FRoleGID := AValue;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TModelClassPermissionRole.UpdateFromDataSet;
begin
  inherited UpdateFromDataSet;
  PermissionGID := DataSet.FieldByName('PermissionGID').Value;
  RoleGID := DataSet.FieldByName('RoleGID').Value;
end;

procedure TModelClassPermissionRole.UpdateInDataSet;
begin
  inherited UpdateInDataSet;

  DataSet.Edit;
  DataSet.FieldByName('PermissionGID').Value := PermissionGID;
  DataSet.FieldByName('RoleGID').Value := RoleGID;
  DataSet.Post;
end;

function TModelClassPermissionRole.ToJSON: TJSONObject;
begin
  Result := inherited ToJSON;
  Result.AddPair('PermissionGID', PermissionGID);
  Result.AddPair('RoleGID', RoleGID);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelClassPermissionRole.Create;
begin
  inherited Create;
  GID := TGeneratorGIDs.NewGIDByName('PermissionRoleGID').ToString;
end;

constructor TModelClassPermissionRole.CreateFromJSON(const AJSONObject: TJSONObject);
begin
  inherited CreateFromJSON(AJSONObject);
  PermissionGID := (AJSONObject.GetValue('PermissionGID') as TJSONString).Value;
  RoleGID := (AJSONObject.GetValue('RoleGID') as TJSONString).Value;
end;

{$ENDREGION}

procedure AssignDataSetModelClassPermissionRole(const ADataSet: TFDDataSet);
begin
  TModelClassPermissionRole.AssignDataSet(ADataSet);
end;

function CreateModelClassPermissionRole: IModelClassPermissionRole;
begin
  Result := TModelClassPermissionRole.Create;
end;

function CreateFromJSONModelClassPermissionRole(const AJSONObject: TJSONObject): IModelClassPermissionRole;
begin
  Result := TModelClassPermissionRole.CreateFromJSON(AJSONObject);
end;

function CreateFromDataSetModelClassPermissionRole: IModelClassPermissionRole;
begin
  Result := TModelClassPermissionRole.CreateFromDataSet;
end;

end.
