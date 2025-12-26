unit View.Nomenclature.Action;

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
  Interfaces.ViewModel.Nomenclature.Action;

type
  TViewNomenclatureAction = class(TForm)
    LabelName: TLabel;
      DBEditName: TDBEdit;

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
    FViewModel: IViewModelNomenclatureAction;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
//    property Observer: IObserver read FObserver;
    property ViewModel: IViewModelNomenclatureAction read FViewModel;
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

  procedure ShowViewNomenclatureAction(const AAction: TAMDAction);

implementation

{$R *.dfm}

uses
  Interfaces.GUIRecords,

  Model.Pattern.Observer.Observer,
  ViewModel.Nomenclature.Action,
  DataModule.Actions;

{$REGION 'Published Methods'}

procedure TViewNomenclatureAction.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FViewModel := CreateViewModelNomenclatureAction;
  FViewModel.Observable.Subscribe(FObserver);

  UpdateGUI;
end;

procedure TViewNomenclatureAction.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TViewNomenclatureAction.ButtonConfirmClick(Sender: TObject);
begin
  ViewModel.Confirm;
end;

procedure TViewNomenclatureAction.ButtonCancelClick(Sender: TObject);
begin
  ViewModel.Cancel;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewNomenclatureAction.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewNomenclatureAction.UpdateGUI;
var
  LGUIRecord: TViewNomenclatureActionGUIRecord;
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


procedure ShowViewNomenclatureAction(const AAction: TAMDAction);
var
  LViewNomenclatureAction: TViewNomenclatureAction;
begin
  LViewNomenclatureAction := TViewNomenclatureAction.Create(Application.MainForm);
  LViewNomenclatureAction.ViewModel.SetAction(AAction);
  LViewNomenclatureAction.UpdateGUI;
  case AAction of
    amdAttach: begin
      if LViewNomenclatureAction.ViewModel.Can(amdAttach) then begin
        LViewNomenclatureAction.Show;
      end else begin
        LViewNomenclatureAction.Close;
      end;
    end;
    amdModify: begin
      if LViewNomenclatureAction.ViewModel.Can(amdModify) then begin
        LViewNomenclatureAction.Show;
      end else begin
        LViewNomenclatureAction.Close;
      end;
    end;
    amdDetach: begin
      if LViewNomenclatureAction.ViewModel.Can(amdDetach) then begin
        LViewNomenclatureAction.ViewModel.Confirm;
      end else begin
        LViewNomenclatureAction.Close;
      end;
    end;
  end;
end;

end.

