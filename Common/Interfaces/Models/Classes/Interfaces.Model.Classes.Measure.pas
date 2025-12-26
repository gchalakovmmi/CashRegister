unit Interfaces.Model.Classes.Measure;

interface

uses
  Interfaces.Model.Classes;

type
  IModelClassMeasure = interface(IModelClassBaseObject)
  ['{DEF9F287-04D1-4666-903C-8BB57F3834A1}']
    function GetItemGID: String;
    procedure SetItemGID(const AValue: String);
    ///<summary>код в системата на стоката/услугата<summary>
    property ItemGID: String read GetItemGID write SetItemGID;

    function GetCoeff: String;
    procedure SetCoeff(const AValue: String);
    ///<summary>коефициент на мярката/кода<summary>
    property Coeff: String read GetCoeff write SetCoeff;

    function GetMeasure: String;
    procedure SetMeasure(const AValue: String);
    ///<summary>мярка на мярката/кода<summary>
    property Measure: String read GetMeasure write SetMeasure;

    function GetBarcode: String;
    procedure SetBarcode(const AValue: String);
    ///<summary>код/баркод на мярката/кода<summary>
    property Barcode: String read GetBarcode write SetBarcode;

    function GetFactor: String;
    procedure SetFactor(const AValue: String);
    ///<summary>кратност на мярката/кода<summary>
    property Factor: String read GetFactor write SetFactor;

    function GetMinimum: String;
    procedure SetMinimum(const AValue: String);
    ///<summary>минимум (количество при избор на този код) на мярката/кода<summary>
    property Minimum: String read GetMinimum write SetMinimum;

    function GetDiscount: String;
    procedure SetDiscount(const AValue: String);
    ///<summary>отстъпка (при избиране на този код) на мярката/кода<summary>
    property Discount: String read GetDiscount write SetDiscount;
  end;

implementation

end.
