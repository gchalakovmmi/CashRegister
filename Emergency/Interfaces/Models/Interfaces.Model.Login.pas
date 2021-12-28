unit Interfaces.Model.Login;

interface

uses
  System.Classes;

type
  IModelLogin = interface
  ['{33D32696-917C-4F89-9C93-DD73BE8D2824}']
    function GetIsLoggedIn: Boolean;
    property IsLoggedIn: Boolean read GetIsLoggedIn;

    function GetUsers: TStrings;
    procedure Logout;
    procedure TryLogin(const AUserName, APassword: String);
  end;

implementation

end.
