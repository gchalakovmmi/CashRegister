unit Model.CashInOut;

interface

uses
  Interfaces.Model.CashInOut;

  function CreateModelCashInOut: IModelCashInOut;

implementation

uses
  Device.FP700X,
  Interfaces.Enums,
  Interfaces.Model.Notification,
  Interfaces.Model.Pattern.Observer,
  Model.Notification,
  Model.Pattern.Observer.Observer,
  Model.Pattern.Observer.Observable;

type
  TModelCashInOut = class(TInterfacedObject, IModelCashInOut, IObserver, IObservable)

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);
    procedure SendNotification(const AInterfaceActions: TInterfaceActions);
  {$ENDREGION}


  {$REGION 'Private Fields'}
  private
    FObserver: IObserver;
    FObservable: IObservable;
    FCash: Double;
  {$ENDREGION}


  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties'}
  private

  {$ENDREGION}


  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetObserver: IObserver;
    function GetObservable: IObservable;

    function GetCash: Double;
  {$ENDREGION}


  {$REGION 'Interfaced Properties'}
  public
    property Observer: IObserver read GetObserver implements IObserver;
    property Observable: IObservable read GetObservable implements IObservable;

		property Cash: Double read GetCash;
  {$ENDREGION}


  {$REGION 'Interfaced Methods'}
  public
    procedure CashCheck;
    procedure CashIn;
    procedure CashOut;
  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    destructor Destroy; override;
  {$ENDREGION}
  end;

function CreateModelCashInOut: IModelCashInOut;
begin
  Result := TModelCashInOut.Create;
end;

{ TModelCashInOut }

{$REGION 'Private Methods'}

procedure TModelCashInOut.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if 
    (actFiscalDeviceAfterCashCheck in AModelNotification.Actions) or
    (actFiscalDeviceAfterCashIn in AModelNotification.Actions) or
    (actFiscalDeviceAfterCashOut in AModelNotification.Actions)
  then begin
    FCash := DeviceFP700X.Cash;
    SendNotification([actFiscalDeviceAfterCashCheck]);
  end;
end;

procedure TModelCashInOut.SendNotification(const AInterfaceActions: TInterfaceActions);
var
  LModelNotification: IModelNotification;
begin
  if Assigned(FObservable) then begin
    LModelNotification := CreateNotificationClass;
    LModelNotification.Actions := AInterfaceActions;
    FObservable.NotifyObservers(LModelNotification);
  end;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TModelCashInOut.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TModelCashInOut.GetObservable: IObservable;
begin
  Result := FObservable;
end;

function TModelCashInOut.GetCash: Double;
begin
  Result := FCash;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TModelCashInOut.CashCheck;
begin
  DeviceFP700X.CashCheck;
end;

procedure TModelCashInOut.CashIn;
begin
  DeviceFP700X.CashIn('250.00');
end;

procedure TModelCashInOut.CashOut;
begin
  DeviceFP700X.CashOut('250.00');
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelCashInOut.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;

  DeviceFP700X.Observable.Subscribe(FObserver);
end;

destructor TModelCashInOut.Destroy;
begin
  DeviceFP700X.Observable.Unsubscribe(FObserver);

  inherited;
end;

{$ENDREGION}

end.
