unit Interfaces.ViewModel.CashOut;

interface

uses
  Interfaces.Model.Pattern.Observer,
  Interfaces.GUIRecords,
  Interfaces.Model.CashOut;

type
  IViewModelCashOut = interface
  ['{24944B70-33B0-4F7C-86C9-5DD031C69193}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetModel: IModelCashOut;
    procedure SetModel(const Value: IModelCashOut);
    property Model: IModelCashOut read GetModel write SetModel;

    function GetGUIRecord: TViewCashOutGUIRecord;

    procedure CashCheck;
    procedure CashOut(const AAmount: WideString);
  end;

implementation

end.
