unit Interfaces.ViewModel.Admin;

interface

type
  IViewModelAdmin = interface
  ['{0B24489A-7828-4005-82C5-9026E9A73F18}']
    procedure Stores;
    procedure Workstations;
    procedure FiscalDevices;
    procedure Items;
    procedure Measures;
    procedure Clients;
    procedure Permissions;
    procedure Roles;
    procedure Users;
    procedure PermissionsRoles;
    procedure RolesUsers;
    procedure Actions;
    procedure PaymentTypes;
    procedure Settings;
  end;

implementation

end.
