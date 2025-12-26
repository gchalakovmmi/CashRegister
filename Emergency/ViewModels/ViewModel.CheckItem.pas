unit ViewModel.CheckItem;

interface

uses
  Interfaces.ViewModel.CheckItem;

  function CreateViewModelCheckItem: IViewModelCheckItem;

implementation

uses
  Winapi.Windows,
  System.IOUtils,
  System.SysUtils,
  System.Classes,
  Vcl.ExtCtrls,
  Globals,
  Interfaces.Enums,
  Interfaces.GUIRecords,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Notification,
  Model.Pattern.Observer.Observer,
  Model.Pattern.Observer.Observable,
  Model.Notification,

  Interfaces.Model.CheckItem,
  DataModule.Items,
  DataModule.Clients,
  Model.CheckItem,
  View.SelectItem, Helper.MyFuncs;

type
  TViewModelCheckItem = class(TInterfacedObject, IViewModelCheckItem, IObservable)

  {$REGION 'Private Methods'}
  private
    procedure SendNotification(const AInterfaceActions: TInterfaceActions);
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FModel: IModelCheckItem;
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
    function GetObservable: IObservable;
    function GetModel: IModelCheckItem;
    procedure SetModel(const Value: IModelCheckItem);
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Observable: IObservable read GetObservable implements IObservable;
    property Model: IModelCheckItem read GetModel write SetModel;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public
    function GetGUIRecord: TViewCheckItemGUIRecord;
    procedure KeyPressed(Key: Char);
  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    destructor Destroy; override;
  {$ENDREGION}
  end;

function CreateViewModelCheckItem: IViewModelCheckItem;
begin
  Result := TViewModelCheckItem.Create;
end;

{ TViewModelCheckItem }

{$REGION 'Private Methods'}

procedure TViewModelCheckItem.SendNotification(const AInterfaceActions: TInterfaceActions);
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

function TViewModelCheckItem.GetObservable: IObservable;
begin
  Result := FObservable;
end;

function TViewModelCheckItem.GetModel: IModelCheckItem;
begin
  Result := FModel;
end;

procedure TViewModelCheckItem.SetModel(const Value: IModelCheckItem);
begin
  FModel := Value;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TViewModelCheckItem.GetGUIRecord: TViewCheckItemGUIRecord;
begin
  Result.Caption := '¿Õ≈“ 4 - œ–Œƒ¿∆¡» v ' + G.GetAppVersion + ' - [œ–Œ¬≈– ¿ Õ¿ ¿–“» ”À]';
  Result.LabelCodeCaption := DataModuleItems.SelectedBARCODE;
  Result.LabelItemCaption := DataModuleItems.SelectedNAME;
  if DataModuleItems.SelectedCOEFF <> 1.00 then begin
    Result.LabelItemCaption := DataModuleItems.SelectedCOEFF.ToString + ' x ' + DataModuleItems.SelectedNAME;
  end;
  Result.LabelMeasureCaption := DataModuleItems.SelectedMEASURE;
  Result.LabelPriceCaption := FormatFloat('0.00', _Round(DataModuleItems.SelectedCOEFF * DataModuleItems.SelectedCLIENTPRICE * (100.00 - DataModuleItems.SelectedDISCOUNT) / 100, 0.01));
end;

procedure TViewModelCheckItem.KeyPressed(Key: Char);
begin
  if Key = #27 then begin
    SendNotification([actCloseForm]);
  end else begin
    SelectItem(Key);
    SendNotification([actUpdateGUI]);
  end;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewModelCheckItem.Create;
begin
  inherited;
  FObservable := CreateObservableClass;
  FModel := CreateModelCheckItem;

  if TFile.Exists(TPath.Combine(G.ItemsFolder, 'start.txt')) or TFile.Exists(TPath.Combine(G.ItemsFolder, 'SelectItems.dat')) then begin
    DataModuleItems.RefreshData;

    DataModuleClients.RefreshData;

    if TFile.Exists(TPath.Combine(G.ItemsFolder, 'new.txt')) then begin
      TFile.Delete(TPath.Combine(G.ItemsFolder, 'new.txt'));
    end;

    if TFile.Exists(TPath.Combine(G.ItemsFolder, 'start.txt')) then begin
      TFile.Delete(TPath.Combine(G.ItemsFolder, 'start.txt'));
    end;

    if TFile.Exists(TPath.Combine(G.ItemsFolder, 'SelectItems.dat')) then begin
      TFile.Delete(TPath.Combine(G.ItemsFolder, 'SelectItems.dat'));
    end;
  end;

  DataModuleItems.ClearSelected;
end;

destructor TViewModelCheckItem.Destroy;
begin
  //
  inherited;
end;

{$ENDREGION}

end.
