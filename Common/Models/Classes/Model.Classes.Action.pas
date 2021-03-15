unit Model.Classes.Action;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Action;

  procedure AssignDataSetModelClassAction(const ADataSet: TFDDataSet);
  function CreateModelClassAction: IModelClassAction;
  function CreateFromJSONModelClassAction(const AJSONObject: TJSONObject): IModelClassAction;
  function CreateFromDataSetModelClassAction: IModelClassAction;

implementation

uses
  System.SysUtils,
  Model.Generator.GIDs,
  Model.Classes.BaseObject;

type
  ///<summary>Таблица - видове действия/операции</summary>
  TModelClassAction = class(TModelClassBaseObject, IModelClassAction)

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
    ///<summary>код в системата на действието/операцията<summary>
//    property GID: String read GetGID write SetGID;
    ///<summary>наименование на действието/операцията<summary>
//    property Name: String read GetName write SetName;
    ///<summary>дата и час на първоначално конфигуриране на действието/операцията в системата<summary>
//    property AttachedAt: String read GetAttachedAt write SetAttachedAt;
    ///<summary>дата и час на последна промяна на действието/операцията<summary>
//    property ModifiedAt: String read GetModifiedAt write SetModifiedAt;
    ///<summary>дата и час на извеждане на действието/операцията от употреба<summary>
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

{ TModelClassAction }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelClassAction.Create;
begin
  inherited Create;
  GID := TGeneratorGIDs.NewGIDByName('ActionGID').ToString;
end;

{$ENDREGION}

procedure AssignDataSetModelClassAction(const ADataSet: TFDDataSet);
begin
  TModelClassAction.AssignDataSet(ADataSet);
end;

function CreateModelClassAction: IModelClassAction;
begin
  Result := TModelClassAction.Create;
end;

function CreateFromJSONModelClassAction(const AJSONObject: TJSONObject): IModelClassAction;
begin
  Result := TModelClassAction.CreateFromJSON(AJSONObject);
end;

function CreateFromDataSetModelClassAction: IModelClassAction;
begin
  Result := TModelClassAction.CreateFromDataSet;
end;

end.
