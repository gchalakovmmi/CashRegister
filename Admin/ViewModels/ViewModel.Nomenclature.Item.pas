unit ViewModel.Nomenclature.Item;

interface

uses
  Interfaces.ViewModel.Nomenclature.Item;

  function CreateViewModelNomenclatureItem: IViewModelNomenclatureItem;

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

  DataModule.Items;

type
  TViewModelNomenclatureItem = class(TInterfacedObject, IViewModelNomenclatureItem)

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
    function GetGUIRecord: TViewNomenclatureItemGUIRecord;

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

{ TViewModelNomenclatureItems }

{$REGION 'Private Methods'}

procedure TViewModelNomenclatureItem.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclatureItem.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclatureItem.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclatureItem.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclatureItem.GetGUIRecord: TViewNomenclatureItemGUIRecord;
begin
  case FAction of
    amdAttach: Result.Caption := 'ÑÒÎÊÀ/ÓÑËÓÃÀ - ÊÎÍÔÈÃÓÐÈÐÀÍÅ';
    amdModify: Result.Caption := 'ÑÒÎÊÀ/ÓÑËÓÃÀ - ÏÐÎÌßÍÀ';
    amdDetach: Result.Caption := 'ÑÒÎÊÀ/ÓÑËÓÃÀ - ÈÇÂÅÆÄÀÍÅ';
  end;
end;

procedure TViewModelNomenclatureItem.SetAction(const AAction: TAMDAction);
begin
  FAction := AAction;
  case AAction of
    amdAttach: DataModuleItems.FDMemTable.Append;
    amdModify: DataModuleItems.FDMemTable.Edit;
    amdDetach: ;
  end;
end;

function TViewModelNomenclatureItem.Can(const AAction: TAMDAction): Boolean;
begin
  Result := False;
  case AAction of
    amdAttach: begin
      Result := True;
    end;
    amdModify: begin
      Result := False;
      if DataModuleItems.FDMemTable.Active and (DataModuleItems.FDMemTable.RecordCount > 0) then begin
        if DataModuleItems.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
    amdDetach: begin
      Result := False;
      if DataModuleItems.FDMemTable.Active and (DataModuleItems.FDMemTable.RecordCount > 0) then begin
        if DataModuleItems.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

procedure TViewModelNomenclatureItem.Confirm;
begin
  DataModuleItems.FDMemTable.Edit;

  case FAction of
    amdAttach: begin
      DataModuleItems.FDMemTableGID.AsString := TGeneratorGIDs.NewGIDByName('ItemGID').ToString;
      DataModuleItems.FDMemTableAttachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      DataModuleItems.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdModify: begin
      DataModuleItems.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdDetach: begin
      DataModuleItems.FDMemTableDetachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
  end;

  DataModuleItems.FDMemTable.Post;

  DataModuleItems.SaveToFile;

  SendNotification([actCloseForm]);
end;

procedure TViewModelNomenclatureItem.Cancel;
begin
  DataModuleItems.FDMemTable.Cancel;

  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclatureItem.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;
end;

destructor TViewModelNomenclatureItem.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclatureItem: IViewModelNomenclatureItem;
begin
  Result := TViewModelNomenclatureItem.Create;
end;

end.
