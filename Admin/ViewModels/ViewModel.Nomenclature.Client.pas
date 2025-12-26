unit ViewModel.Nomenclature.Client;

interface

uses
  Interfaces.ViewModel.Nomenclature.Client;

  function CreateViewModelNomenclatureClient: IViewModelNomenclatureClient;

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

  DataModule.Clients;

type
  TViewModelNomenclatureClient = class(TInterfacedObject, IViewModelNomenclatureClient)

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
    function GetGUIRecord: TViewNomenclatureClientGUIRecord;

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

{ TViewModelNomenclatureClients }

{$REGION 'Private Methods'}

procedure TViewModelNomenclatureClient.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclatureClient.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclatureClient.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclatureClient.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclatureClient.GetGUIRecord: TViewNomenclatureClientGUIRecord;
begin
  case FAction of
    amdAttach: Result.Caption := 'ÊËÈÅÍÒ - ÊÎÍÔÈÃÓÐÈÐÀÍÅ';
    amdModify: Result.Caption := 'ÊËÈÅÍÒ - ÏÐÎÌßÍÀ';
    amdDetach: Result.Caption := 'ÊËÈÅÍÒ - ÈÇÂÅÆÄÀÍÅ';
  end;
end;

procedure TViewModelNomenclatureClient.SetAction(const AAction: TAMDAction);
begin
  FAction := AAction;
  case AAction of
    amdAttach: DataModuleClients.FDMemTable.Append;
    amdModify: DataModuleClients.FDMemTable.Edit;
    amdDetach: ;
  end;
end;

function TViewModelNomenclatureClient.Can(const AAction: TAMDAction): Boolean;
begin
  Result := False;
  case AAction of
    amdAttach: begin
      Result := True;
    end;
    amdModify: begin
      Result := False;
      if DataModuleClients.FDMemTable.Active and (DataModuleClients.FDMemTable.RecordCount > 0) then begin
        if DataModuleClients.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
    amdDetach: begin
      Result := False;
      if DataModuleClients.FDMemTable.Active and (DataModuleClients.FDMemTable.RecordCount > 0) then begin
        if DataModuleClients.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

procedure TViewModelNomenclatureClient.Confirm;
begin
  DataModuleClients.FDMemTable.Edit;

  case FAction of
    amdAttach: begin
      DataModuleClients.FDMemTableGID.AsString := TGeneratorGIDs.NewGIDByName('ClientGID').ToString;
      DataModuleClients.FDMemTableAttachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      DataModuleClients.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdModify: begin
      DataModuleClients.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdDetach: begin
      DataModuleClients.FDMemTableDetachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
  end;

  DataModuleClients.FDMemTable.Post;

  DataModuleClients.SaveToFile;

  SendNotification([actCloseForm]);
end;

procedure TViewModelNomenclatureClient.Cancel;
begin
  DataModuleClients.FDMemTable.Cancel;

  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclatureClient.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;
end;

destructor TViewModelNomenclatureClient.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclatureClient: IViewModelNomenclatureClient;
begin
  Result := TViewModelNomenclatureClient.Create;
end;

end.
