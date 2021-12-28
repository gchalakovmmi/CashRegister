unit Interfaces.ViewModel.Main;

interface

uses
  Interfaces.GUIRecords,

  Interfaces.ViewModel.Login,

  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Main;

type
  TOnLogin = reference to procedure (ASender: TObject; AViewModelLogin: IViewModelLogin);

  IViewModelMain = interface
  ['{8BE85F8A-3C7C-4D5A-9830-F352215D3549}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetModel: IModelMain;
    property Model: IModelMain read GetModel;

    function GetGUIRecord: TViewMainGUIRecord;

    procedure Sale;
    procedure Login;
    procedure CashIn;
    procedure CashOut;
    procedure Reversal;
    procedure Admin;

    procedure SelectPrinter;
    procedure XReport;
    procedure PReport;
    procedure ZReport;
    procedure CheckItem;
    procedure Audit;
  end;

implementation

end.
