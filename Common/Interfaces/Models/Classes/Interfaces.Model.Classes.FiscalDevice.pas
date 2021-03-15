unit Interfaces.Model.Classes.FiscalDevice;

interface

uses
  Interfaces.Model.Classes;

type
  IModelClassFiscalDevice = interface(IModelClassBaseObject)
  ['{D7E5B985-FEDD-4FAD-96E8-1750FC77E62E}']
    function GetBrand: String;
    procedure SetBrand(const AValue: String);
    ///<summary>марка на фискалното устройство<summary>
    property Brand: String read GetBrand write SetBrand;

    function GetModel: String;
    procedure SetModel(const AValue: String);
    ///<summary>модел на фискалното устройство<summary>
    property Model: String read GetModel write SetModel;

    function GetSerialNumber: String;
    procedure SetSerialNumber(const AValue: String);
    ///<summary>сериен номер на фискалното устройство<summary>
    property SerialNumber: String read GetSerialNumber write SetSerialNumber;
  end;

implementation

end.
