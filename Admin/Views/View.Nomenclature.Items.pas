unit View.Nomenclature.Items;

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
  Interfaces.ViewModel.Nomenclature.Items;

type
  TViewNomenclatureItems = class(TForm)
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
    FViewModel: IViewModelNomenclatureItems;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
//    property Observer: IObserver read FObserver;
    property ViewModel: IViewModelNomenclatureItems read FViewModel;
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

  procedure ShowViewNomenclatureItems;

implementation

{$R *.dfm}

uses
  Interfaces.Enums,
  Interfaces.GUIRecords,
  Model.Pattern.Observer.Observer,
  ViewModel.Nomenclature.Items,
  DataModule.Items;

{$REGION 'Published Methods'}

procedure TViewNomenclatureItems.FormCreate(Sender: TObject);
begin
  FObserver := CreateObserverClass;
  FObserver.SetUpdateObserverMethod(ProcessNotification);

  FViewModel := CreateViewModelNomenclatureItems;
  FViewModel.Observable.Subscribe(FObserver);

  UpdateGUI;
end;

procedure TViewNomenclatureItems.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TViewNomenclatureItems.FormResize(Sender: TObject);
begin
  UpdateGUI;
end;

procedure TViewNomenclatureItems.SpeedButtonAttachClick(Sender: TObject);
begin
  ViewModel.Attach;
end;

procedure TViewNomenclatureItems.SpeedButtonModifyClick(Sender: TObject);
begin
  ViewModel.Modify;
end;

procedure TViewNomenclatureItems.SpeedButtonDetachClick(Sender: TObject);
begin
  ViewModel.Detach;
end;

procedure TViewNomenclatureItems.SpeedButtonExitClick(Sender: TObject);
begin
  Close;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

procedure TViewNomenclatureItems.ProcessNotification(const AModelNotification: IModelNotification);
begin
  if actUpdateGUI in AModelNotification.Actions then begin
    UpdateGUI;
  end;
  if actCloseForm in AModelNotification.Actions then begin
    Close;
  end;
end;

procedure TViewNomenclatureItems.UpdateGUI;
var
  LGUIRecord: TViewNomenclatureItemsGUIRecord;
begin
  LGUIRecord := ViewModel.GetGUIRecord(ClientWidth);

  DBGrid.Columns[0].Width := LGUIRecord.DBGridColumns0Width;
  DBGrid.Columns[1].Width := LGUIRecord.DBGridColumns1Width;
  DBGrid.Columns[2].Width := LGUIRecord.DBGridColumns2Width;
  DBGrid.Columns[3].Width := LGUIRecord.DBGridColumns3Width;
  DBGrid.Columns[4].Width := LGUIRecord.DBGridColumns4Width;
  DBGrid.Columns[5].Width := LGUIRecord.DBGridColumns5Width;
  DBGrid.Columns[6].Width := LGUIRecord.DBGridColumns6Width;
  DBGrid.Columns[7].Width := LGUIRecord.DBGridColumns7Width;
  DBGrid.Columns[8].Width := LGUIRecord.DBGridColumns8Width;
  DBGrid.Columns[9].Width := LGUIRecord.DBGridColumns9Width;
  DBGrid.Columns[10].Width := LGUIRecord.DBGridColumns10Width;
  DBGrid.Columns[11].Width := LGUIRecord.DBGridColumns11Width;

  ActiveControl := DBGrid;
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

procedure ShowViewNomenclatureItems;
var
  LViewNomenclatureItems: TViewNomenclatureItems;
begin
  LViewNomenclatureItems := TViewNomenclatureItems.Create(Application.MainForm);
  LViewNomenclatureItems.Show;
end;

end.
