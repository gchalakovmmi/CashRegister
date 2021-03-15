unit Model.Classes.Permission;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Permission;

  procedure AssignDataSetModelClassPermission(const ADataSet: TFDDataSet);
  function CreateModelClassPermission: IModelClassPermission;
  function CreateFromJSONModelClassPermission(const AJSONObject: TJSONObject): IModelClassPermission;
  function CreateFromDataSetModelClassPermission: IModelClassPermission;

implementation

uses
  System.SysUtils,
  Model.Generator.GIDs,
  Model.Classes.BaseObject;

type
  ///<summary>Таблица - права (разрешения)</summary>
  TModelClassPermission = class(TModelClassBaseObject, IModelClassPermission)

  {$REGION 'Class Properties'}
  private class var

  public

  {$ENDREGION}


  {$REGION 'Private Methods'}
  private

  {$ENDREGION}


  {$REGION 'Private Fields'}
  private
    FDescription: String;
  {$ENDREGION}


  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties'}
  private

  {$ENDREGION}


  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetDescription: String;
    procedure SetDescription(const AValue: String);
  {$ENDREGION}


  {$REGION 'Interfaced Properties'}
  public
    ///<summary>код в системата на разрешението<summary>
//    property GID: String read GetGID write SetGID;
    ///<summary>наименование на разрешението<summary>
//    property Name: String read GetName write SetName;
    ///<summary>описание на разрешението<summary>
    property Description: String read GetDescription write SetDescription;
    ///<summary>дата и час на първоначално конфигуриране на разрешението в системата<summary>
//    property AttachedAt: String read GetAttachedAt write SetAttachedAt;
    ///<summary>дата и час на последна промяна на разрешението<summary>
//    property ModifiedAt: String read GetModifiedAt write SetModifiedAt;
    ///<summary>дата и час на извеждане на разрешението от употреба<summary>
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

{ TModelClassPermission }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TModelClassPermission.GetDescription: String;
begin
  Result := FDescription;
end;

procedure TModelClassPermission.SetDescription(const AValue: String);
begin
  FDescription := AValue;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TModelClassPermission.UpdateFromDataSet;
begin
  inherited UpdateFromDataSet;
  Description := DataSet.FieldByName('Description').Value;
end;

procedure TModelClassPermission.UpdateInDataSet;
begin
  inherited UpdateInDataSet;

  DataSet.Edit;
  DataSet.FieldByName('Description').Value := Description;
  DataSet.Post;
end;

function TModelClassPermission.ToJSON: TJSONObject;
begin
  Result := inherited ToJSON;
  Result.AddPair('Description', Description);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelClassPermission.Create;
begin
  inherited Create;
  GID := TGeneratorGIDs.NewGIDByName('PermissionGID').ToString;
end;

constructor TModelClassPermission.CreateFromJSON(const AJSONObject: TJSONObject);
begin
  inherited CreateFromJSON(AJSONObject);
  Description := (AJSONObject.GetValue('Description') as TJSONString).Value;
end;

{$ENDREGION}

procedure AssignDataSetModelClassPermission(const ADataSet: TFDDataSet);
begin
  TModelClassPermission.AssignDataSet(ADataSet);
end;

function CreateModelClassPermission: IModelClassPermission;
begin
  Result := TModelClassPermission.Create;
end;

function CreateFromJSONModelClassPermission(const AJSONObject: TJSONObject): IModelClassPermission;
begin
  Result := TModelClassPermission.CreateFromJSON(AJSONObject);
end;

function CreateFromDataSetModelClassPermission: IModelClassPermission;
begin
  Result := TModelClassPermission.CreateFromDataSet;
end;

end.
