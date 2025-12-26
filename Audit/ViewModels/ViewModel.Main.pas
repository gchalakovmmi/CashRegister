unit ViewModel.Main;

interface

uses
  Interfaces.ViewModel.Main;

  function CreateViewModelMain: IViewModelMain;

implementation

uses
  System.UITypes,
  System.SysUtils,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Globals,
  Interfaces.Enums,
  Interfaces.GUIRecords,
  Interfaces.Model.Notification,
  Interfaces.Model.Pattern.Observer,
  Model.Pattern.Observer.Observable,
  Model.Pattern.Observer.Observer,
  Model.Notification,

  Interfaces.Model.Main,
  Interfaces.ViewModel.Login,

  Model.Main,
  View.Login;

type
  TViewModelMain = class(TInterfacedObject, IViewModelMain, IObserver, IObservable)

  {$REGION 'Private Methods'}
  private
    procedure OnTimer(Sender: TObject);
    procedure ProcessNotification(const AModelNotification: IModelNotification);
    procedure SendNotification(const AInterfaceActions: TInterfaceActions);
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FObserver: IObserver;
    FObservable: IObservable;
    FModel: IModelMain;

    FTimer: TTimer;
    FUpdateGUITimeOut: Integer;
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

    function GetModel: IModelMain;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Observer: IObserver read FObserver implements IObserver;
    property Observable: IObservable read GetObservable implements IObservable;
    property Model: IModelMain read GetModel;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public
    function GetGUIRecord: TViewMainGUIRecord;

    procedure Login;
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    destructor Destroy; override;
  {$ENDREGION}
  end;

{ TViewModelMain }

{$REGION 'Private Methods'}

procedure TViewModelMain.OnTimer(Sender: TObject);
begin
  FTimer.Enabled := False;

  if FUpdateGUITimeOut > 0 then begin
    FUpdateGUITimeOut := FUpdateGUITimeOut - 1;
    if FUpdateGUITimeOut = 0 then begin
      FUpdateGUITimeOut := 10;
      SendNotification([actUpdateGUI]);
    end;
  end else begin
    FUpdateGUITimeOut := 10;
  end;

  FTimer.Enabled := True;
end;

procedure TViewModelMain.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelMain.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelMain.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelMain.GetObservable: IObservable;
begin
  Result := FObservable;
end;

function TViewModelMain.GetModel: IModelMain;
begin
  Result := FModel;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelMain.GetGUIRecord: TViewMainGUIRecord;
begin
  Result.Caption := 'œ–Œƒ¿∆¡» ¬ Ã¿√¿«»Õ ¿Õ≈“ 4 - v ' + Model.GetAppVersion;
  Result.StoreName := Model.GetStoreName;
  Result.WorkstationName := Model.GetWorkstationName;
  Result.UserName := Model.GetUserName;
  Result.Time := FormatDateTime('hh:mm', Time);
end;

procedure TViewModelMain.Login;
begin
  ShowViewLogin;
  SendNotification([actUpdateGUI]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelMain.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;

  FModel := CreateModelMain;

  FUpdateGUITimeOut := 10;

  FTimer := TTimer.Create(nil);
  FTimer.Interval := 1000;
  FTimer.OnTimer := OnTimer;
  FTimer.Enabled := True;
end;

destructor TViewModelMain.Destroy;
begin
  FreeAndNil(FTimer);

  inherited;
end;

{$ENDREGION}

function CreateViewModelMain: IViewModelMain;
begin
  Result := TViewModelMain.Create;
end;

end.
