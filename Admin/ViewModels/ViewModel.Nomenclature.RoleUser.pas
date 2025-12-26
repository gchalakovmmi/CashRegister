unit ViewModel.Nomenclature.RoleUser;

interface

uses
  Interfaces.ViewModel.Nomenclature.RoleUser;

  function CreateViewModelNomenclatureRoleUser: IViewModelNomenclatureRoleUser;

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

  DataModule.RolesUsers;

type
  TViewModelNomenclatureRoleUser = class(TInterfacedObject, IViewModelNomenclatureRoleUser)

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
    function GetGUIRecord: TViewNomenclatureRoleUserGUIRecord;

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

{ TViewModelNomenclatureRoleUsers }

{$REGION 'Private Methods'}

procedure TViewModelNomenclatureRoleUser.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclatureRoleUser.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclatureRoleUser.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclatureRoleUser.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclatureRoleUser.GetGUIRecord: TViewNomenclatureRoleUserGUIRecord;
begin
  case FAction of
    amdAttach: Result.Caption := 'ÐÎËß ÍÀ ÏÎÒÐÅÁÈÒÅË - ÊÎÍÔÈÃÓÐÈÐÀÍÅ';
    amdModify: Result.Caption := 'ÐÎËß ÍÀ ÏÎÒÐÅÁÈÒÅË - ÏÐÎÌßÍÀ';
    amdDetach: Result.Caption := 'ÐÎËß ÍÀ ÏÎÒÐÅÁÈÒÅË - ÈÇÂÅÆÄÀÍÅ';
  end;
end;

procedure TViewModelNomenclatureRoleUser.SetAction(const AAction: TAMDAction);
begin
  FAction := AAction;
  case AAction of
    amdAttach: DataModuleRolesUsers.FDMemTable.Append;
    amdModify: DataModuleRolesUsers.FDMemTable.Edit;
    amdDetach: ;
  end;
end;

function TViewModelNomenclatureRoleUser.Can(const AAction: TAMDAction): Boolean;
begin
  Result := False;
  case AAction of
    amdAttach: begin
      Result := True;
    end;
    amdModify: begin
      Result := False;
      if DataModuleRolesUsers.FDMemTable.Active and (DataModuleRolesUsers.FDMemTable.RecordCount > 0) then begin
        if DataModuleRolesUsers.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
    amdDetach: begin
      Result := False;
      if DataModuleRolesUsers.FDMemTable.Active and (DataModuleRolesUsers.FDMemTable.RecordCount > 0) then begin
        if DataModuleRolesUsers.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

procedure TViewModelNomenclatureRoleUser.Confirm;
begin
  DataModuleRolesUsers.FDMemTable.Edit;

  case FAction of
    amdAttach: begin
      DataModuleRolesUsers.FDMemTableGID.AsString := TGeneratorGIDs.NewGIDByName('RoleUserGID').ToString;
      DataModuleRolesUsers.FDMemTableAttachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      DataModuleRolesUsers.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdModify: begin
      DataModuleRolesUsers.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdDetach: begin
      DataModuleRolesUsers.FDMemTableDetachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
  end;

  DataModuleRolesUsers.FDMemTable.Post;

  DataModuleRolesUsers.SaveToFile;

  SendNotification([actCloseForm]);
end;

procedure TViewModelNomenclatureRoleUser.Cancel;
begin
  DataModuleRolesUsers.FDMemTable.Cancel;

  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclatureRoleUser.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;
end;

destructor TViewModelNomenclatureRoleUser.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclatureRoleUser: IViewModelNomenclatureRoleUser;
begin
  Result := TViewModelNomenclatureRoleUser.Create;
end;

end.
