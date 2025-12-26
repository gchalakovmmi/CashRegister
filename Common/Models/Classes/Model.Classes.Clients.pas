unit Model.Classes.Clients;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Clients;

  procedure AssignFileNameModelClassClients(const AFileName: String);
  procedure AssignDataSetModelClassClients(const ADataSet: TFDDataSet);
  function CreateModelClassClients: IModelClassClients;
  function CreateFromJSONModelClassClients(const AJSONArray: TJSONArray): IModelClassClients;
  function CreateFromFileModelClassClients: IModelClassClients; overload
  function CreateFromFileModelClassClients(const AFileName: String): IModelClassClients; overload

implementation

uses
  System.IOUtils,
  System.SysUtils,
  Model.Classes.BaseCollection,
  Interfaces.Model.Classes.Client;

type
  ///<summary>Таблица - клиенти</summary>
  TModelClassClients = class(TModelClassBaseCollection<IModelClassClient>, IModelClassClients)

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

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

{ TModelClassClients }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}


procedure AssignFileNameModelClassClients(const AFileName: String);
begin
  TModelClassClients.FileName := AFileName;
end;

procedure AssignDataSetModelClassClients(const ADataSet: TFDDataSet);
begin
  TModelClassClients.AssignDataSet(ADataSet);
end;

function CreateModelClassClients: IModelClassClients;
begin
  Result := TModelClassClients.Create;
end;

function CreateFromJSONModelClassClients(const AJSONArray: TJSONArray): IModelClassClients;
begin
  Result := TModelClassClients.CreateFromJSON(AJSONArray);
end;

function CreateFromFileModelClassClients: IModelClassClients;
begin
  Result := TModelClassClients.CreateFromFile;
end;

function CreateFromFileModelClassClients(const AFileName: String): IModelClassClients;
begin
  Result := TModelClassClients.CreateFromFile(AFileName);
end;

end.
