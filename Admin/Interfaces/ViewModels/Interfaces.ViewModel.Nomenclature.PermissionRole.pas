unit Interfaces.ViewModel.Nomenclature.PermissionRole;

interface

uses
  Interfaces.Enums,
  Interfaces.GUIRecords,

  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclaturePermissionRole = interface
  ['{EAA49715-FC0F-4744-99A5-4096D7B80E3D}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord: TViewNomenclaturePermissionRoleGUIRecord;

    function Can(const AAction: TAMDAction): Boolean;

    procedure SetAction(const AAction: TAMDAction);

    procedure Confirm;
    procedure Cancel;
  end;

implementation

end.
