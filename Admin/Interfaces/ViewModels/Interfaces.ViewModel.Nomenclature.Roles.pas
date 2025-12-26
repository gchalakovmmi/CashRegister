unit Interfaces.ViewModel.Nomenclature.Roles;

interface

uses
  Interfaces.GUIRecords,
  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclatureRoles = interface
  ['{F7800A81-A743-4836-AC52-58A3BEC8CB44}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord(const AWidth: Integer): TViewNomenclatureRolesGUIRecord;

    procedure Attach;
    procedure Modify;
    procedure Detach;

    procedure CloseForm;
  end;

implementation

end.
