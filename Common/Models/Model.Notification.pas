unit Model.Notification;

interface

uses
  Interfaces.Model.Notification;

  function CreateNotificationClass: IModelNotification;
  function CreateNotificationGIDClass: IModelNotificationGID;

implementation

uses
  Interfaces.Enums;

type
  TModelNotification = class(TInterfacedObject, IModelNotification)

  {$REGION 'Private Methods'}
  private

  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FActions: TInterfaceActions;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private

  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetActions: TInterfaceActions;
    procedure SetActions(const Value: TInterfaceActions);
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Actions: TInterfaceActions read GetActions write SetActions;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

  TModelNotificationGID = class(TModelNotification, IModelNotificationGID)

  {$REGION 'Private Methods'}
  private

  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FGID: Integer;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private

  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetGID: Integer;
    procedure SetGID(const Value: Integer);
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property GID: Integer read GetGID write SetGID;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;


function CreateNotificationClass: IModelNotification;
begin
  Result := TModelNotification.Create;
end;

function CreateNotificationGIDClass: IModelNotificationGID;
begin
  Result := TModelNotificationGID.Create;
end;


{$REGION 'TModelNotification'}

{$REGION 'Private Methods'}

{$ENDREGION}

{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}

{$REGION 'Interfaced Properties Getters/Setters'}

function TModelNotification.GetActions: TInterfaceActions;
begin
  Result := FActions;
end;

procedure TModelNotification.SetActions(const Value: TInterfaceActions);
begin
  FActions := Value;
end;

{$ENDREGION}

{$REGION 'Interfaced Methods'}

{$ENDREGION}

{$REGION 'Constructors/Destructors'}

{$ENDREGION}

{$ENDREGION}

{$REGION 'TModelNotificationGID'}

{$REGION 'Private Methods'}

{$ENDREGION}

{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}

{$REGION 'Interfaced Properties Getters/Setters'}

function TModelNotificationGID.GetGID: Integer;
begin
  Result := FGID;
end;

procedure TModelNotificationGID.SetGID(const Value: Integer);
begin
  FGID := Value;
end;

{$ENDREGION}

{$REGION 'Interfaced Methods'}

{$ENDREGION}

{$REGION 'Constructors/Destructors'}

{$ENDREGION}

{$ENDREGION}

end.
