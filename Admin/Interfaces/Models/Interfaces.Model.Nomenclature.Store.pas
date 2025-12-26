unit Interfaces.Model.Nomenclature.Store;

interface

uses
  Interfaces.Enums;

type
  IModelNomenclatureStore = interface
  ['{778364F6-7BDB-4C7A-B322-0C52650C4AE6}']
    procedure SetAction(const AAction: TAMDAction);

    procedure Confirm;
  end;

implementation

end.
