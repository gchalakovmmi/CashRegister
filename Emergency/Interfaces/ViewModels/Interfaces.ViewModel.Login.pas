unit Interfaces.ViewModel.Login;

interface

uses
  System.Classes,
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Login;

type
  IViewModelLogin = interface
  ['{2AD5142E-7281-466F-8F65-F03CDFBC8185}']
    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetModel: IModelLogin;
    procedure SetModel(const Value: IModelLogin);
    property Model: IModelLogin read GetModel write SetModel;

    function GetUsers: TStrings;
    procedure Logout;
    procedure TryLogin(const AUserName, APassword: String);
  end;

implementation

end.
