unit Interfaces.Model.Classes.Sale.Payment;

interface

uses
  System.JSON;

type
  IModelClassSalePayment = interface
  ['{52A3DA06-74A4-49E9-A696-4A651F1E74D0}']
    function GetGID: String;
    procedure SetGID(const AValue: String);
    ///<sumarry>системен номер на плащането, присвоен от софтуера</summary>
    property GID: String read GetGID write SetGID;

    function GetParentGID: String;
    procedure SetParentGID(const AValue: String);
    ///<sumarry>системен номер на продажбата, присвоен от софтуера</summary>
    property ParentGID: StrINg read GetParentGID write SetParentGID;

    function GetSaleUniqueID: String;
    procedure SetSaleUniqueID(const AValue: String);
    ///<sumarry>уникален номер на продажба - съгласно т. 9</summary>
    property SaleUniqueID: String read GetSaleUniqueID write SetSaleUniqueID;

    function GetFiscalDeviceID: String;
    procedure SetFiscalDeviceID(const AValue: String);
    ///<sumarry>номер на фискалното устройство</summary>
    property FiscalDeviceID: String read GetFiscalDeviceID write SetFiscalDeviceID;

    function GetUserID: String;
    procedure SetUserID(const AValue: String);
    ///<sumarry>номер на оператор</summary>
    property UserID: String read GetUserID write SetUserID;

    function GetCreatedDate: String;
    procedure SetCreatedDate(const AValue: String);
    ///<sumarry>дата на откриване на продажбата</summary>
    property CreatedDate: String read GetCreatedDate write SetCreatedDate;

    function GetCompletedDate: String;
    procedure SetCompletedDate(const AValue: String);
    ///<sumarry>дата на приключване на продажбата</summary>
    property CompletedDate: String read GetCompletedDate write SetCompletedDate;

    function GetDue: String;
    procedure SetDue(const AValue: String);
    ///<summary>дължима сума по продажбата - в лв.</summary>
    property Due: String read GetDue write SetDue;

    function GetPaymentDate: String;
    procedure SetPaymentDate(const AValue: String);
    ///<sumarry>дата на плащане</summary>
    property PaymentDate: String read GetPaymentDate write SetPaymentDate;

    function GetPaymentType: String;
    procedure SetPaymentType(const AValue: String);
    ///<sumarry>вид на плащането</summary>
    property PaymentType: String read GetPaymentType write SetPaymentType;

    function GetPaymentBase: String;
    procedure SetPaymentBase(const AValue: String);
    ///<sumarry>платена сума без ДДС - в лв.</summary>
    property PaymentBase: String read GetPaymentBase write SetPaymentBase;

    function GetPaymentVAT: String;
    procedure SetPaymentVAT(const AValue: String);
    ///<sumarry>ДДС - сума - в лв.</summary>
    property PaymentVAT: String read GetPaymentVAT write SetPaymentVAT;

    function GetPayment: String;
    procedure SetPayment(const AValue: String);
    ///<sumarry>платена сума с ДДС - в лв.</summary>
    property Payment: String read GetPayment write SetPayment;

    procedure UpdateFromDataSet;
    procedure UpdateInDataSet;
    function ToJSON: TJSONObject;
  end;

implementation

end.

