unit ViewModel.Nomenclature.Users;

interface

uses
  Interfaces.ViewModel.Nomenclature.Users;

  function CreateViewModelNomenclatureUsers: IViewModelNomenclatureUsers;

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

  View.Nomenclature.User,
  DataModule.Users;

type
  TViewModelNomenclatureUsers = class(TInterfacedObject, IViewModelNomenclatureUsers)

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);
    procedure SendNotification(const AInterfaceActions: TInterfaceActions);
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FObserver: IObserver;
    FObservable: IObservable;
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
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Observer: IObserver read FObserver;
    property Observable: IObservable read GetObservable;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public
    function GetGUIRecord(const AWidth: Integer): TViewNomenclatureUsersGUIRecord;

    procedure Attach;
    procedure Modify;
    procedure Detach;

    procedure CloseForm;
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    destructor Destroy; override;
  {$ENDREGION}
  end;

{ TViewModelNomenclatureUsers }

{$REGION 'Private Methods'}

procedure TViewModelNomenclatureUsers.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclatureUsers.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclatureUsers.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclatureUsers.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclatureUsers.GetGUIRecord(const AWidth: Integer): TViewNomenclatureUsersGUIRecord;
var
  LSpaces: Integer;
begin
  LSpaces := 3 + 1 + 8 * 1 + 18 + 1 + 3 + 4;

  Result.DBGridColumns0Width := (AWidth - LSpaces)*6 div 100;
  Result.DBGridColumns1Width := (AWidth - LSpaces)*16 div 100;
  Result.DBGridColumns2Width := (AWidth - LSpaces)*16 div 100;
  Result.DBGridColumns3Width := (AWidth - LSpaces)*32 div 100;
  Result.DBGridColumns4Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns5Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns6Width := (AWidth - LSpaces)*10 div 100;

  Result.DBGridColumns0Width :=
    Result.DBGridColumns0Width +
    AWidth -
    LSpaces -
    Result.DBGridColumns0Width -
    Result.DBGridColumns1Width -
    Result.DBGridColumns2Width -
    Result.DBGridColumns3Width -
    Result.DBGridColumns4Width -
    Result.DBGridColumns5Width -
    Result.DBGridColumns6Width;
end;

procedure TViewModelNomenclatureUsers.Attach;
begin
  ShowViewNomenclatureUser(amdAttach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclatureUsers.Modify;
begin
  ShowViewNomenclatureUser(amdModify);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclatureUsers.Detach;
begin
  ShowViewNomenclatureUser(amdDetach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclatureUsers.CloseForm;
begin
  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclatureUsers.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;

  DataModuleUsers.LoadFromFile;
end;

destructor TViewModelNomenclatureUsers.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclatureUsers: IViewModelNomenclatureUsers;
begin
  Result := TViewModelNomenclatureUsers.Create;
end;

end.
