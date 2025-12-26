unit Interfaces.Model.Classes.Permission;

interface

uses
  Interfaces.Model.Classes;

type
  IModelClassPermission = interface(IModelClassBaseObject)
  ['{98FE18A6-594E-4250-9726-728BA1E54050}']
    function GetDescription: String;
    procedure SetDescription(const AValue: String);
    ///<summary>описание на разрешението<summary>
    property Description: String read GetDescription write SetDescription;
  end;

implementation

end.
