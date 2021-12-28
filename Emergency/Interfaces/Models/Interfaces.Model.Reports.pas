unit Interfaces.Model.Reports;

interface

uses
  Interfaces.Model.Pattern.Observer;

type
  IModelReports = interface
  ['{FD0BF1AE-0814-419F-84AC-72C3709D8874}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    procedure XReport;
    procedure ZReport;
    procedure PReport(const APeriodStart, APeriodFinish: TDate; const AShort: Boolean);
  end;

implementation

end.
