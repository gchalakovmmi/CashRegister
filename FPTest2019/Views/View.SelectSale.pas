unit View.SelectSale;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Data.DB,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.WinXPickers,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Notification,
  Interfaces.ViewModel.SelectSale;

type
  TViewSelectSale = class(TForm, IObserver, IObservable)
    ButtonExit: TButton;
    ButtonReversal: TButton;
    DatePicker: TDatePicker;
    GridSales: TDBGrid;
    GridSaleDetails: TDBGrid;
    ButtonAssignNewClient: TButton;

  {$REGION 'Published Methods'}
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonExitClick(Sender: TObject);
    procedure ButtonReversalClick(Sender: TObject);
    procedure DatePickerChange(Sender: TObject);
    procedure GridSaleDetailsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ButtonAssignNewClientClick(Sender: TObject);
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);

    procedure UpdateGUI;
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FViewModel: IViewModelSelectSale;
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
    function GetViewModel: IViewModelSelectSale;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Observer: IObserver read FObserver implements IObserver;
    property Observable: IObservable read FObservable implements IObservable;
    property ViewModel: IViewModelSelectSale read GetViewModel;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

  procedure ShowViewSelectSale;

implementation

uses
  View.Message,
  Helper.MyFuncs,
  Model.Pattern.Observer.Observer,
  Model.Pattern.Observer.Observable,
  Interfaces.Enums,
  Interfaces.GUIRecords,
  ViewModel.SelectSale,
  DataModule.Sale;

{$R *.dfm}

{ TViewSelectSale }

{$REGION 'Published Methods'}

procedure TViewSelectSale.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObServable := CreateObservableClass;

  FViewModel := CreateViewModelSelectSale;
  FViewModel.Observable.Subscribe(FObserver);

  DatePicker.Date := Date;

  ViewModel.DatePickerChange(Date);

  UpdateGUI;
end;

procedure TViewSelectSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FViewModel.Observable.UnSubscribe(FObserver);

  Action := caFree;
end;

procedure TViewSelectSale.ButtonExitClick(Sender: TObject);
begin
  ViewModel.ButtonExitClick;
end;

procedure TViewSelectSale.ButtonReversalClick(Sender: TObject);
begin
  ViewModel.ButtonReversalClick;
end;

procedure TViewSelectSale.ButtonAssignNewClientClick(Sender: TObject);
begin
  ViewModel.ButtonAssignNewClientClick;
end;

procedure TViewSelectSale.DatePickerChange(Sender: TObject);
begin
  ViewModel.DatePickerChange(DatePicker.Date);
end;

procedure TViewSelectSale.GridSaleDetailsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with (Sender as TDBGrid) do begin
    if (DataSource.DataSet.FieldByName('IsCancelled').AsString = 'да') and (Column.FieldName = 'ItemName') then begin
      Canvas.Font.Style := [fsStrikeOut];
    end;
    if (DataSource.DataSet.FieldByName('IsCancelled').AsString = 'да') and (Column.FieldName = 'Total') then begin
      Canvas.Font.Style := [fsStrikeOut];
    end;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewSelectSale.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewSelectSale.UpdateGUI;
var
  LViewSelectSaleGUIRecord: TViewSelectSaleGUIRecord;
  LSpace: Integer;
begin
  LViewSelectSaleGUIRecord := ViewModel.GetGUIRecord;

  Left := 8;
  Width := Screen.Width - 16;
  GridSales.Left := 8;
  GridSales.Width := (Width - 32) * 30 div 100;
  GridSaleDetails.Left := 8 + GridSales.Width + 8;
  GridSaleDetails.Width := (Width - 32) * 70 div 100;

  LSpace := 24;
  GridSales.Columns[0].Width := (GridSales.Width - LSpace) * 33 div 100;
  GridSales.Columns[1].Width := (GridSales.Width - LSpace) * 33 div 100;
  GridSales.Columns[2].Width := (GridSales.Width - LSpace) * 33 div 100;
//  GridSales.Columns[3].Width := (GridSales.Width - LSpace) * 10 div 100;
//  GridSales.Columns[4].Width := (GridSales.Width - LSpace) * 10 div 100;

  LSpace := 24;
  GridSaleDetails.Columns[0].Width := (GridSaleDetails.Width - LSpace) * 60 div 100;
  GridSaleDetails.Columns[1].Width := (GridSaleDetails.Width - LSpace) * 10 div 100;
  GridSaleDetails.Columns[2].Width := (GridSaleDetails.Width - LSpace) * 10 div 100;
  GridSaleDetails.Columns[3].Width := (GridSaleDetails.Width - LSpace) * 10 div 100;
  GridSaleDetails.Columns[4].Width := (GridSaleDetails.Width - LSpace) * 10 div 100;


  ActiveControl := GridSales;

  Self.Update;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TViewSelectSale.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewSelectSale.GetObservable: IObservable;
begin
  Result := FObservable;
end;

function TViewSelectSale.GetViewModel: IViewModelSelectSale;
begin
  Result := FViewModel;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

procedure ShowViewSelectSale;
var
  LViewSelectSale: TViewSelectSale;
begin
  LViewSelectSale := TViewSelectSale.Create(nil);
  try
    LViewSelectSale.ShowModal;
  finally
    LViewSelectSale.Free;
  end;
end;

end.
