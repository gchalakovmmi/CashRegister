unit Interfaces.Model.Classes.Workstation;

interface

uses
  Interfaces.Model.Classes;

type
  IModelClassWorkstation = interface(IModelClassBaseObject)
  ['{1D68CAC9-89D4-49AC-8A1A-D785AA44418C}']
    function GetStoreGID: String;
    procedure SetStoreGID(const AValue: String);
    ///<summary>код в системата на обекта, в който е работното място<summary>
    property StoreGID: String read GetStoreGID write SetStoreGID;

    function GetFiscalDeviceGID: String;
    procedure SetFiscalDeviceGID(const AValue: String);
    ///<summary>код в системата на свързаното към работното място фискално устройство<summary>
    property FiscalDeviceGID: String read GetFiscalDeviceGID write SetFiscalDeviceGID;
  end;

implementation

end.
