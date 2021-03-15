unit Interfaces.Model.Classes.Item;

interface

uses
  Interfaces.Model.Classes;

type
  IModelClassItem = interface(IModelClassBaseObject)
  ['{BD3C3FD0-2053-4ED5-B26F-7D6DCEC0F533}']
    function GetShortName: String;
    procedure SetShortName(const AValue: String);
    ///<summary>кратко наименование на стоката/услугата<summary>
    property ShortName: String read GetShortName write SetShortName;

    function GetCode: String;
    procedure SetCode(const AValue: String);
    ///<summary>вътрешен код на стоката/услугата<summary>
    property Code: String read GetCode write SetCode;

    function GetVendorPrice: String;
    procedure SetVendorPrice(const AValue: String);
    ///<summary>ед.цена (доставна) на стоката/услугата<summary>
    property VendorPrice: String read GetVendorPrice write SetVendorPrice;

    function GetClientPrice: String;
    procedure SetClientPrice(const AValue: String);
    ///<summary>ед.цена (продажна) на стоката/услугата<summary>
    property ClientPrice: String read GetClientPrice write SetClientPrice;

    function GetBaseMeasure: String;
    procedure SetBaseMeasure(const AValue: String);
    ///<summary>базова мярка на стоката/услугата<summary>
    property BaseMeasure: String read GetBaseMeasure write SetBaseMeasure;

    function GetBaseCoeff: String;
    procedure SetBaseCoeff(const AValue: String);
    ///<summary>базов коефициент на стоката/услугата<summary>
    property BaseCoeff: String read GetBaseCoeff write SetBaseCoeff;

    function GetBasePrice: String;
    procedure SetBasePrice(const AValue: String);
    ///<summary>базова цена на стоката/услугата<summary>
    property BasePrice: String read GetBasePrice write SetBasePrice;
  end;

implementation

end.
