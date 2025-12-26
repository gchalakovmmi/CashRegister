unit Interfaces.ViewModel.Nomenclature.Measures;

interface

uses
  Interfaces.GUIRecords,
  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclatureMeasures = interface
  ['{FC1E8DAF-0720-4B86-AAA4-1348EA2FF834}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord(const AWidth: Integer): TViewNomenclatureMeasuresGUIRecord;

    procedure Attach;
    procedure Modify;
    procedure Detach;

    procedure CloseForm;
  end;

implementation

end.
