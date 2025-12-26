unit Interfaces.ViewModel.Nomenclature.Item;

interface

uses
  Interfaces.Enums,
  Interfaces.GUIRecords,

  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclatureItem = interface
  ['{7A3F4657-8A11-4EB3-9303-CA4805908839}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord: TViewNomenclatureItemGUIRecord;

    function Can(const AAction: TAMDAction): Boolean;

    procedure SetAction(const AAction: TAMDAction);

    procedure Confirm;
    procedure Cancel;
  end;

implementation

end.
