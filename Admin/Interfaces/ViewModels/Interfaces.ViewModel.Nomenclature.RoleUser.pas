unit Interfaces.ViewModel.Nomenclature.RoleUser;

interface

uses
  Interfaces.Enums,
  Interfaces.GUIRecords,

  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclatureRoleUser = interface
  ['{955FB468-2919-472E-BC54-35D6608B541C}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord: TViewNomenclatureRoleUserGUIRecord;

    function Can(const AAction: TAMDAction): Boolean;

    procedure SetAction(const AAction: TAMDAction);

    procedure Confirm;
    procedure Cancel;
  end;

implementation

end.
