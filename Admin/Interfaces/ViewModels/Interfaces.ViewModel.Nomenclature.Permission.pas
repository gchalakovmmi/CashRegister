unit Interfaces.ViewModel.Nomenclature.Permission;

interface

uses
  Interfaces.Enums,
  Interfaces.GUIRecords,

  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclaturePermission = interface
  ['{06082DB2-CF7E-4A21-9486-D0B1070C58BE}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord: TViewNomenclaturePermissionGUIRecord;

    function Can(const AAction: TAMDAction): Boolean;

    procedure SetAction(const AAction: TAMDAction);

    procedure Confirm;
    procedure Cancel;
  end;

implementation

end.
