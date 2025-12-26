unit View.Nomenclature.Store;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Mask,
  Vcl.DBCtrls,
  Data.DB,
  Interfaces.Enums,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Notification,
  Interfaces.ViewModel.Nomenclature.Store;

type
  TViewNomenclatureStore = class(TForm)
    LabelName: TLabel;
    DBEditName: TDBEdit;

    LabelAddress: TLabel;
    DBEditAddress: TDBEdit;

    Panel: TPanel;
      ButtonConfirm: TButton;
      ButtonCancel: TButton;

  {$REGION 'Published Methods'}
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonConfirmClick(Sender: TObject);
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);
    procedure UpdateGUI;
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FObserver: IObserver;
    FViewModel: IViewModelNomenclatureStore;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
//    property Observer: IObserver read FObserver;
    property ViewModel: IViewModelNomenclatureStore read FViewModel;
  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public

  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public

  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}
  end;

  procedure ShowViewNomenclatureStore(const AAction: TAMDAction);

implementation

{$R *.dfm}

uses
  Interfaces.GUIRecords,

  Model.Pattern.Observer.Observer,
  ViewModel.Nomenclature.Store,
  DataModule.Stores;

{$REGION 'Published Methods'}

procedure TViewNomenclatureStore.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FViewModel := CreateViewModelNomenclatureStore;
  FViewModel.Observable.Subscribe(FObserver);

  UpdateGUI;
end;

procedure TViewNomenclatureStore.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TViewNomenclatureStore.ButtonConfirmClick(Sender: TObject);
begin
  ViewModel.Confirm;
end;

procedure TViewNomenclatureStore.ButtonCancelClick(Sender: TObject);
begin
  ViewModel.Cancel;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewNomenclatureStore.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewNomenclatureStore.UpdateGUI;
var
  LGUIRecord: TViewNomenclatureStoreGUIRecord;
begin
  LGUIRecord := ViewModel.GetGUIRecord;

  Caption := LGUIRecord.Caption;

  ActiveControl := DBEditName;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}


procedure ShowViewNomenclatureStore(const AAction: TAMDAction);
var
  LViewNomenclatureStore: TViewNomenclatureStore;
begin
  LViewNomenclatureStore := TViewNomenclatureStore.Create(Application.MainForm);
  LViewNomenclatureStore.ViewModel.SetAction(AAction);
  LViewNomenclatureStore.UpdateGUI;
  case AAction of
    amdAttach: begin
      if LViewNomenclatureStore.ViewModel.Can(amdAttach) then begin
        LViewNomenclatureStore.Show;
      end else begin
        LViewNomenclatureStore.Close;
      end;
    end;
    amdModify: begin
      if LViewNomenclatureStore.ViewModel.Can(amdModify) then begin
        LViewNomenclatureStore.Show;
      end else begin
        LViewNomenclatureStore.Close;
      end;
    end;
    amdDetach: begin
      if LViewNomenclatureStore.ViewModel.Can(amdDetach) then begin
        LViewNomenclatureStore.ViewModel.Confirm;
      end else begin
        LViewNomenclatureStore.Close;
      end;
    end;
  end;
end;

end.

