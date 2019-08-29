unit Interfaces.Model.Classes.Stores;

interface

uses
  System.Generics.Collections,
  System.JSON,
  Interfaces.Model.Classes.Store;

type
  IModelClassStores = interface
  ['{ED0024F9-8E8D-40E8-B65F-280CC02CA664}']
    function GetList: TList<IModelClassStore>;

    property List: TList<IModelClassStore> read GetList;

    procedure UpdateFromDataSet;
    procedure UpdateInDataSet;
    function ToJSON: TJSONArray;

    procedure AddStore(const AStore: IModelClassStore);
    function GetStoreByGID(const AGID: String): IModelClassStore;
  end;

implementation

end.
