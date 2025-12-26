unit Interfaces.Model.Classes.Store;

interface

uses
  Interfaces.Model.Classes;

type
  IModelClassStore = interface(IModelClassBaseObject)
  ['{58B6AEFF-E9C7-4A07-93CB-AD9963EC9237}']
    function GetAddress: String;
    procedure SetAddress(const AValue: String);
    ///<summary>местонахождение на търговския обект<summary>
    property Address: String read GetAddress write SetAddress;
  end;

implementation

end.
