unit Interfaces.Model.Classes.Sale.Reversal;

interface

uses
  System.JSON,
  Interfaces.Model.Classes.Sale.Cancellation;

type
  IModelClassSaleReversal = interface
  ['{88125E39-997A-44BF-B9E8-A8885798D29A}']
    function GetGID: String;
    procedure SetGID(const Value: String);
    ///<sumarry>системен номер на продажбата, присвоен от софтуера</summary>
    property GID: String read GetGID write SetGID;

    function GetParentGID: String;
    procedure SetParentGID(const Value: String);
    ///<sumarry>системен номер на продажбата, присвоен от софтуера</summary>
    property ParentGID: StrINg read GetParentGID write SetParentGID;

    function GetSaleUniqueID: String;
    procedure SetSaleUniqueID(const AValue: String);
    ///<sumarry>уникален номер на продажба - съгласно т. 9</summary>
    property SaleUniqueID: String read GetSaleUniqueID write SetSaleUniqueID;

    function GetFiscalDeviceID: String;
    procedure SetFiscalDeviceID(const AValue: String);
    ///<sumarry>номер на фискалното устройство, на което е издаден Сторно-ФБ</summary>
    property FiscalDeviceID: String read GetFiscalDeviceID write SetFiscalDeviceID;

    function GetUserGID: String;
    procedure SetUserGID(const AValue: String);
    ///<sumarry>номер на оператор, извършил сторнирането</summary>
    property UserGID: String read GetUserGID write SetUserGID;

    function GetCompletedDate: String;
    procedure SetCompletedDate(const AValue: String);
    ///<sumarry>дата на приключване на продажбата</summary>
    property CompletedDate: String read GetCompletedDate write SetCompletedDate;

    function GetCompletedTime: String;
    procedure SetCompletedTime(const AValue: String);
    ///<sumarry>време на приключване на продажбата (час, минута, секунда)</summary>
    property CompletedTime: String read GetCompletedTime write SetCompletedTime;

    function GetReversalDate: String;
    procedure SetReversalDate(const AValue: String);
    ///<sumarry>дата на сторниране на продажбата</summary>
    property ReversalDate: String read GetReversalDate write SetReversalDate;

    function GetReversalTime: String;
    procedure SetReversalTime(const AValue: String);
    ///<sumarry>време на сторниране на продажбата (час, минута, секунда)</summary>
    property ReversalTime: String read GetReversalTime write SetReversalTime;

    function GetItemGID: String;
    procedure SetItemGID(const AValue: String);
    ///<sumarry>код на стоката/услугата</summary>
    property ItemGID: String read GetItemGID write SetItemGID;

    function GetBarCode: String;
    procedure SetBarCode(const AValue: String);
    ///<sumarry>баркод на стоката/услугата</summary>
    property BarCode: String read GetBarCode write SetBarCode;

    function GetBaseItemName: String;
    procedure SetBaseItemName(const AValue: String);
    ///<sumarry>основно наименование на стоката/услугата</summary>
    property BaseItemName: String read GetBaseItemName write SetBaseItemName;

    function GetPackCoeff: String;
    procedure SetPackCoeff(const AValue: String);
    ///<sumarry>коефициент количество за групажни стоки</summary>
    property PackCoeff: String read GetPackCoeff write SetPackCoeff;

    function GetItemName: String;
    procedure SetItemName(const AValue: String);
    ///<sumarry>наименование на стоката/услугата</summary>
    property ItemName: String read GetItemName write SetItemName;

    function GetMeasure: String;
    procedure SetMeasure(const AValue: String);
    ///<sumarry>мярка</summary>
    property Measure: String read GetMeasure write SetMeasure;

    function GetQuantity: String;
    procedure SetQuantity(const AValue: String);
    ///<sumarry>количество</summary>
    property Quantity: String read GetQuantity write SetQuantity;

    function GetVendorPrice: String;
    procedure SetVendorPrice(const AValue: String);
    ///<sumarry>доставна цена - с ДДС в лв.</summary>
    property VendorPrice: String read GetVendorPrice write SetVendorPrice;

    function GetClientSurcharge: String;
    procedure SetClientSurcharge(const AValue: String);
    ///<sumarry>процент надценка над доставната цена (за VIP клиенти)</summary>
    property ClientSurcharge: String read GetClientSurcharge write SetClientSurcharge;

    function GetClientPrice: String;
    procedure SetClientPrice(const AValue: String);
    ///<sumarry>клиентска цена - с ДДС в лв.</summary>
    property ClientPrice: String read GetClientPrice write SetClientPrice;

    function GetPackDiscount: String;
    procedure SetPackDiscount(const AValue: String);
    ///<sumarry>процент отстъпка за групажни стоки</summary>
    property PackDiscount: String read GetPackDiscount write SetPackDiscount;

    function GetClientPriceBase: String;
    procedure SetClientPriceBase(const AValue: String);
    ///<sumarry>единична цена (без отстъпка) - без ДДС, в лв.</summary>
    property ClientPriceBase: String read GetClientPriceBase write SetClientPriceBase;

    function GetPrice: String;
    procedure SetPrice(const AValue: String);
    ///<sumarry>продажна цена (с отстъпка) - с ДДС, в лв.</summary>
    property Price: String read GetPrice write SetPrice;

    function GetDiscountValue: String;
    procedure SetDiscountValue(const AValue: String);
    ///<sumarry>отстъпка (сума) - в лв.</summary>
    property DiscountValue: String read GetDiscountValue write SetDiscountValue;

    function GetDiscountType: String;
    procedure SetDiscountType(const AValue: String);
    ///<sumarry>вид изменение на основната цена (0 - няма, 4 - отстъпка сума)</summary>
    property DiscountType: String read GetDiscountType write SetDiscountType;

    function GetTotalBase: String;
    procedure SetTotalBase(const AValue: String);
    ///<sumarry>обща сума - без ДДС, в лв.</summary>
    property TotalBase: String read GetTotalBase write SetTotalBase;

    function GetVATRate: String;
    procedure SetVATRate(const AValue: String);
    ///<sumarry>ДДС ставка</summary>
    property VATRate: String read GetVATRate write SetVATRate;

    function GetTotalVAT: String;
    procedure SetTotalVAT(const AValue: String);
    ///<sumarry>ДДС - сума - в лв.</summary>
    property TotalVAT: String read GetTotalVAT write SetTotalVAT;

    function GetTotal: String;
    procedure SetTotal(const AValue: String);
    ///<sumarry>обща сума - в лв.</summary>
    property Total: String read GetTotal write SetTotal;

    procedure UpdateFromDataSet;
    procedure UpdateInDataSet;
    function ToJSON: TJSONObject;
  end;

implementation

end.
