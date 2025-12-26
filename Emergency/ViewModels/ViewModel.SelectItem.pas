unit ViewModel.SelectItem;

interface

uses
  Interfaces.ViewModel.SelectItem;

  function CreateViewModelSelectItem: IViewModelSelectItem;

implementation

uses
  Winapi.Windows,
  System.Character,
  System.SysUtils,
  System.Classes,
  Vcl.ExtCtrls,
  Globals,
  Interfaces.Enums,
  Interfaces.GUIRecords,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Notification,
  Model.Pattern.Observer.Observer,
  Model.Pattern.Observer.Observable,
  Model.Notification,

  Interfaces.Model.SelectItem,
  DataModule.Items,
  Model.SelectItem;

type
  TViewModelSelectItem = class(TInterfacedObject, IViewModelSelectItem, IObservable)

  {$REGION 'Private Methods'}
  private
    procedure OnTimer(Sender: TObject);
    procedure SendNotification(const AInterfaceActions: TInterfaceActions);
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FModel: IModelSelectItem;
    FObservable: IObservable;
    FTimer: TTimer;
    FIsQuick: Boolean;
    FIsChanged: Boolean;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private

  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public
    function GetObservable: IObservable;
    function GetModel: IModelSelectItem;
    procedure SetModel(const Value: IModelSelectItem);
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Observable: IObservable read GetObservable implements IObservable;
    property Model: IModelSelectItem read GetModel write SetModel;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public
//    function GetGUISetupRecord(const AWidth, AHeight: Integer): TViewSelectItemGUISetupRecord;
    function GetGUIRecord(const AWidth, AHeight: Integer): TViewSelectItemGUIRecord;
    procedure GridKeyDown(var Key: Word; Shift: TShiftState);
    procedure GridKeyPressed(Key: Char);
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    destructor Destroy; override;
  {$ENDREGION}
  end;

function CreateViewModelSelectItem: IViewModelSelectItem;
begin
  Result := TViewModelSelectItem.Create;
end;

{ TViewModelSelectItem }

{$REGION 'Private Methods'}

procedure TViewModelSelectItem.OnTimer(Sender: TObject);
begin
  FIsQuick := False;
  If FIsChanged then begin
    DataModuleItems.Refilter;
    FIsChanged := False;
  end;
  FTimer.Enabled := False;
end;

procedure TViewModelSelectItem.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelSelectItem.GetObservable: IObservable;
begin
  Result := FObservable;
end;

function TViewModelSelectItem.GetModel: IModelSelectItem;
begin
  Result := FModel;
end;

procedure TViewModelSelectItem.SetModel(const Value: IModelSelectItem);
begin
  FModel := Value;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelSelectItem.GetGUIRecord(const AWidth, AHeight: Integer): TViewSelectItemGUIRecord;
begin
  Result.Top := AHeight - 300;
  Result.Left := 8;
  Result.Width := AWidth - 16;
  Result.EditText := DataModuleItems.KeyWord;
end;

procedure TViewModelSelectItem.GridKeyDown(var Key: Word; Shift: TShiftState);
begin
  FIsQuick := True;
  FTimer.Enabled := False;
  FTimer.Enabled := True;
  case Key of
    VK_BACK : begin
      DataModuleItems.KeyWord := Copy(DataModuleItems.KeyWord, 1, Length(DataModuleItems.KeyWord)-1);
      FIsChanged := True;
      SendNotification([actUpdateGUI]);
    end;
    VK_ESCAPE: begin
      DataModuleItems.ClearSelected;
      SendNotification([actCloseForm]);
    end;
    VK_RETURN : begin
      If FIsQuick then begin
        DataModuleItems.Refilter;
      end;
      DataModuleItems.Select;
      SendNotification([actCloseForm]);
    end;
  else
    FIsChanged := False;
  end;
end;

procedure TViewModelSelectItem.GridKeyPressed(Key: Char);
begin
  if Key.IsLetterOrDigit or Key.IsInArray([' ','*','+','-','.']) then begin
    DataModuleItems.KeyWord := DataModuleItems.KeyWord + Key;
    FIsChanged := True;
    SendNotification([actUpdateGUI]);
  end;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelSelectItem.Create;
begin
  inherited;
  FObservable := CreateObservableClass;
  FModel := CreateModelSelectItem;
  FTimer := TTimer.Create(nil);
  FTimer.Enabled := False;
  FTimer.Interval := 200;
  FTimer.OnTimer := OnTimer;
end;

destructor TViewModelSelectItem.Destroy;
begin
  FTimer.Free;
  inherited;
end;

{$ENDREGION}

end.
