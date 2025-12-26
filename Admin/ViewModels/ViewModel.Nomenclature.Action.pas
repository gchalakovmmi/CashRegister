unit ViewModel.Nomenclature.Action;

interface

uses
  Interfaces.ViewModel.Nomenclature.Action;

  function CreateViewModelNomenclatureAction: IViewModelNomenclatureAction;

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

  DataModule.Actions;

type
  TViewModelNomenclatureAction = class(TInterfacedObject, IViewModelNomenclatureAction)

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
    function GetGUIRecord: TViewNomenclatureActionGUIRecord;

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

{ TViewModelNomenclatureActions }

{$REGION 'Private Methods'}

procedure TViewModelNomenclatureAction.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclatureAction.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclatureAction.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclatureAction.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclatureAction.GetGUIRecord: TViewNomenclatureActionGUIRecord;
begin
  case FAction of
    amdAttach: Result.Caption := 'ÎÏÅÐÀÖÈß - ÊÎÍÔÈÃÓÐÈÐÀÍÅ';
    amdModify: Result.Caption := 'ÎÏÅÐÀÖÈß - ÏÐÎÌßÍÀ';
    amdDetach: Result.Caption := 'ÎÏÅÐÀÖÈß - ÈÇÂÅÆÄÀÍÅ';
  end;
end;

procedure TViewModelNomenclatureAction.SetAction(const AAction: TAMDAction);
begin
  FAction := AAction;
  case AAction of
    amdAttach: DataModuleActions.FDMemTable.Append;
    amdModify: DataModuleActions.FDMemTable.Edit;
    amdDetach: ;
  end;
end;

function TViewModelNomenclatureAction.Can(const AAction: TAMDAction): Boolean;
begin
  Result := False;
  case AAction of
    amdAttach: begin
      Result := True;
    end;
    amdModify: begin
      Result := False;
      if DataModuleActions.FDMemTable.Active and (DataModuleActions.FDMemTable.RecordCount > 0) then begin
        if DataModuleActions.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
    amdDetach: begin
      Result := False;
      if DataModuleActions.FDMemTable.Active and (DataModuleActions.FDMemTable.RecordCount > 0) then begin
        if DataModuleActions.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

procedure TViewModelNomenclatureAction.Confirm;
begin
  DataModuleActions.FDMemTable.Edit;

  case FAction of
    amdAttach: begin
      DataModuleActions.FDMemTableGID.AsString := TGeneratorGIDs.NewGIDByName('ActionGID').ToString;
      DataModuleActions.FDMemTableAttachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      DataModuleActions.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdModify: begin
      DataModuleActions.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdDetach: begin
      DataModuleActions.FDMemTableDetachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
  end;

  DataModuleActions.FDMemTable.Post;

  DataModuleActions.SaveToFile;

  SendNotification([actCloseForm]);
end;

procedure TViewModelNomenclatureAction.Cancel;
begin
  DataModuleActions.FDMemTable.Cancel;

  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclatureAction.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;
end;

destructor TViewModelNomenclatureAction.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclatureAction: IViewModelNomenclatureAction;
begin
  Result := TViewModelNomenclatureAction.Create;
end;

end.
