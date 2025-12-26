unit View.Reversal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  Data.DB,
  Vcl.ExtCtrls,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Interfaces.Model.Notification,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Classes.Sale,
  Interfaces.ViewModel.Reversal;

type
  TViewReversal = class(TForm, IObserver, IObservable)
    ActionManager: TActionManager;
      ActionExit: TAction;
      ActionReversal: TAction;
      ActionReversalAll: TAction;

    PanelButtons: TPanel;
      ButtonExit: TButton;
      ButtonRemoveItem: TButton;
      ButtonCheckItem: TButton;

    PanelShow: TPanel;
      EditShow: TDBEdit;

    PanelGrid: TPanel;
      Grid: TDBGrid;

    StatusBar: TStatusBar;

  {$REGION 'Published Methods'}
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure ActionExitExecute(Sender: TObject);               // ESC
    procedure ActionReversalExecute(Sender: TObject);           // F8
    procedure ActionReversalAllExecute(Sender: TObject);        // Alt+F8

    procedure EditShowEnter(Sender: TObject);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);

    procedure SetupGUI;
    procedure UpdateGUI;
    procedure DisableActions;
    procedure EnableActions;
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FViewModel: IViewModelReversal;
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
    function GetViewModel: IViewModelReversal;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Observer: IObserver read FObserver implements IObserver;
    property Observable: IObservable read FObservable implements IObservable;
    property ViewModel: IViewModelReversal read GetViewModel;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

  procedure ShowViewReversal;

implementation

{$R *.dfm}

uses
  System.UITypes,
  Interfaces.Enums,
  Interfaces.GUIRecords,
  Model.Pattern.Observer.Observer,
  Model.Pattern.Observer.Observable,
  ViewModel.Reversal;

{$REGION 'Published Methods'}

procedure TViewReversal.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObservable := CreateObservableClass;

  FViewModel := CreateViewModelReversal;
  FViewModel.Observable.Subscribe(FObserver);

  ViewModel.SetupReversal;
end;

procedure TViewReversal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ViewModel.TeardownReversal;

  FViewModel.Observable.UnSubscribe(FObserver);

  Action := caFree;
end;

// Actions

procedure TViewReversal.ActionExitExecute(Sender: TObject);
begin
  ViewModel.ActionExitExecute;
end;

procedure TViewReversal.ActionReversalExecute(Sender: TObject);
begin
  ViewModel.ActionReversalExecute;
end;

procedure TViewReversal.ActionReversalAllExecute(Sender: TObject);
begin
  ViewModel.ActionReversalAllExecute;
end;


// Edit Controls

procedure TViewReversal.EditShowEnter(Sender: TObject);
begin
  ViewModel.EditShowEnter;
end;

procedure TViewReversal.GridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with (Sender as TDBGrid) do begin
    if (DataSource.DataSet.FieldByName('IsCancelled').AsString = 'да') and ((Column.FieldName = 'ItemName') or (Column.FieldName = 'Total')) then begin
      Canvas.Font.Style := [fsBold, fsStrikeOut];
    end;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewReversal.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actSetupGUI in AModelNotification.Actions then begin
    SetupGUI;
  end;
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actReversalDisableActions in AModelNotification.Actions then begin
    DisableActions;
  end;
  if actReversalActiveControlGrid in AModelNotification.Actions then begin
    ActiveControl := Grid;
  end;
  if actReversalEnableActions in AModelNotification.Actions then begin
    EnableActions;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewReversal.SetupGUI;
var
  LViewReversalGUISetupRecord: TViewReversalGUISetupRecord;
begin
  LViewReversalGUISetupRecord := ViewModel.GetGUISetupRecord(Screen.Width - 16, Screen.Height - 16);

  Caption := LViewReversalGUISetupRecord.Caption;
  Color := LViewReversalGUISetupRecord.Color;
  Top := LViewReversalGUISetupRecord.Top;
  Left := LViewReversalGUISetupRecord.Left;
  Width := LViewReversalGUISetupRecord.Width;
  Height := LViewReversalGUISetupRecord.Height;

  // Panel Buttons
  ButtonExit.Left := LViewReversalGUISetupRecord.ButtonExitLeft;
  ButtonExit.Width := LViewReversalGUISetupRecord.ButtonExitWidth;

  ButtonRemoveItem.Left := LViewReversalGUISetupRecord.ButtonRemoveItemLeft;
  ButtonRemoveItem.Width := LViewReversalGUISetupRecord.ButtonRemoveItemWidth;

  ButtonCheckItem.Left := LViewReversalGUISetupRecord.ButtonCheckItemLeft;
  ButtonCheckItem.Width := LViewReversalGUISetupRecord.ButtonCheckItemWidth;

  // Panel Show
  EditShow.Left := LViewReversalGUISetupRecord.EditShowLeft;
  EditShow.Width := LViewReversalGUISetupRecord.EditShowWidth;

  // Panel Grid
  PanelGrid.Width := LViewReversalGUISetupRecord.PanelGridWidth;
  PanelGrid.Height := LViewReversalGUISetupRecord.PanelGridHeight;
  Grid.Top := LViewReversalGUISetupRecord.GridTop;
  Grid.Left := LViewReversalGUISetupRecord.GridLeft;
  Grid.Height := LViewReversalGUISetupRecord.GridHeight;
  Grid.Width := LViewReversalGUISetupRecord.GridWidth;
  Grid.Columns[0].Width := LViewReversalGUISetupRecord.GridColumns0Width;
  Grid.Columns[1].Width := LViewReversalGUISetupRecord.GridColumns1Width;
  Grid.Columns[2].Width := LViewReversalGUISetupRecord.GridColumns2Width;
  Grid.Columns[3].Width := LViewReversalGUISetupRecord.GridColumns3Width;
  Grid.Columns[4].Width := LViewReversalGUISetupRecord.GridColumns4Width;
  Grid.Columns[5].Width := LViewReversalGUISetupRecord.GridColumns5Width;

  Self.Update;
end;

procedure TViewReversal.UpdateGUI;
var
  LViewReversalGUIRecord: TViewReversalGUIRecord;
begin
  LViewReversalGUIRecord := ViewModel.GetGUIRecord;

  Caption := LViewReversalGUIRecord.Caption;

  Self.Update;
end;

procedure TViewReversal.DisableActions;
begin
  ActionExit.Enabled := False;
  ActionReversal.Enabled := False;
  ActionReversalAll.Enabled := False;
end;

procedure TViewReversal.EnableActions;
var
  LViewReversalGUIActionsRecord: TViewReversalGUIActionsRecord;
begin
  LViewReversalGUIActionsRecord := ViewModel.GetGUIActionsRecord;

  ActionExit.Enabled := LViewReversalGUIActionsRecord.ActionExitEnabled;
  ActionReversal.Enabled := LViewReversalGUIActionsRecord.ActionReversalEnabled;
  ActionReversalAll.Enabled := LViewReversalGUIActionsRecord.ActionReversalAllEnabled;

  UpdateGUI;

  Self.Update;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TViewReversal.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewReversal.GetObservable: IObservable;
begin
  Result := FObservable;
end;

function TViewReversal.GetViewModel: IViewModelReversal;
begin
  Result := FViewModel;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

procedure ShowViewReversal;
var
  LViewReversal: TViewReversal;
begin
  LViewReversal := TViewReversal.Create(nil);
  try
    LViewReversal.ShowModal;
  finally
    LViewReversal.Free;
  end;
end;

end.
