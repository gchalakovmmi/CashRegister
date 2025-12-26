unit Interfaces.Model.Main;

interface

type
  IModelMain = interface
  ['{149744BC-D06C-4D64-BEF6-0A8BFE836BF4}']
    function GetAppVersion: string;
    function GetStoreName: String;
    function GetWorkstationName: String;
    function GetUserName: String;
  end;

implementation

end.
