unit View.Nomenclature.Actions;

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
  Vcl.Buttons,
  Data.DB,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Notification,
  Interfaces.ViewModel.Nomenclature.Actions;

type
  TViewNomenclatureActions = class(TForm)

    DBGrid: TDBGrid;
    Panel: TPanel;
    SpeedButtonAttach: TSpeedButton;
    SpeedButtonModify: TSpeedButton;
    SpeedButtonDetach: TSpeedButton;
    SpeedButtonExit: TSpeedButton;
    SpeedButtonExport: TSpeedButton;

  {$REGION 'Published Methods'}
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure SpeedButtonAttachClick(Sender: TObject);
    procedure SpeedButtonModifyClick(Sender: TObject);
    procedure SpeedButtonDetachClick(Sender: TObject);
    procedure SpeedButtonExitClick(Sender: TObject);
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);
    procedure UpdateGUI;
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FObserver: IObserver;
    FViewModel: IViewModelNomenclatureActions;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
//    property Observer: IObserver read FObserver;
    property ViewModel: IViewModelNomenclatureActions read FViewModel;
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

  procedure ShowViewNomenclatureActions;

implementation

{$R *.dfm}

uses
  Interfaces.Enums,
  Interfaces.GUIRecords,

  Model.Pattern.Observer.Observer,
  ViewModel.Nomenclature.Actions,
  DataModule.Actions;

{$REGION 'Published Methods'}

procedure TViewNomenclatureActions.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FViewModel := CreateViewModelNomenclatureActions;
  FViewModel.Observable.Subscribe(FObserver);

  UpdateGUI;
end;

procedure TViewNomenclatureActions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TViewNomenclatureActions.FormResize(Sender: TObject);
begin
  UpdateGUI;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewNomenclatureActions.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewNomenclatureActions.UpdateGUI;
var
  LGUIRecord: TViewNomenclatureActionsGUIRecord;
begin
  LGUIRecord := ViewModel.GetGUIRecord(ClientWidth);

  DBGrid.Columns[0].Width := LGUIRecord.DBGridColumns0Width;
  DBGrid.Columns[1].Width := LGUIRecord.DBGridColumns1Width;
  DBGrid.Columns[2].Width := LGUIRecord.DBGridColumns2Width;
  DBGrid.Columns[3].Width := LGUIRecord.DBGridColumns3Width;
  DBGrid.Columns[4].Width := LGUIRecord.DBGridColumns4Width;

  ActiveControl := DBGrid;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TViewNomenclatureActions.SpeedButtonAttachClick(Sender: TObject);
begin
  ViewModel.Attach;
end;

procedure TViewNomenclatureActions.SpeedButtonModifyClick(Sender: TObject);
begin
  ViewModel.Modify;
end;

procedure TViewNomenclatureActions.SpeedButtonDetachClick(Sender: TObject);
begin
  ViewModel.Detach;
end;

procedure TViewNomenclatureActions.SpeedButtonExitClick(Sender: TObject);
begin
  Close;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

procedure ShowViewNomenclatureActions;
var
  LViewNomenclatureActions: TViewNomenclatureActions;
begin
  LViewNomenclatureActions := TViewNomenclatureActions.Create(Application.MainForm);
  LViewNomenclatureActions.Show;
end;

end.
