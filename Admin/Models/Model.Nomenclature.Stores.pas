unit Model.Nomenclature.Stores;

interface

uses
  Interfaces.Model.Nomenclature.Stores;

  function CreateModelNomenclatureStores: IModelNomenclatureStores;

implementation

uses
  System.SysUtils,
  Winapi.Windows,
  Globals,
  Interfaces.Model.Classes.Stores,
  Interfaces.Model.Classes.Store,
  Model.Classes.Stores,
  DataModule.Stores;

type
  TModelNomenclatureStores = class(TInterfacedObject, IModelNomenclatureStores)

  {$REGION 'Private Methods'}
  private

  {$ENDREGION}


  {$REGION 'Private Fields'}
  private
    FStores: IModelClassStores;
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
    procedure SaveToFile;
  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    destructor Destroy; override;
  {$ENDREGION}
  end;

{ TModelNomenclatureStores }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TModelNomenclatureStores.SaveToFile;
begin
  AssignDataSetModelClassStores(DataModuleStores.FDMemTable);
  FStores.UpdateFromDataSet;
  FStores.SaveToFile;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelNomenclatureStores.Create;
begin
  FStores := CreateFromFileModelClassStores;
  AssignDataSetModelClassStores(DataModuleStores.FDMemTable);
  FStores.UpdateInDataSet;
end;

destructor TModelNomenclatureStores.Destroy;
begin

  inherited;
end;

{$ENDREGION}

function CreateModelNomenclatureStores: IModelNomenclatureStores;
begin
  Result := TModelNomenclatureStores.Create;
end;

end.
