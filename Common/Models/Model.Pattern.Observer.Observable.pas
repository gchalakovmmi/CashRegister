unit Model.Pattern.Observer.Observable;

interface

uses
  System.Generics.Collections,
  Interfaces.Model.Notification,
  Interfaces.Model.Pattern.Observer;

function CreateObservableClass: IObservable;

implementation

type
  TObservable = class (TInterfacedObject, IObservable)
  private
    FObserverList: TList<IObserver>;
  public
    procedure Subscribe(const AObserver: IObserver);
    procedure Unsubscribe(const AObserver: IObserver);
    procedure NotifyObservers(const AModelNotification: IModelNotification);

    constructor Create;
    destructor Destroy; override;
  end;

function CreateObservableClass: IObservable;
begin
  Result := TObservable.Create;
end;

{ TObservable }

procedure TObservable.Subscribe(const AObserver: IObserver);
begin
  FObserverList.Add(AObserver);
end;

procedure TObservable.Unsubscribe(const AObserver: IObserver);
begin
  FObserverList.Remove(AObserver);
end;

procedure TObservable.NotifyObservers(const AModelNotification: IModelNotification);
var
  LObserver: IObserver;
begin
  for LObserver in FObserverList do begin
    LObserver.UpdateObserver(AModelNotification);
  end;
end;

constructor TObservable.Create;
begin
  inherited;
  FObserverList := TList<IObserver>.Create;
end;

destructor TObservable.Destroy;
var
  LObserver: IObserver;
begin
  for LObserver in FObserverList do begin
    Unsubscribe(LObserver);
  end;
  FObserverList.Free;
  inherited;
end;

end.
