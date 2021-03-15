unit View.Nomenclature.Client;

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
  Interfaces.ViewModel.Nomenclature.Client;

type
  TViewNomenclatureClient = class(TForm)
    LabelName: TLabel;
      DBEditName: TDBEdit;
    LabelTaxID: TLabel;
      DBEditTaxID: TDBEdit;
    LabelAddress: TLabel;
      DBEditAddress: TDBEdit;
    LabelContact: TLabel;
      DBEditContact: TDBEdit;
    LabelVIP: TLabel;
      DBEditVIP: TDBEdit;
    LabelMarkUp: TLabel;
      DBEditMarkUp: TDBEdit;
    LabelLoyaltyCard: TLabel;
      DBEditLoyaltyCard: TDBEdit;

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
    FViewModel: IViewModelNomenclatureClient;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
//    property Observer: IObserver read FObserver;
    property ViewModel: IViewModelNomenclatureClient read FViewModel;
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

  procedure ShowViewNomenclatureClient(const AAction: TAMDAction);

implementation

{$R *.dfm}

uses
  Interfaces.GUIRecords,

  Model.Pattern.Observer.Observer,
  ViewModel.Nomenclature.Client,
  DataModule.Clients;

{$REGION 'Published Methods'}

procedure TViewNomenclatureClient.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FViewModel := CreateViewModelNomenclatureClient;
  FViewModel.Observable.Subscribe(FObserver);

  UpdateGUI;
end;

procedure TViewNomenclatureClient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TViewNomenclatureClient.ButtonConfirmClick(Sender: TObject);
begin
  ViewModel.Confirm;
end;

procedure TViewNomenclatureClient.ButtonCancelClick(Sender: TObject);
begin
  ViewModel.Cancel;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewNomenclatureClient.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewNomenclatureClient.UpdateGUI;
var
  LGUIRecord: TViewNomenclatureClientGUIRecord;
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


procedure ShowViewNomenclatureClient(const AAction: TAMDAction);
var
  LViewNomenclatureClient: TViewNomenclatureClient;
begin
  LViewNomenclatureClient := TViewNomenclatureClient.Create(Application.MainForm);
  LViewNomenclatureClient.ViewModel.SetAction(AAction);
  LViewNomenclatureClient.UpdateGUI;
  case AAction of
    amdAttach: begin
      if LViewNomenclatureClient.ViewModel.Can(amdAttach) then begin
        LViewNomenclatureClient.Show;
      end else begin
        LViewNomenclatureClient.Close;
      end;
    end;
    amdModify: begin
      if LViewNomenclatureClient.ViewModel.Can(amdModify) then begin
        LViewNomenclatureClient.Show;
      end else begin
        LViewNomenclatureClient.Close;
      end;
    end;
    amdDetach: begin
      if LViewNomenclatureClient.ViewModel.Can(amdDetach) then begin
        LViewNomenclatureClient.ViewModel.Confirm;
      end else begin
        LViewNomenclatureClient.Close;
      end;
    end;
  end;
end;

end.

