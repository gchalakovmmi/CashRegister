unit ViewModel.Nomenclature.PermissionsRoles;

interface

uses
  Interfaces.ViewModel.Nomenclature.PermissionsRoles;

  function CreateViewModelNomenclaturePermissionsRoles: IViewModelNomenclaturePermissionsRoles;

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

  View.Nomenclature.PermissionRole,
  DataModule.PermissionsRoles,
  DataModule.Permissions,
  DataModule.Roles;

type
  TViewModelNomenclaturePermissionsRoles = class(TInterfacedObject, IViewModelNomenclaturePermissionsRoles)

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);
    procedure SendNotification(const AInterfaceActions: TInterfaceActions);

    procedure PopulateNames;
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
    function GetGUIRecord(const AWidth: Integer): TViewNomenclaturePermissionsRolesGUIRecord;

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

{ TViewModelNomenclaturePermissionsRoles }

{$REGION 'Private Methods'}

procedure TViewModelNomenclaturePermissionsRoles.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclaturePermissionsRoles.SendNotification(const AInterfaceActions: TInterfaceActions);
var
  LModelNotification: IModelNotification;
begin
  if Assigned(FObservable) then begin
    LModelNotification := CreateNotificationClass;
    LModelNotification.Actions := AInterfaceActions;
    FObservable.NotifyObservers(LModelNotification);
  end;
end;

procedure TViewModelNomenclaturePermissionsRoles.PopulateNames;
begin
  DataModulePermissionsRoles.FDMemTable.First;
  while not DataModulePermissionsRoles.FDMemTable.Eof do begin
    if DataModulePermissions.FDMemTable.Locate('GID', DataModulePermissionsRoles.FDMemTablePermissionGID.AsString, []) then begin
      DataModulePermissionsRoles.FDMemTable.Edit;
      DataModulePermissionsRoles.FDMemTablePermissionName.AsString := DataModulePermissions.FDMemTableName.AsString;
      DataModulePermissionsRoles.FDMemTable.Post;
    end;
    if DataModuleRoles.FDMemTable.Locate('GID', DataModulePermissionsRoles.FDMemTableRoleGID.AsString, []) then begin
      DataModulePermissionsRoles.FDMemTable.Edit;
      DataModulePermissionsRoles.FDMemTableRoleName.AsString := DataModuleRoles.FDMemTableName.AsString;
      DataModulePermissionsRoles.FDMemTable.Post;
    end;
    DataModulePermissionsRoles.FDMemTable.Next;
  end;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TViewModelNomenclaturePermissionsRoles.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclaturePermissionsRoles.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclaturePermissionsRoles.GetGUIRecord(const AWidth: Integer): TViewNomenclaturePermissionsRolesGUIRecord;
var
  LSpaces: Integer;
begin
  LSpaces := 3 + 1 + 9 * 1 + 18 + 1 + 3;

  Result.DBGridColumns0Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns1Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns2Width := (AWidth - LSpaces)*20 div 100;
  Result.DBGridColumns3Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns4Width := (AWidth - LSpaces)*20 div 100;
  Result.DBGridColumns5Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns6Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns7Width := (AWidth - LSpaces)*10 div 100;

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
    Result.DBGridColumns6Width -
    Result.DBGridColumns7Width;
end;

procedure TViewModelNomenclaturePermissionsRoles.Attach;
begin
  ShowViewNomenclaturePermissionRole(amdAttach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclaturePermissionsRoles.Modify;
begin
  ShowViewNomenclaturePermissionRole(amdModify);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclaturePermissionsRoles.Detach;
begin
  ShowViewNomenclaturePermissionRole(amdDetach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclaturePermissionsRoles.CloseForm;
begin
  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclaturePermissionsRoles.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;

  DataModulePermissions.LoadFromFile;
  DataModuleRoles.LoadFromFile;
  DataModulePermissionsRoles.LoadFromFile;
  PopulateNames;
end;

destructor TViewModelNomenclaturePermissionsRoles.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclaturePermissionsRoles: IViewModelNomenclaturePermissionsRoles;
begin
  Result := TViewModelNomenclaturePermissionsRoles.Create;
end;

end.
