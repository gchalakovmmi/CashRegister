unit ViewModel.Nomenclature.PaymentType;

interface

uses
  Interfaces.ViewModel.Nomenclature.PaymentType;

  function CreateViewModelNomenclaturePaymentType: IViewModelNomenclaturePaymentType;

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

  DataModule.PaymentTypes;

type
  TViewModelNomenclaturePaymentType = class(TInterfacedObject, IViewModelNomenclaturePaymentType)

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
    function GetGUIRecord: TViewNomenclaturePaymentTypeGUIRecord;

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

{ TViewModelNomenclaturePaymentTypes }

{$REGION 'Private Methods'}

procedure TViewModelNomenclaturePaymentType.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclaturePaymentType.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclaturePaymentType.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclaturePaymentType.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclaturePaymentType.GetGUIRecord: TViewNomenclaturePaymentTypeGUIRecord;
begin
  case FAction of
    amdAttach: Result.Caption := 'ÂÈÄ ÏËÀÙÀÍÅ - ÊÎÍÔÈÃÓÐÈÐÀÍÅ';
    amdModify: Result.Caption := 'ÂÈÄ ÏËÀÙÀÍÅ - ÏÐÎÌßÍÀ';
    amdDetach: Result.Caption := 'ÂÈÄ ÏËÀÙÀÍÅ - ÈÇÂÅÆÄÀÍÅ';
  end;
end;

procedure TViewModelNomenclaturePaymentType.SetAction(const AAction: TAMDAction);
begin
  FAction := AAction;
  case AAction of
    amdAttach: DataModulePaymentTypes.FDMemTable.Append;
    amdModify: DataModulePaymentTypes.FDMemTable.Edit;
    amdDetach: ;
  end;
end;

function TViewModelNomenclaturePaymentType.Can(const AAction: TAMDAction): Boolean;
begin
  Result := False;
  case AAction of
    amdAttach: begin
      Result := True;
    end;
    amdModify: begin
      Result := False;
      if DataModulePaymentTypes.FDMemTable.Active and (DataModulePaymentTypes.FDMemTable.RecordCount > 0) then begin
        if DataModulePaymentTypes.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
    amdDetach: begin
      Result := False;
      if DataModulePaymentTypes.FDMemTable.Active and (DataModulePaymentTypes.FDMemTable.RecordCount > 0) then begin
        if DataModulePaymentTypes.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

procedure TViewModelNomenclaturePaymentType.Confirm;
begin
  DataModulePaymentTypes.FDMemTable.Edit;

  case FAction of
    amdAttach: begin
      DataModulePaymentTypes.FDMemTableGID.AsString := TGeneratorGIDs.NewGIDByName('PaymentTypeGID').ToString;
      DataModulePaymentTypes.FDMemTableAttachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      DataModulePaymentTypes.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdModify: begin
      DataModulePaymentTypes.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdDetach: begin
      DataModulePaymentTypes.FDMemTableDetachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
  end;

  DataModulePaymentTypes.FDMemTable.Post;

  DataModulePaymentTypes.SaveToFile;

  SendNotification([actCloseForm]);
end;

procedure TViewModelNomenclaturePaymentType.Cancel;
begin
  DataModulePaymentTypes.FDMemTable.Cancel;

  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclaturePaymentType.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;
end;

destructor TViewModelNomenclaturePaymentType.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclaturePaymentType: IViewModelNomenclaturePaymentType;
begin
  Result := TViewModelNomenclaturePaymentType.Create;
end;

end.
