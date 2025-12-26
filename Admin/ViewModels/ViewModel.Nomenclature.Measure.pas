unit ViewModel.Nomenclature.Measure;

interface

uses
  Interfaces.ViewModel.Nomenclature.Measure;

  function CreateViewModelNomenclatureMeasure: IViewModelNomenclatureMeasure;

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

  DataModule.Measures;

type
  TViewModelNomenclatureMeasure = class(TInterfacedObject, IViewModelNomenclatureMeasure)

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
    function GetGUIRecord: TViewNomenclatureMeasureGUIRecord;

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

{ TViewModelNomenclatureMeasures }

{$REGION 'Private Methods'}

procedure TViewModelNomenclatureMeasure.ProcessNotification(const AModelNotification: IModelNotification);
begin
//
end;

procedure TViewModelNomenclatureMeasure.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelNomenclatureMeasure.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewModelNomenclatureMeasure.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelNomenclatureMeasure.GetGUIRecord: TViewNomenclatureMeasureGUIRecord;
begin
  case FAction of
    amdAttach: Result.Caption := 'ÌßÐÊÀ - ÊÎÍÔÈÃÓÐÈÐÀÍÅ';
    amdModify: Result.Caption := 'ÌßÐÊÀ - ÏÐÎÌßÍÀ';
    amdDetach: Result.Caption := 'ÌßÐÊÀ - ÈÇÂÅÆÄÀÍÅ';
  end;
end;

procedure TViewModelNomenclatureMeasure.SetAction(const AAction: TAMDAction);
begin
  FAction := AAction;
  case AAction of
    amdAttach: DataModuleMeasures.FDMemTable.Append;
    amdModify: DataModuleMeasures.FDMemTable.Edit;
    amdDetach: ;
  end;
end;

function TViewModelNomenclatureMeasure.Can(const AAction: TAMDAction): Boolean;
begin
  Result := False;
  case AAction of
    amdAttach: begin
      Result := True;
    end;
    amdModify: begin
      Result := False;
      if DataModuleMeasures.FDMemTable.Active and (DataModuleMeasures.FDMemTable.RecordCount > 0) then begin
        if DataModuleMeasures.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
    amdDetach: begin
      Result := False;
      if DataModuleMeasures.FDMemTable.Active and (DataModuleMeasures.FDMemTable.RecordCount > 0) then begin
        if DataModuleMeasures.FDMemTableDetachedAt.AsString = '' then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

procedure TViewModelNomenclatureMeasure.Confirm;
begin
  DataModuleMeasures.FDMemTable.Edit;

  case FAction of
    amdAttach: begin
      DataModuleMeasures.FDMemTableGID.AsString := TGeneratorGIDs.NewGIDByName('MeasureGID').ToString;
      DataModuleMeasures.FDMemTableAttachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      DataModuleMeasures.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdModify: begin
      DataModuleMeasures.FDMemTableModifiedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
    amdDetach: begin
      DataModuleMeasures.FDMemTableDetachedAt.AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
    end;
  end;

  DataModuleMeasures.FDMemTable.Post;

  DataModuleMeasures.SaveToFile;

  SendNotification([actCloseForm]);
end;

procedure TViewModelNomenclatureMeasure.Cancel;
begin
  DataModuleMeasures.FDMemTable.Cancel;

  SendNotification([actCloseForm]);
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelNomenclatureMeasure.Create;
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;
end;

destructor TViewModelNomenclatureMeasure.Destroy;
begin
//
  inherited;
end;

{$ENDREGION}

function CreateViewModelNomenclatureMeasure: IViewModelNomenclatureMeasure;
begin
  Result := TViewModelNomenclatureMeasure.Create;
end;

end.
