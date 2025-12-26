unit ViewModel.Nomenclature.RolesUsers;

interface

uses
  Interfaces.ViewModel.Nomenclature.RolesUsers;

  function CreateViewModelNomenclatureRolesUsers: IViewModelNomenclatureRolesUsers;

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

  View.Nomenclature.RoleUser,
  DataModule.RolesUsers,
  DataModule.Roles,
  DataModule.Users;

type
  TViewModelNomenclatureRolesUsers = class(TInterfacedObject, IViewModelNomenclatureRolesUsers)

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
    function GetGUIRecord(const AWidth: Integer): TViewNomenclatureRolesUsersGUIRecord;

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

{ TViewModelNomenclatureRolesUsers }

{$REGION 'Private Methods'}

procedure TViewModelNomenclatureRolesUsers.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclatureRolesUsers.SendNotification(const AInterfaceActions: TInterfaceActions);
var
  LModelNotification: IModelNotification;
begin
  if Assigned(FObservable) then begin
    LModelNotification := CreateNotificationClass;
    LModelNotification.Actions := AInterfaceActions;
    FObservable.NotifyObservers(LModelNotification);
  end;
end;

procedure TViewModelNomenclatureRolesUsers.PopulateNames;
begin
  DataModuleRolesUsers.FDMemTable.First;
  while not DataModuleRolesUsers.FDMemTable.Eof do begin
    if DataModuleRoles.FDMemTable.Locate('GID', DataModuleRolesUsers.FDMemTableRoleGID.AsString, []) then begin
      DataModuleRolesUsers.FDMemTable.Edit;
      DataModuleRolesUsers.FDMemTableRoleName.AsString := DataModuleRoles.FDMemTableName.AsString;
      DataModuleRolesUsers.FDMemTable.Post;
    end;
    if DataModuleUsers.FDMemTable.Locate('GID', DataModuleRolesUsers.FDMemTableUserGID.AsString, []) then begin
      DataModuleRolesUsers.FDMemTable.Edit;
      DataModuleRolesUsers.FDMemTableUserName.AsString := DataModuleUsers.FDMemTableName.AsString;
      DataModuleRolesUsers.FDMemTable.Post;
    end;
    DataModuleRolesUsers.FDMemTable.Next;
  end;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TViewModelNomenclatureRolesUsers.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclatureRolesUsers.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclatureRolesUsers.GetGUIRecord(const AWidth: Integer): TViewNomenclatureRolesUsersGUIRecord;
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

procedure TViewModelNomenclatureRolesUsers.Attach;
begin
  ShowViewNomenclatureRoleUser(amdAttach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclatureRolesUsers.Modify;
begin
  ShowViewNomenclatureRoleUser(amdModify);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclatureRolesUsers.Detach;
begin
  ShowViewNomenclatureRoleUser(amdDetach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclatureRolesUsers.CloseForm;
begin
  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclatureRolesUsers.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;

  DataModuleRoles.LoadFromFile;
  DataModuleUsers.LoadFromFile;
  DataModuleRolesUsers.LoadFromFile;
  PopulateNames;
end;

destructor TViewModelNomenclatureRolesUsers.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclatureRolesUsers: IViewModelNomenclatureRolesUsers;
begin
  Result := TViewModelNomenclatureRolesUsers.Create;
end;

end.
