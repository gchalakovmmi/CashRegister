unit Interfaces.ViewModel.Nomenclature.Workstations;

interface

uses
  Interfaces.GUIRecords,
  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclatureWorkstations = interface
  ['{0584B706-CF7E-4257-A203-F64E4FC33283}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord(const AWidth: Integer): TViewNomenclatureWorkstationsGUIRecord;

    procedure Attach;
    procedure Modify;
    procedure Detach;

    procedure CloseForm;
  end;

implementation

end.
