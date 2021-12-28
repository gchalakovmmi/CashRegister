unit Interfaces.Model.CashInOut;

interface

uses
  Interfaces.Model.Pattern.Observer;

type
  IModelCashInOut = interface
  ['{FD0BF1AE-0814-419F-84AC-72C3709D8874}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetCash: Double;
		property Cash: Double read GetCash;

    procedure CashCheck;
    procedure CashIn;
    procedure CashOut;
  end;

implementation

end.
