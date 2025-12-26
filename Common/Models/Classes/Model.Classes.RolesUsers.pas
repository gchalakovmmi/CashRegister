unit Model.Classes.RolesUsers;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.RolesUsers;

  procedure AssignDataSetModelClassRolesUsers(const ADataSet: TFDDataSet);
  procedure AssignFileNameModelClassRolesUsers(const AFileName: String);
  function CreateModelClassRolesUsers: IModelClassRolesUsers;
  function CreateFromJSONModelClassRolesUsers(const AJSONArray: TJSONArray): IModelClassRolesUsers;
  function CreateFromFileModelClassRolesUsers: IModelClassRolesUsers; overload;
  function CreateFromFileModelClassRolesUsers(const AFileName: String): IModelClassRolesUsers; overload;

implementation

uses
  System.IOUtils,
  System.SysUtils,
  Model.Classes.BaseCollection,
  Interfaces.Model.Classes.RoleUser;

type
  ///<summary>Таблица - присвоени роли на потребители (оператори)</summary>
  TModelClassRolesUsers = class(TModelClassBaseCollection<IModelClassRoleUser>, IModelClassRolesUsers)

  {$REGION 'Class Properties'}
  private class var
    FFileName: String;
  public
    class property FileName: String read FFileName write FFileName;
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

  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public
//    procedure SaveToFile; override;
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

{ TModelClassRolesUsers }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

//procedure TModelClassRolesUsers.SaveToFile;
//begin
//  TFile.WriteAllText(FileName, ToJSON.ToString, TEncoding.UTF8);
//end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

procedure AssignDataSetModelClassRolesUsers(const ADataSet: TFDDataSet);
begin
  TModelClassRolesUsers.AssignDataSet(ADataSet);
end;

procedure AssignFileNameModelClassRolesUsers(const AFileName: String);
begin
  TModelClassRolesUsers.FileName := AFileName;
end;

function CreateModelClassRolesUsers: IModelClassRolesUsers;
begin
  Result := TModelClassRolesUsers.Create;
end;

function CreateFromJSONModelClassRolesUsers(const AJSONArray: TJSONArray): IModelClassRolesUsers;
begin
  Result := TModelClassRolesUsers.CreateFromJSON(AJSONArray);
end;

function CreateFromFileModelClassRolesUsers: IModelClassRolesUsers;
begin
  Result := TModelClassRolesUsers.CreateFromFile;
end;

function CreateFromFileModelClassRolesUsers(const AFileName: String): IModelClassRolesUsers;
begin
  Result := TModelClassRolesUsers.CreateFromFile(AFileName);
end;

end.
