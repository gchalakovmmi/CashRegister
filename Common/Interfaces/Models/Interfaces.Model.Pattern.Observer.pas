unit Interfaces.Model.Pattern.Observer;

interface

uses
  Interfaces.Enums,
  Interfaces.Model.Notification;

type
  TUpdateObserverMethod = procedure (const AModelNotification: IModelNotification) of object;

  IObserver = interface
    ['{154347EC-61ED-4786-B923-E51CDBA28E4C}']
    procedure UpdateObserver(const AModelNotification: IModelNotification);
    procedure SetUpdateObserverMethod(const AUpdateObserverMethod: TUpdateObserverMethod);
  end;

  IObservable = interface
    ['{1033BDAE-7856-4508-B4EF-540600EEF9CC}']
    procedure Subscribe(const AObserver: IObserver);
    procedure Unsubscribe(const AObserver: IObserver);
    procedure NotifyObservers(const AModelNotification: IModelNotification);
  end;

  IIsObserver = interface
  ['{0FA65EB2-7091-47CE-84C6-26D130621AB3}']
    function GetObserver: IObserver;
    procedure SetObserver(const Value: IObserver);

    property Observer: IObserver read GetObserver write SetObserver;

    procedure ProcessNotification(const AModelNotification: IModelNotification);
  end;

  IIsObservable = interface
  ['{0C595149-DD91-4DE0-B0C9-73F9BCE82887}']
    function GetObservable: IObservable;
    procedure SetObservable(const Value: IObservable);

    property Observable: IObservable read GetObservable write SetObservable;
  end;

  IIsObservableAndIsObserver = interface(IIsObservable)
  ['{AED55532-580A-43E2-9F1E-1C447B1D3255}']
    function GetObserver: IObserver;
    procedure SetObserver(const Value: IObserver);

    property Observer: IObserver read GetObserver write SetObserver;

    procedure ProcessNotification(const AModelNotification: IModelNotification);
  end;

implementation

end.
