unit Model.Pattern.Observer.Observer;

interface

uses
  Interfaces.Model.Notification,
  Interfaces.Model.Pattern.Observer;

function CreateObserverClass: IObserver;

implementation

type
  TObserver = class (TInterfacedObject, IObserver)
  private
    FUpdateMethod: TUpdateObserverMethod;
  public
    procedure UpdateObserver(const AModelNotification: IModelNotification);
    procedure SetUpdateObserverMethod(const AUpdateObserverMethod: TUpdateObserverMethod);
  end;

function CreateObserverClass: IObserver;
begin
  Result := TObserver.Create;
end;

{ TObserver }

procedure TObserver.UpdateObserver(const AModelNotification: IModelNotification);
begin
  if Assigned(FUpdateMethod) then begin
    FUpdateMethod(AModelNotification);
  end;
end;

procedure TObserver.SetUpdateObserverMethod(const AUpdateObserverMethod: TUpdateObserverMethod);
begin
  FUpdateMethod := AUpdateObserverMethod;
end;

end.
