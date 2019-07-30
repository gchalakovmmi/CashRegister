unit Model.Reversal;

interface

uses
  Interfaces.Model.Reversal;

  function CreateModelReversal: IModelReversal;

implementation

type
  TModelReversal = class(TInterfacedObject, IModelReversal)

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

function CreateModelReversal: IModelReversal;
begin
  Result := TModelReversal.Create;
end;

{ TModelReversal }

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
