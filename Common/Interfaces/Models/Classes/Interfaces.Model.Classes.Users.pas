unit Interfaces.Model.Classes.Users;

interface

uses
  Interfaces.Model.Classes,
  Interfaces.Model.Classes.User;

type
  IModelClassUsers = interface(IModelClassBaseCollection<IModelClassUser>)
  ['{3E41DBC4-7796-4A32-B6E9-9E1F64E06C48}']
    function GetByRoleAndPassword(const ARole, APassword: String): IModelClassUser;
  end;

implementation

end.