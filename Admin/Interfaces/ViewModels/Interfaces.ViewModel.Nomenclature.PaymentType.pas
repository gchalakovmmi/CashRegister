unit Interfaces.ViewModel.Nomenclature.PaymentType;

interface

uses
  Interfaces.Enums,
  Interfaces.GUIRecords,

  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclaturePaymentType = interface
  ['{0776F27E-B684-470B-8AC6-5125D22086C5}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord: TViewNomenclaturePaymentTypeGUIRecord;

    function Can(const AAction: TAMDAction): Boolean;

    procedure SetAction(const AAction: TAMDAction);

    procedure Confirm;
    procedure Cancel;
  end;

implementation

end.
