unit ViewModel.Nomenclature.Permissions;

interface

uses
  Interfaces.ViewModel.Nomenclature.Permissions;

  function CreateViewModelNomenclaturePermissions: IViewModelNomenclaturePermissions;

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

  View.Nomenclature.Permission,
  DataModule.Permissions;

type
  TViewModelNomenclaturePermissions = class(TInterfacedObject, IViewModelNomenclaturePermissions)

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
    function GetGUIRecord(const AWidth: Integer): TViewNomenclaturePermissionsGUIRecord;

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

{ TViewModelNomenclaturePermissions }

{$REGION 'Private Methods'}

procedure TViewModelNomenclaturePermissions.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclaturePermissions.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclaturePermissions.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclaturePermissions.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclaturePermissions.GetGUIRecord(const AWidth: Integer): TViewNomenclaturePermissionsGUIRecord;
var
  LSpaces: Integer;
begin
  LSpaces := 3 + 1 + 7 * 1 + 18 + 1 + 3;

  Result.DBGridColumns0Width := (AWidth - LSpaces)*6 div 100;
  Result.DBGridColumns1Width := (AWidth - LSpaces)*32 div 100;
  Result.DBGridColumns2Width := (AWidth - LSpaces)*32 div 100;
  Result.DBGridColumns3Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns4Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns5Width := (AWidth - LSpaces)*10 div 100;

  Result.DBGridColumns0Width :=
    Result.DBGridColumns0Width +
    AWidth -
    LSpaces -
    Result.DBGridColumns0Width -
    Result.DBGridColumns1Width -
    Result.DBGridColumns2Width -
    Result.DBGridColumns3Width -
    Result.DBGridColumns4Width -
    Result.DBGridColumns5Width;
end;

procedure TViewModelNomenclaturePermissions.Attach;
begin
  ShowViewNomenclaturePermission(amdAttach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclaturePermissions.Modify;
begin
  ShowViewNomenclaturePermission(amdModify);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclaturePermissions.Detach;
begin
  ShowViewNomenclaturePermission(amdDetach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclaturePermissions.CloseForm;
begin
  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclaturePermissions.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;

  DataModulePermissions.LoadFromFile;
end;

destructor TViewModelNomenclaturePermissions.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclaturePermissions: IViewModelNomenclaturePermissions;
begin
  Result := TViewModelNomenclaturePermissions.Create;
end;

end.
