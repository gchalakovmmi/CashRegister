unit Model.Persistable.Attribute;

interface

type
  TModelPersistableAttribute = class(TCustomAttribute)

  {$REGION 'Private Methods'}
  private

  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FAttribute: String;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private

  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetAttribute: String;
    procedure SetAttribute(const Value: String);
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Attribute: String read GetAttribute write SetAttribute;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create(AAttribute: String);
  {$ENDREGION}
  end;

implementation

{ TModelPersistableAttribute }

{$REGION 'Private Methods'}

{$ENDREGION}

{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}

{$REGION 'Interfaced Properties Getters/Setters'}

function TModelPersistableAttribute.GetAttribute: String;
begin
  Result := FAttribute;
end;

procedure TModelPersistableAttribute.SetAttribute(const Value: String);
begin
  FAttribute := Value;
end;

{$ENDREGION}

{$REGION 'Interfaced Methods'}

{$ENDREGION}

{$REGION 'Constructors/Destructors'}

constructor TModelPersistableAttribute.Create(AAttribute: String);
begin
  FAttribute := AAttribute;
end;

{$ENDREGION}

end.
