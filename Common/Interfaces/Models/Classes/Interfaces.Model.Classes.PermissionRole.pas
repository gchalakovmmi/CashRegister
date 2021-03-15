unit Interfaces.Model.Classes.PermissionRole;

interface

uses
  Interfaces.Model.Classes;

type
  IModelClassPermissionRole = interface(IModelClassBaseObject)
  ['{0077BE73-B298-46B9-B567-E8B6EEE3ED59}']
    function GetPermissionGID: String;
    procedure SetPermissionGID(const AValue: String);
    ///<summary>код в системата на разрешението<summary>
    property PermissionGID: String read GetPermissionGID write SetPermissionGID;

    function GetRoleGID: String;
    procedure SetRoleGID(const AValue: String);
    ///<summary>код в системата на ролята<summary>
    property RoleGID: String read GetRoleGID write SetRoleGID;
  end;

implementation

end.
