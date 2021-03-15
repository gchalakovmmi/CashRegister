unit Interfaces.Model.Classes.Client;

interface

uses
  Interfaces.Model.Classes;

type
  IModelClassClient = interface(IModelClassBaseObject)
  ['{99EF74E2-99D6-41F5-9705-CF550360A3D9}']
    function GetTaxID: String;
    procedure SetTaxID(const AValue: String);
    ///<summary>идентификатор (ЕИК, ЕГН, друг) на клиента<summary>
    property TaxID: String read GetTaxID write SetTaxID;

    function GetAddress: String;
    procedure SetAddress(const AValue: String);
    ///<summary>адрес на клиента<summary>
    property Address: String read GetAddress write SetAddress;

    function GetContact: String;
    procedure SetContact(const AValue: String);
    ///<summary>лице за контакт (МОЛ) на клиента<summary>
    property Contact: String read GetContact write SetContact;

    function GetVIP: String;
    procedure SetVIP(const AValue: String);
    ///<summary>специален статус на клиента<summary>
    property VIP: String read GetVIP write SetVIP;

    function GetMarkUp: String;
    procedure SetMarkUp(const AValue: String);
    ///<summary>надценка на клиента<summary>
    property MarkUp: String read GetMarkUp write SetMarkUp;

    function GetLoyaltyCard: String;
    procedure SetLoyaltyCard(const AValue: String);
    ///<summary>номер на карта за лоялност на клиента<summary>
    property LoyaltyCard: String read GetLoyaltyCard write SetLoyaltyCard;
  end;

implementation

end.
