unit View.Reversal;

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
  Interfaces.Model.Notification,
  Interfaces.Model.Pattern.Observer,
  Interfaces.ViewModel.Reversal;

type
  TViewReversal = class(TForm, IObserver, IObservable)

  {$REGION 'Published Methods'}
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private
//    procedure ProcessNotification(const AModelNotification: IModelNotification);

    procedure ResetGUI;
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
    function GetViewModel: IViewModelReversal;
    function GetObserver: IObserver;
    function GetObservable: IObservable;
  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    property ViewModel: IViewModelReversal read GetViewModel;
    property Observer: IObserver read FObserver implements IObserver;
    property Observable: IObservable read FObservable implements IObservable;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    constructor Create(AOwner: TComponent; AViewModelReversal: IViewModelReversal); reintroduce;
  {$ENDREGION}
  end;

implementation

{$R *.dfm}

uses
  Interfaces.Enums,
  ViewModel.Reversal;

{$REGION 'Published Methods'}

procedure TViewReversal.FormCreate(Sender: TObject);
begin
  ResetGUI;
end;

procedure TViewReversal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

//procedure TViewReversal.ProcessNotification(const AModelNotification: IModelNotification);
//begin
//  if actResetGUI in AModelNotification.Actions then begin
//    ResetGUI;
//  end;
//  if actCloseForm in AModelNotification.Actions then begin
//    Close;
//  end;
//end;

procedure TViewReversal.ResetGUI;
begin
//  ViewModel.Logout;
//  EditPassword.Text := '';
//  ActiveControl := EditPassword;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

function TViewReversal.GetViewModel: IViewModelReversal;
begin
  if not Assigned(FViewModel) then begin
    FViewModel := CreateViewModelReversal;
  end;
  Result := FViewModel;
end;

function TViewReversal.GetObserver: IObserver;
begin
  Result := FObserver;
end;

function TViewReversal.GetObservable: IObservable;
begin
  Result := FObservable;
end;

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TViewReversal.Create(AOwner: TComponent; AViewModelReversal: IViewModelReversal);
begin
  FViewModel := AViewModelReversal;

  inherited Create(AOwner);
end;

{$ENDREGION}

end.
