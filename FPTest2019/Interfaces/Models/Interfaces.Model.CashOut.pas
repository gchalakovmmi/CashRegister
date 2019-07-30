unit Interfaces.Model.CashOut;

interface

uses
  Interfaces.Model.Pattern.Observer;

type
  IModelCashOut = interface
  ['{1D321F1A-EBA7-4D71-AD2E-7ACC721C4B8F}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetCash: Double;
		property Cash: Double read GetCash;

    procedure CashCheck;
    procedure CashOut(const AAmount: WideString);
  end;

implementation

end.
