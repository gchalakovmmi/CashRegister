unit Interfaces.ViewModel.Reversal;

interface

uses
  Interfaces.GUIRecords,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Reversal;

type
  IViewModelReversal = interface
  ['{95BC9864-6D2C-450D-BD6E-E68FEA9ABEAE}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetModel: IModelReversal;
    procedure SetModel(const Value: IModelReversal);
    property Model: IModelReversal read GetModel write SetModel;

    procedure SetupReversal;
    procedure TeardownReversal;

    function GetGUISetupRecord(const AClientWidth, AClientHeight: Integer): TViewReversalGUISetupRecord;
    function GetGUIActionsRecord: TViewReversalGUIActionsRecord;
    function GetGUIRecord: TViewReversalGUIRecord;

    procedure ActionExitExecute;
    procedure ActionReversalExecute;
    procedure ActionReversalAllExecute;

    procedure EditShowEnter;
  end;

implementation

end.
