unit Interfaces.Model.Classes.Sale.Payments;

interface

uses
  System.Generics.Collections,
  System.JSON,
  Interfaces.Model.Classes.Sale.Payment;

type
  IModelClassSalePayments = interface
  ['{8FD86BD9-59A4-4CDD-8856-8631F38EB517}']
    function GetList: TList<IModelClassSalePayment>;

    property List: TList<IModelClassSalePayment> read GetList;

    procedure UpdateFromDataSet(const AParentGID: Integer);
    procedure UpdateInDataSet;
    function ToJSON: TJSONArray;
    function Include(const AType, AAmount: String): Boolean;
  end;

implementation

end.
