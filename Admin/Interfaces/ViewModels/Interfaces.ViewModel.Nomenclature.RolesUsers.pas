unit Interfaces.ViewModel.Nomenclature.RolesUsers;

interface

uses
  Interfaces.GUIRecords,
  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclatureRolesUsers = interface
  ['{048F07FF-EFDB-4863-9341-3118A156E0A0}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord(const AWidth: Integer): TViewNomenclatureRolesUsersGUIRecord;

    procedure Attach;
    procedure Modify;
    procedure Detach;

    procedure CloseForm;
  end;

implementation

end.
