unit ViewModel.Nomenclature.PaymentTypes;

interface

uses
  Interfaces.ViewModel.Nomenclature.PaymentTypes;

  function CreateViewModelNomenclaturePaymentTypes: IViewModelNomenclaturePaymentTypes;

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

  View.Nomenclature.PaymentType,
  DataModule.PaymentTypes;

type
  TViewModelNomenclaturePaymentTypes = class(TInterfacedObject, IViewModelNomenclaturePaymentTypes)

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);
    procedure SendNotification(const AInterfaceActions: TInterfaceActions);
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
    function GetGUIRecord(const AWidth: Integer): TViewNomenclaturePaymentTypesGUIRecord;

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

{ TViewModelNomenclaturePaymentTypes }

{$REGION 'Private Methods'}

procedure TViewModelNomenclaturePaymentTypes.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclaturePaymentTypes.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclaturePaymentTypes.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclaturePaymentTypes.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclaturePaymentTypes.GetGUIRecord(const AWidth: Integer): TViewNomenclaturePaymentTypesGUIRecord;
var
  LSpaces: Integer;
begin
  LSpaces := 3 + 1 + 6 * 1 + 18 + 1 + 3;

  Result.DBGridColumns0Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns1Width := (AWidth - LSpaces)*60 div 100;
  Result.DBGridColumns2Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns3Width := (AWidth - LSpaces)*10 div 100;
  Result.DBGridColumns4Width := (AWidth - LSpaces)*10 div 100;

  Result.DBGridColumns0Width :=
    Result.DBGridColumns0Width +
    AWidth -
    LSpaces -
    Result.DBGridColumns0Width -
    Result.DBGridColumns1Width -
    Result.DBGridColumns2Width -
    Result.DBGridColumns3Width -
    Result.DBGridColumns4Width;
end;

procedure TViewModelNomenclaturePaymentTypes.Attach;
begin
  ShowViewNomenclaturePaymentType(amdAttach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclaturePaymentTypes.Modify;
begin
  ShowViewNomenclaturePaymentType(amdModify);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclaturePaymentTypes.Detach;
begin
  ShowViewNomenclaturePaymentType(amdDetach);
  SendNotification([actUpdateGUI]);
end;

procedure TViewModelNomenclaturePaymentTypes.CloseForm;
begin
  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclaturePaymentTypes.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;

  DataModulePaymentTypes.LoadFromFile;
end;

destructor TViewModelNomenclaturePaymentTypes.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclaturePaymentTypes: IViewModelNomenclaturePaymentTypes;
begin
  Result := TViewModelNomenclaturePaymentTypes.Create;
end;

end.
