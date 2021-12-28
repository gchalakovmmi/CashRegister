unit Interfaces.Model.Persistable;

interface

uses
  System.JSON,
  Data.DB;

type
  IModelPersistable = interface
  ['{B948700D-5DCB-4361-B9AF-655FD7311B23}']
    function GetIsNew: Boolean;
    function GetGID: Int64;
    procedure SetGID(const Value: Int64);

    property IsNew: Boolean read GetIsNew;
    property GID: Int64 read GetGID write SetGID;

    procedure Save;
    procedure Insert;
    procedure Update;
    procedure Delete;

    procedure SaveToDataSet(ADataSet: TDataSet);
    procedure InsertIntoDataSet(ADataSet: TDataSet);
    procedure UpdateDataSet(ADataSet: TDataSet);
    procedure DeleteFromDataSet(ADataSet: TDataSet);

    function ToJSON: TJSONObject;
  end;

implementation

end.
