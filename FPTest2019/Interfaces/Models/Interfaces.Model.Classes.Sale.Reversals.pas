unit Interfaces.Model.Classes.Sale.Reversals;

interface

uses
  System.Generics.Collections,
  System.JSON,
  Interfaces.Model.Classes.Sale.Reversal;

type
  IModelClassSaleReversals = interface
  ['{016D1768-7463-4810-9C32-2A85F96B2557}']
    function GetList: TList<IModelClassSaleReversal>;

    property List: TList<IModelClassSaleReversal> read GetList;

    procedure UpdateFromDataSet(const AParentGID: Integer);
    procedure UpdateInDataSet;
    function ToJSON: TJSONArray;
  end;

implementation

end.
