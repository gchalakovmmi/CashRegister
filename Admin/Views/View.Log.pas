unit View.Log;

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
  Vcl.WinXPickers,
  Data.DB,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Notification,
//  Interfaces.ViewModel.Log,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageBin;

type
  TViewLog = class(TForm)

    DBGrid: TDBGrid;
    Panel: TPanel;
    SpeedButtonExit: TSpeedButton;
    SpeedButtonFilter: TSpeedButton;
    SpeedButtonExport: TSpeedButton;
    PanelFilter: TPanel;
    LabelDateFrom: TLabel;
    DatePickerFrom: TDatePicker;
    LabelPeriodTo: TLabel;
    DatePickerTo: TDatePicker;
    LabelStore: TLabel;
    ComboBoxStore: TComboBox;
    LabelWorkstation: TLabel;
    ComboBoxWorkstation: TComboBox;
    LabelUser: TLabel;
    ComboBoxUser: TComboBox;
    LabelFiscalDevice: TLabel;
    FiscalDevice: TComboBox;
    FDMemTable: TFDMemTable;
    DataSource: TDataSource;
    FDMemTableUserGID: TStringField;
    FDMemTableUserName: TStringField;
    FDMemTableStoreGID: TStringField;
    FDMemTableStoreName: TStringField;
    FDMemTableWorkstationGID: TStringField;
    FDMemTableWorkstationName: TStringField;
    FDMemTableUserRole: TStringField;
    FDMemTableCreatedAt: TStringField;
    FDMemTableEventType: TStringField;
    FDMemTableDescription: TStringField;

  {$REGION 'Published Methods'}
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
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
//    FViewModel: IViewModelLog;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
//    property Observer: IObserver read FObserver;
//    property ViewModel: IViewModelLog read FViewModel;
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

  procedure ShowViewLog;

implementation

{$R *.dfm}

uses
  Interfaces.Enums,
  Interfaces.GUIRecords,

  Model.Pattern.Observer.Observer,
//  ViewModel.Log,
  DataModule.Actions;

{$REGION 'Published Methods'}

procedure TViewLog.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

//  FViewModel := CreateViewModelLog;
//  FViewModel.Observable.Subscribe(FObserver);

  UpdateGUI;
end;

procedure TViewLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TViewLog.FormResize(Sender: TObject);
begin
  UpdateGUI;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewLog.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewLog.UpdateGUI;
//var
//  LGUIRecord: TViewLogGUIRecord;
begin
//  LGUIRecord := ViewModel.GetGUIRecord(ClientWidth);
//
//  DBGrid.Columns[0].Width := LGUIRecord.DBGridColumns0Width;
//  DBGrid.Columns[1].Width := LGUIRecord.DBGridColumns1Width;
//  DBGrid.Columns[2].Width := LGUIRecord.DBGridColumns2Width;
//  DBGrid.Columns[3].Width := LGUIRecord.DBGridColumns3Width;
//  DBGrid.Columns[4].Width := LGUIRecord.DBGridColumns4Width;

//  FDMemTable.CreateDataSet;

  ActiveControl := DBGrid;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TViewLog.SpeedButtonExitClick(Sender: TObject);
begin
  Close;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

procedure ShowViewLog;
var
  LViewLog: TViewLog;
begin
  LViewLog := TViewLog.Create(Application.MainForm);
  LViewLog.Show;
end;

end.
