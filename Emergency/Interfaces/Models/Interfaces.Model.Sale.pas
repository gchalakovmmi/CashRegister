unit Interfaces.Model.Sale;

interface

uses
  Interfaces.Model.Pattern.Observer,
  Interfaces.Model.Classes.Sale;


type
  IModelSale = interface
  ['{00ACE134-ADFE-441D-8DC9-F2F69EDC79A4}']
    // Properties
    function GetSale: IModelClassSale;
    property Sale: IModelClassSale read GetSale;

    // Setup/Teardown
    procedure SetupSale;
    procedure UpdateSaleClient;
    procedure TeardownSale;

    // Sale Actions
    procedure OpenSale;
    procedure RegistrationOfSale;
    procedure RegistrationOfCancellation;
    procedure Totals;
    procedure CompleteTotals;
    procedure CloseSale;
    procedure DiscardSale;
    procedure DuplicateReceipt;

    // Sale's Payments Updates
//    procedure UpdateSaleDue(const ADueDelta: String);
    procedure UpdateSaleCashPayment(const ACashPayment: String);
    procedure UpdateSaleVoucherPayment(const AVoucherPayment: String);
    procedure UpdateSaleCardPayment(const ACardPayment: String);
  end;

implementation

end.
