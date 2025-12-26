unit ViewModel.Nomenclature.PermissionRole;

interface

uses
  Interfaces.ViewModel.Nomenclature.PermissionRole;

  function CreateViewModelNomenclaturePermissionRole: IViewModelNomenclaturePermissionRole;

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
  Model.Generator.GIDs,

  DataModule.PermissionsRoles;

type
  TViewModelNomenclaturePermissionRole = class(TInterfacedObject, IViewModelNomenclaturePermissionRole)

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);
    procedure SendNotification(const AInterfaceActions: TInterfaceActions);
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FObserver: IObserver;
    FObservable: IObservable;
    FAction: TAMDAction;
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
    function GetGUIRecord: TViewNomenclaturePermissionRoleGUIRecord;

    procedure SetAction(const AAction: TAMDAction);

    function Can(const AAction: TAMDAction): Boolean;

    procedure Confirm;
    procedure Cancel;
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    destructor Destroy; override;
  {$ENDREGION}
  end;

{ TViewModelNomenclaturePermissionRoles }

{$REGION 'Private Methods'}

procedure TViewModelNomenclaturePermissionRole.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclaturePermissionRole.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclaturePermissionRole.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclaturePermissionRole.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclaturePermissionRole.GetGUIRecord: TViewNomenclaturePermissionRoleGUIRecord;
begin
  case FAction of
    amdAttach: Result.Caption := 'ÐÀÇÐÅØÅÍÈÅ ÇÀ ÐÎËß - ÊÎÍÔÈÃÓÐÈÐÀÍÅ';
    amdModify: Result.Caption := 'ÐÀÇÐÅØÅÍÈÅ ÇÀ ÐÎËß - ÏÐÎÌßÍÀ';
    amdDetach: Result.Caption := 'ÐÀÇÐÅØÅÍÈÅ ÇÀ ÐÎËß - ÈÇÂÅÆÄÀÍÅ';
  end;
end;

procedure TViewModelNomenclaturePermissionRole.SetAction(const AAction: TAMDAction);
begin
  FAction := AAction;
  case AAction of
    amdAttach: DataModulePermissionsRoles.FDMemTable.Append;
    amdModify: DataModulePermissionsRoles.FDMemTable.Edit;
    amdDetach: ;
  end;
end;

function TViewModelNomenclaturePermissionRole.Can(const AAction: TAMDAction): Boolean;
begin
  Result := False;
  case AAction of
    amdAttach: begin
      Result := True;
    end;
    amdModify: begin
      Result := False;
      if DataModulePermissionsRoles.FDMemTable.Active and (DataModulePermissionsRoles.FDMemTable.RecordCount > 0) then begin
        if DataModulePermissionsRoles.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
    amdDetach: begin
      Result := False;
      if DataModulePermissionsRoles.FDMemTable.Active and (DataModulePermissionsRoles.FDMemTable.RecordCount > 0) then begin
        if DataModulePermissionsRoles.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

procedure TViewModelNomenclaturePermissionRole.Confirm;
begin
  DataModulePermissionsRoles.FDMemTable.Edit;

  case FAction of
    amdAttach: begin
      DataModulePermissionsRoles.FDMemTableGID.AsString := TGeneratorGIDs.NewGIDByName('PermissionRoleGID').ToString;
      DataModulePermissionsRoles.FDMemTableAttachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      DataModulePermissionsRoles.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdModify: begin
      DataModulePermissionsRoles.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdDetach: begin
      DataModulePermissionsRoles.FDMemTableDetachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
  end;

  DataModulePermissionsRoles.FDMemTable.Post;

  DataModulePermissionsRoles.SaveToFile;

  SendNotification([actCloseForm]);
end;

procedure TViewModelNomenclaturePermissionRole.Cancel;
begin
  DataModulePermissionsRoles.FDMemTable.Cancel;

  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclaturePermissionRole.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;
end;

destructor TViewModelNomenclaturePermissionRole.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclaturePermissionRole: IViewModelNomenclaturePermissionRole;
begin
  Result := TViewModelNomenclaturePermissionRole.Create;
end;

end.
