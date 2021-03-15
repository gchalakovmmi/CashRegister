unit Interfaces.ViewModel.Login;

interface

uses
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Login;

type
  IViewModelLogin = interface
  ['{123AE54A-F427-45E1-BB7A-C8CDEC614C8D}']
    function GetObservable: IObservable;
    property Observable: IObservable read GetObservable;

    function GetModel: IModelLogin;
    procedure SetModel(const Value: IModelLogin);
    property Model: IModelLogin read GetModel write SetModel;

    procedure Logout;
    procedure TryLogin(const APassword: String);
  end;

implementation

end.
