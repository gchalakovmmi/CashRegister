unit Interfaces.Model.Main;

interface

type
  IModelMain = interface
  ['{5AB0C849-73FA-4DDA-9E89-14C9D1E44BB4}']
    function GetAppVersion: string;
    function GetStoreName: String;
    function GetWorkstationName: String;
    function GetUserName: String;
  end;

implementation

end.
