unit Interfaces.ViewModel.Nomenclature.Clients;

interface

uses
  Interfaces.GUIRecords,
  Interfaces.Model.Pattern.Observer;

type
  IViewModelNomenclatureClients = interface
  ['{12153509-94D1-4125-B6E5-381AA493725A}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetGUIRecord(const AWidth: Integer): TViewNomenclatureClientsGUIRecord;

    procedure Attach;
    procedure Modify;
    procedure Detach;

    procedure CloseForm;
  end;

implementation

end.
