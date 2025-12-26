unit Model.SelectItem;

interface

uses
  Interfaces.Model.SelectItem;

  function CreateModelSelectItem: IModelSelectItem;

implementation

type
  TModelSelectItem = class(TInterfacedObject, IModelSelectItem)

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

function CreateModelSelectItem: IModelSelectItem;
begin
  Result := TModelSelectItem.Create;
end;

{ TModelSelectItem }

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

end.
