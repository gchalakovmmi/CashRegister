unit Model.CashOut;

interface

uses
  Interfaces.Model.CashOut;

  function CreateModelCashOut: IModelCashOut;

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
  TModelCashOut = class(TInterfacedObject, IModelCashOut, IObserver, IObservable)

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
    procedure CashOut(const AAmount: WideString);
  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    destructor Destroy; override;
  {$ENDREGION}
  end;

function CreateModelCashOut: IModelCashOut;
begin
  Result := TModelCashOut.Create;
end;

{ TModelCashOut }

{$REGION 'Private Methods'}

procedure TModelCashOut.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if
    (actFiscalDeviceAfterCashCheck in AModelNotification.Actions) or
    (actFiscalDeviceAfterCashOut in AModelNotification.Actions) or
    (actFiscalDeviceAfterCashOut in AModelNotification.Actions)
  then begin
    FCash := DeviceFP700X.Cash;
    SendNotification([actFiscalDeviceAfterCashCheck]);
  end;
end;

procedure TModelCashOut.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TModelCashOut.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TModelCashOut.GetObservable: IObservable;
begin
  Result := FObservable;
end;

function TModelCashOut.GetCash: Double;
begin
  Result := FCash;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TModelCashOut.CashCheck;
begin
  DeviceFP700X.CashCheck;
end;

procedure TModelCashOut.CashOut(const AAmount: WideString);
begin
  DeviceFP700X.CashOut(AAmount);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TModelCashOut.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;

  DeviceFP700X.Observable.Subscribe(FObserver);
end;

destructor TModelCashOut.Destroy;
begin
  DeviceFP700X.Observable.Unsubscribe(FObserver);

  inherited;
end;

{$ENDREGION}

end.
