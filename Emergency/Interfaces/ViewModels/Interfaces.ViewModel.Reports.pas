unit Interfaces.ViewModel.Reports;

interface

uses
  Interfaces.Model.Pattern.Observer,
  Interfaces.GUIRecords,
  Interfaces.Model.Reports;

type
  IViewModelReports = interface
  ['{E0A493D4-D4E7-4D71-9BF2-D79B82CFD03F}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetModel: IModelReports;
    procedure SetModel(const Value: IModelReports);
    property Model: IModelReports read GetModel write SetModel;

    function GetGUIRecord: TViewReportsGUIRecord;

    procedure PReport(const APeriodStart, APeriodFinish: TDate; const AShort: Boolean);
  end;

implementation

end.
