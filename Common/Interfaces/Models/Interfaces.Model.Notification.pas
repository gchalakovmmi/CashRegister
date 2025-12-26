unit Interfaces.Model.Notification;

interface

uses
  Interfaces.Enums;

type
  IModelNotification = interface
  ['{9863F95C-EF50-4A6A-A76F-B3C2FC8DA082}']
    function GetActions: TInterfaceActions;
    procedure SetActions(const Value: TInterfaceActions);

    property Actions: TInterfaceActions read GetActions write SetActions;
  end;

  IModelNotificationGID = interface(IModelNotification)
  ['{37770171-472A-4E50-BDE4-0CFE11B14450}']
    function GetGID: Integer;
    procedure SetGID(const Value: Integer);

    property GID: Integer read GetGID write SetGID;
  end;

implementation

end.

