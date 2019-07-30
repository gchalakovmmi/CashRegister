unit Model.CheckItem;

interface

uses
  Interfaces.Model.CheckItem;

  function CreateModelCheckItem: IModelCheckItem;

implementation

type
  TModelCheckItem = class(TInterfacedObject, IModelCheckItem)

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

function CreateModelCheckItem: IModelCheckItem;
begin
  Result := TModelCheckItem.Create;
end;

{ TModelCheckItem }

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
