unit View.SelectItem;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan,
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Data.DB,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Notification,
  Interfaces.ViewModel.SelectItem;

type
  TViewSelectItem = class(TForm, IObserver, IObservable)
    Grid: TDBGrid;
    Edit: TDBEdit;

  {$REGION 'Published Methods'}
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditEnter(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);

    procedure UpdateGUI;
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FViewModel: IViewModelSelectItem;
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
    function GetViewModel: IViewModelSelectItem;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Observer: IObserver read FObserver implements IObserver;
    property Observable: IObservable read FObservable implements IObservable;
    property ViewModel: IViewModelSelectItem read GetViewModel;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

  procedure SelectItem(const AKey: Char);

implementation

uses
  View.Message,
  Helper.MyFuncs,
  Model.Pattern.Observer.Observer,
  Model.Pattern.Observer.Observable,
  DataModule.Items,
  Interfaces.Enums,
  Interfaces.GUIRecords,
  ViewModel.SelectItem;

{$R *.dfm}

{ TViewSelectItem }

{$REGION 'Published Methods'}

procedure TViewSelectItem.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObServable := CreateObservableClass;

  FViewModel := CreateViewModelSelectItem;
  FViewModel.Observable.Subscribe(FObserver);

  UpdateGUI;
end;

procedure TViewSelectItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FViewModel.Observable.UnSubscribe(FObserver);

  Action := caFree;
end;

procedure TViewSelectItem.EditEnter(Sender: TObject);
begin
  ActiveControl := Grid;
end;

procedure TViewSelectItem.GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ViewModel.GridKeyDown(Key, Shift);
end;

procedure TViewSelectItem.GridKeyPress(Sender: TObject; var Key: Char);
begin
  ViewModel.GridKeyPressed(Key);
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewSelectItem.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewSelectItem.UpdateGUI;
var
  LViewSelectItemGUIRecord: TViewSelectItemGUIRecord;
  LSpace: Integer;
begin
  LViewSelectItemGUIRecord := ViewModel.GetGUIRecord(Screen.Width, Screen.Height);

  Top := LViewSelectItemGUIRecord.Top;
  Left := LViewSelectItemGUIRecord.Left;
  Width := LViewSelectItemGUIRecord.Width;
  Edit.Text := LViewSelectItemGUIRecord.EditText;

  LSpace := 30;
  Grid.Columns[0].Width := (Grid.Width - LSpace) * 10 div 100;
  Grid.Columns[1].Width := (Grid.Width - LSpace) * 45 div 100;
  Grid.Columns[2].Width := (Grid.Width - LSpace) * 15 div 100;
  Grid.Columns[3].Width := (Grid.Width - LSpace) * 10 div 100;
  Grid.Columns[4].Width := (Grid.Width - LSpace) * 10 div 100;
  Grid.Columns[5].Width := (Grid.Width - LSpace) * 10 div 100;

  Grid.Columns[0].Width :=
    Grid.Columns[0].Width +
    (Grid.Width - LSpace) -
    Grid.Columns[0].Width -
    Grid.Columns[1].Width -
    Grid.Columns[2].Width -
    Grid.Columns[3].Width -
    Grid.Columns[4].Width -
    Grid.Columns[5].Width;


  ActiveControl := Grid;

  Self.Update;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TViewSelectItem.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewSelectItem.GetObservable: IObservable;
begin
  Result := FObservable;
end;

function TViewSelectItem.GetViewModel: IViewModelSelectItem;
begin
  Result := FViewModel;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

procedure SelectItem(const AKey: Char);
var
  LViewSelectItem: TViewSelectItem;
begin
  DataModuleItems.KeyWord := AKey;
  LViewSelectItem := TViewSelectItem.Create(nil);
  try
    LViewSelectItem.ShowModal;
  finally
    LViewSelectItem.Free;
  end;
end;

end.
