unit ViewModel.Nomenclature.Role;

interface

uses
  Interfaces.ViewModel.Nomenclature.Role;

  function CreateViewModelNomenclatureRole: IViewModelNomenclatureRole;

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

  DataModule.Roles;

type
  TViewModelNomenclatureRole = class(TInterfacedObject, IViewModelNomenclatureRole)

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
    function GetGUIRecord: TViewNomenclatureRoleGUIRecord;

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

{ TViewModelNomenclatureRoles }

{$REGION 'Private Methods'}

procedure TViewModelNomenclatureRole.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclatureRole.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclatureRole.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclatureRole.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclatureRole.GetGUIRecord: TViewNomenclatureRoleGUIRecord;
begin
  case FAction of
    amdAttach: Result.Caption := 'ÐÎËß - ÊÎÍÔÈÃÓÐÈÐÀÍÅ';
    amdModify: Result.Caption := 'ÐÎËß - ÏÐÎÌßÍÀ';
    amdDetach: Result.Caption := 'ÐÎËß - ÈÇÂÅÆÄÀÍÅ';
  end;
end;

procedure TViewModelNomenclatureRole.SetAction(const AAction: TAMDAction);
begin
  FAction := AAction;
  case AAction of
    amdAttach: DataModuleRoles.FDMemTable.Append;
    amdModify: DataModuleRoles.FDMemTable.Edit;
    amdDetach: ;
  end;
end;

function TViewModelNomenclatureRole.Can(const AAction: TAMDAction): Boolean;
begin
  Result := False;
  case AAction of
    amdAttach: begin
      Result := True;
    end;
    amdModify: begin
      Result := False;
      if DataModuleRoles.FDMemTable.Active and (DataModuleRoles.FDMemTable.RecordCount > 0) then begin
        if DataModuleRoles.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
    amdDetach: begin
      Result := False;
      if DataModuleRoles.FDMemTable.Active and (DataModuleRoles.FDMemTable.RecordCount > 0) then begin
        if DataModuleRoles.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

procedure TViewModelNomenclatureRole.Confirm;
begin
  DataModuleRoles.FDMemTable.Edit;

  case FAction of
    amdAttach: begin
      DataModuleRoles.FDMemTableGID.AsString := TGeneratorGIDs.NewGIDByName('RoleGID').ToString;
      DataModuleRoles.FDMemTableAttachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      DataModuleRoles.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdModify: begin
      DataModuleRoles.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdDetach: begin
      DataModuleRoles.FDMemTableDetachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
  end;

  DataModuleRoles.FDMemTable.Post;

  DataModuleRoles.SaveToFile;

  SendNotification([actCloseForm]);
end;

procedure TViewModelNomenclatureRole.Cancel;
begin
  DataModuleRoles.FDMemTable.Cancel;

  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclatureRole.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;
end;

destructor TViewModelNomenclatureRole.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclatureRole: IViewModelNomenclatureRole;
begin
  Result := TViewModelNomenclatureRole.Create;
end;

end.
