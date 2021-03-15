unit Interfaces.ViewModel.Main;

interface

uses
  Interfaces.GUIRecords,

  Interfaces.ViewModel.Login,

  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Main;

type
  TOnLogin = reference to procedure (ASender: TObject; AViewModelLogin: IViewModelLogin);

  IViewModelMain = interface
  ['{F627DE19-8AD0-41D2-A74E-25361D780E90}']
    function GetObserver: IObserver;
    property Observer: IObserver read GetObserver;

    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetModel: IModelMain;
    property Model: IModelMain read GetModel;

    function GetGUIRecord: TViewMainGUIRecord;

    procedure Login;
  end;

implementation

end.
