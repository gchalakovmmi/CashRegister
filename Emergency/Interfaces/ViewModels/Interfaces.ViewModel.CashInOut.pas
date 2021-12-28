unit Interfaces.ViewModel.CashInOut;

interface

uses
  Interfaces.Model.Pattern.Observer,
  Interfaces.GUIRecords,
  Interfaces.Model.CashInOut;

type
  IViewModelCashInOut = interface
  ['{29647EB4-611B-4EAE-9AA7-B613FFEF2216}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetModel: IModelCashInOut;
    procedure SetModel(const Value: IModelCashInOut);
    property Model: IModelCashInOut read GetModel write SetModel;

    function GetGUIRecord: TViewCashInOutGUIRecord;

    procedure CashCheck;
    procedure CashIn;
    procedure CashOut;
  end;

implementation

end.
