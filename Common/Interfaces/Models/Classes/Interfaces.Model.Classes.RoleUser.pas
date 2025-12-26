unit Interfaces.Model.Classes.RoleUser;

interface

uses
  Interfaces.Model.Classes;

type
  IModelClassRoleUser = interface(IModelClassBaseObject)
  ['{050A8956-BC35-472B-BF41-1949D148CAAE}']
    function GetRoleGID: String;
    procedure SetRoleGID(const AValue: String);
    ///<summary>код в системата на ролята<summary>
    property RoleGID: String read GetRoleGID write SetRoleGID;

    function GetUserGID: String;
    procedure SetUserGID(const AValue: String);
    ///<summary>код в системата на потребителя<summary>
    property UserGID: String read GetUserGID write SetUserGID;
  end;

implementation

end.
