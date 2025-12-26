unit Model.Classes.Items;

interface

uses
  System.JSON,
  FireDAC.Comp.DataSet,
  Interfaces.Model.Classes.Items;

  procedure AssignFileNameModelClassItems(const AFileName: String);
  procedure AssignDataSetModelClassItems(const ADataSet: TFDDataSet);
  function CreateModelClassItems: IModelClassItems;
  function CreateFromJSONModelClassItems(const AJSONArray: TJSONArray): IModelClassItems;
  function CreateFromFileModelClassItems: IModelClassItems; overload;
  function CreateFromFileModelClassItems(const AFileName: String): IModelClassItems; overload;

implementation

uses
  System.IOUtils,
  System.SysUtils,
  Model.Classes.BaseCollection,
  Interfaces.Model.Classes.Item;

type
  ///<summary>Таблица - стоки/услуги</summary>
  TModelClassItems = class(TModelClassBaseCollection<IModelClassItem>, IModelClassItems)

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

{ TModelClassItems }

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


procedure AssignFileNameModelClassItems(const AFileName: String);
begin
  TModelClassItems.FileName := AFileName;
end;

procedure AssignDataSetModelClassItems(const ADataSet: TFDDataSet);
begin
  TModelClassItems.AssignDataSet(ADataSet);
end;

function CreateModelClassItems: IModelClassItems;
begin
  Result := TModelClassItems.Create;
end;

function CreateFromJSONModelClassItems(const AJSONArray: TJSONArray): IModelClassItems;
begin
  Result := TModelClassItems.CreateFromJSON(AJSONArray);
end;

function CreateFromFileModelClassItems: IModelClassItems;
begin
  Result := TModelClassItems.CreateFromFile;
end;

function CreateFromFileModelClassItems(const AFileName: String): IModelClassItems;
begin
  Result := TModelClassItems.CreateFromFile(AFileName);
end;

end.
