unit ViewModel.Nomenclature.User;

interface

uses
  Interfaces.ViewModel.Nomenclature.User;

  function CreateViewModelNomenclatureUser: IViewModelNomenclatureUser;

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

  DataModule.Users;

type
  TViewModelNomenclatureUser = class(TInterfacedObject, IViewModelNomenclatureUser)

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
    function GetGUIRecord: TViewNomenclatureUserGUIRecord;

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

{ TViewModelNomenclatureUsers }

{$REGION 'Private Methods'}

procedure TViewModelNomenclatureUser.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclatureUser.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclatureUser.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclatureUser.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclatureUser.GetGUIRecord: TViewNomenclatureUserGUIRecord;
begin
  case FAction of
    amdAttach: Result.Caption := 'ÏÎÒÐÅÁÈÒÅË - ÊÎÍÔÈÃÓÐÈÐÀÍÅ';
    amdModify: Result.Caption := 'ÏÎÒÐÅÁÈÒÅË - ÏÐÎÌßÍÀ';
    amdDetach: Result.Caption := 'ÏÎÒÐÅÁÈÒÅË - ÈÇÂÅÆÄÀÍÅ';
  end;
end;

procedure TViewModelNomenclatureUser.SetAction(const AAction: TAMDAction);
begin
  FAction := AAction;
  case AAction of
    amdAttach: DataModuleUsers.FDMemTable.Append;
    amdModify: DataModuleUsers.FDMemTable.Edit;
    amdDetach: ;
  end;
end;

function TViewModelNomenclatureUser.Can(const AAction: TAMDAction): Boolean;
begin
  Result := False;
  case AAction of
    amdAttach: begin
      Result := True;
    end;
    amdModify: begin
      Result := False;
      if DataModuleUsers.FDMemTable.Active and (DataModuleUsers.FDMemTable.RecordCount > 0) then begin
        if DataModuleUsers.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
    amdDetach: begin
      Result := False;
      if DataModuleUsers.FDMemTable.Active and (DataModuleUsers.FDMemTable.RecordCount > 0) then begin
        if DataModuleUsers.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

procedure TViewModelNomenclatureUser.Confirm;
begin
  DataModuleUsers.FDMemTable.Edit;

  case FAction of
    amdAttach: begin
      DataModuleUsers.FDMemTableGID.AsString := TGeneratorGIDs.NewGIDByName('UserGID').ToString;
      DataModuleUsers.FDMemTableAttachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      DataModuleUsers.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdModify: begin
      DataModuleUsers.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdDetach: begin
      DataModuleUsers.FDMemTableDetachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
  end;

  DataModuleUsers.FDMemTable.Post;

  DataModuleUsers.SaveToFile;

  SendNotification([actCloseForm]);
end;

procedure TViewModelNomenclatureUser.Cancel;
begin
  DataModuleUsers.FDMemTable.Cancel;

  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclatureUser.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;
end;

destructor TViewModelNomenclatureUser.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclatureUser: IViewModelNomenclatureUser;
begin
  Result := TViewModelNomenclatureUser.Create;
end;

end.
