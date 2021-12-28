unit View.CheckItem;

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
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Notification,
  Interfaces.ViewModel.CheckItem, Vcl.ExtCtrls;

type
  TViewCheckItem = class(TForm, IObserver, IObservable)
    LabelCode: TLabel;
    LabelItem: TLabel;
    LabelMeasure: TLabel;
    LabelPrice: TLabel;
    LabelInfo: TLabel;
    Panel1: TPanel;
  {$REGION 'Published Methods'}
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
    procedure ProcessNotification(const AModelNotification: IModelNotification);

    procedure UpdateGUI;
  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FViewModel: IViewModelCheckItem;
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
    function GetViewModel: IViewModelCheckItem;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property Observer: IObserver read FObserver implements IObserver;
    property Observable: IObservable read FObservable implements IObservable;
    property ViewModel: IViewModelCheckItem read GetViewModel;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

  procedure ShowCheckItem;

implementation

uses
  View.Message,
  Helper.MyFuncs,
  Model.Pattern.Observer.Observer,
  Model.Pattern.Observer.Observable,
  DataModule.Items,
  Interfaces.Enums,
  Interfaces.GUIRecords,
  ViewModel.CheckItem;

{$R *.dfm}

{ TViewCheckItem }

{$REGION 'Published Methods'}

procedure TViewCheckItem.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FObServable := CreateObservableClass;

  FViewModel := CreateViewModelCheckItem;
  FViewModel.Observable.Subscribe(FObserver);

  Top := 0;
  Left := 0;
  Width := Screen.Width;
  Height := Screen.Height;

  UpdateGUI;
end;

procedure TViewCheckItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FViewModel.Observable.UnSubscribe(FObserver);

  Action := caFree;
end;

procedure TViewCheckItem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  ViewModel.KeyPressed(Key);
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewCheckItem.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewCheckItem.UpdateGUI;
var
  LViewCheckItemGUIRecord: TViewCheckItemGUIRecord;
begin
  LViewCheckItemGUIRecord := ViewModel.GetGUIRecord;

  Caption := LViewCheckItemGUIRecord.Caption;
  LabelCode.Caption := LViewCheckItemGUIRecord.LabelCodeCaption;
  LabelItem.Caption := LViewCheckItemGUIRecord.LabelItemCaption;
  LabelMeasure.Caption := LViewCheckItemGUIRecord.LabelMeasureCaption;
  LabelPrice.Caption := LViewCheckItemGUIRecord.LabelPriceCaption;

  Self.Update;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TViewCheckItem.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewCheckItem.GetObservable: IObservable;
begin
  Result := FObservable;
end;

function TViewCheckItem.GetViewModel: IViewModelCheckItem;
begin
  Result := FViewModel;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

procedure ShowCheckItem;
var
  LViewCheckItem: TViewCheckItem;
begin
  LViewCheckItem := TViewCheckItem.Create(nil);
  try
    LViewCheckItem.ShowModal;
  finally
    LViewCheckItem.Free;
  end;
end;

end.
