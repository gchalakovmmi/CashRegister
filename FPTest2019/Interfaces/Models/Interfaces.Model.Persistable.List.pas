unit Interfaces.Model.Persistable.List;

interface

uses
  System.Generics.Collections,
  System.Types,
  System.JSON,
  Data.DB;


type
  IModelPersistableList<T> = interface
  ['{F2D7CEDE-6975-430E-960F-F8ECBCE4A5FA}']
    function GetCount: Integer;
    function GetItem(AIndex: Integer): T;

    property Count: Integer read GetCount;
    property Item[AIndex: Integer]: T read GetItem; default;

    // List access
    procedure Add(AItem: T);
    procedure InsertAt(APos: Integer; AItem: T);
    procedure DeleteAt(APos: Integer);
    procedure Prepend(AItem: T);
    procedure Clear;
    function FindByGID(AGID: Integer): T;
    procedure Remove(AItem: T);
    procedure RemoveItem(const AItem: T; ADirection: TDirection);

    // IPersistable
    procedure Save;
    procedure Insert;
    procedure Update;
    procedure Delete;

    // IDataSetable
    procedure SaveToDataSet(ADataSet: TDataSet);
    procedure InsertIntoDataSet(ADataSet: TDataSet);
    procedure UpdateDataSet(ADataSet: TDataSet);
    procedure DeleteFromDataSet(ADataSet: TDataSet);

    // IFileable
    procedure ToFile(AFileName: String);

    // IJSONableList
    function ToJSON: TJSONArray;

    function SQLTableName: String;
  end;

implementation

end.

