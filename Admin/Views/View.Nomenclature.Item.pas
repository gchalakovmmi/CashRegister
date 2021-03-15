unit View.Nomenclature.Item;

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
  Interfaces.ViewModel.Nomenclature.Item;

type
  TViewNomenclatureItem = class(TForm)
    LabelName: TLabel;
    DBEditName: TDBEdit;
    LabelShortName: TLabel;
    DBEditShortName: TDBEdit;
    LabelCode: TLabel;
    DBEditCode: TDBEdit;
    LabelVendorPrice: TLabel;
    DBEditVendorPrice: TDBEdit;
    LabelClientPrice: TLabel;
    DBEditClientPrice: TDBEdit;
    LabelBaseMeasure: TLabel;
    DBEditBaseMeasure: TDBEdit;
    LabelBaseCoeff: TLabel;
    DBEditBaseCoeff: TDBEdit;
    LabelBasePrice: TLabel;
    DBEditBasePrice: TDBEdit;

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
    FViewModel: IViewModelNomenclatureItem;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
//    property Observer: IObserver read FObserver;
    property ViewModel: IViewModelNomenclatureItem read FViewModel;
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

  procedure ShowViewNomenclatureItem(const AAction: TAMDAction);

implementation

{$R *.dfm}

uses
  Interfaces.GUIRecords,

  Model.Pattern.Observer.Observer,
  ViewModel.Nomenclature.Item,
  DataModule.Items;

{$REGION 'Published Methods'}

procedure TViewNomenclatureItem.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FViewModel := CreateViewModelNomenclatureItem;
  FViewModel.Observable.Subscribe(FObserver);

  UpdateGUI;
end;

procedure TViewNomenclatureItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TViewNomenclatureItem.ButtonConfirmClick(Sender: TObject);
begin
  ViewModel.Confirm;
end;

procedure TViewNomenclatureItem.ButtonCancelClick(Sender: TObject);
begin
  ViewModel.Cancel;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewNomenclatureItem.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewNomenclatureItem.UpdateGUI;
var
  LGUIRecord: TViewNomenclatureItemGUIRecord;
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


procedure ShowViewNomenclatureItem(const AAction: TAMDAction);
var
  LViewNomenclatureItem: TViewNomenclatureItem;
begin
  LViewNomenclatureItem := TViewNomenclatureItem.Create(Application.MainForm);
  LViewNomenclatureItem.ViewModel.SetAction(AAction);
  LViewNomenclatureItem.UpdateGUI;
  case AAction of
    amdAttach: begin
      if LViewNomenclatureItem.ViewModel.Can(amdAttach) then begin
        LViewNomenclatureItem.Show;
      end else begin
        LViewNomenclatureItem.Close;
      end;
    end;
    amdModify: begin
      if LViewNomenclatureItem.ViewModel.Can(amdModify) then begin
        LViewNomenclatureItem.Show;
      end else begin
        LViewNomenclatureItem.Close;
      end;
    end;
    amdDetach: begin
      if LViewNomenclatureItem.ViewModel.Can(amdDetach) then begin
        LViewNomenclatureItem.ViewModel.Confirm;
      end else begin
        LViewNomenclatureItem.Close;
      end;
    end;
  end;
end;

end.

