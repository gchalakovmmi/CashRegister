unit Model.Classes.Role;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Role;

  procedure AssignDataSetModelClassRole(const ADataSet: TFDDataSet);
  function CreateModelClassRole: IModelClassRole;
  function CreateFromJSONModelClassRole(const AJSONObject: TJSONObject): IModelClassRole;
  function CreateFromDataSetModelClassRole: IModelClassRole;

implementation

uses
  System.SysUtils,
  Model.Generator.GIDs,
  Model.Classes.BaseObject;

type
  ///<summary>Таблица - роли на потребителите (операторите)</summary>
  TModelClassRole = class(TModelClassBaseObject, IModelClassRole)

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
    ///<summary>код в системата на ролята<summary>
//    property GID: String read GetGID write SetGID;
    ///<summary>наименование на ролята<summary>
//    property Name: String read GetName write SetName;
    ///<summary>дата и час на първоначално конфигуриране на ролята в системата<summary>
//    property AttachedAt: String read GetAttachedAt write SetAttachedAt;
    ///<summary>дата и час на последна промяна на ролята<summary>
//    property ModifiedAt: String read GetModifiedAt write SetModifiedAt;
    ///<summary>дата и час на извеждане на ролята от употреба<summary>
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

{ TModelClassRole }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelClassRole.Create;
begin
  inherited Create;
  GID := TGeneratorGIDs.NewGIDByName('RoleGID').ToString;
end;

{$ENDREGION}

procedure AssignDataSetModelClassRole(const ADataSet: TFDDataSet);
begin
  TModelClassRole.AssignDataSet(ADataSet);
end;

function CreateModelClassRole: IModelClassRole;
begin
  Result := TModelClassRole.Create;
end;

function CreateFromJSONModelClassRole(const AJSONObject: TJSONObject): IModelClassRole;
begin
  Result := TModelClassRole.CreateFromJSON(AJSONObject);
end;

function CreateFromDataSetModelClassRole: IModelClassRole;
begin
  Result := TModelClassRole.CreateFromDataSet;
end;

end.
