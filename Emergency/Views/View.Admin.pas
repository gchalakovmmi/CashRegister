unit View.Admin;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  ButtonWithColor,
  Interfaces.ViewModel.Admin;

type
  TViewAdmin = class(TForm)
    ButtonStores: TBitBtnWithColor;
    ButtonWorkstations: TBitBtnWithColor;
    ButtonFiscalDevices: TBitBtnWithColor;
    ButtonItems: TBitBtnWithColor;
    ButtonMeasures: TBitBtnWithColor;
    ButtonClients: TBitBtnWithColor;
    ButtonRoles: TBitBtnWithColor;
    ButtonPermissions: TBitBtnWithColor;
    ButtonUsers: TBitBtnWithColor;
    ButtonPermissionsRoles: TBitBtnWithColor;
    ButtonRolesUsers: TBitBtnWithColor;
    ButtonsActions: TBitBtnWithColor;
    ButtonPaymenTypes: TBitBtnWithColor;
    ButtonSettings: TBitBtnWithColor;

  {$REGION 'Published Methods'}
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure ButtonStoresClick(Sender: TObject);
    procedure ButtonWorkstationsClick(Sender: TObject);
    procedure ButtonFiscalDevicesClick(Sender: TObject);
    procedure ButtonItemsClick(Sender: TObject);
    procedure ButtonMeasuresClick(Sender: TObject);
    procedure ButtonClientsClick(Sender: TObject);
    procedure ButtonPermissionsClick(Sender: TObject);
    procedure ButtonRolesClick(Sender: TObject);
    procedure ButtonUsersClick(Sender: TObject);
    procedure ButtonPermissionsRolesClick(Sender: TObject);
    procedure ButtonRolesUsersClick(Sender: TObject);
    procedure ButtonsActionsClick(Sender: TObject);
    procedure ButtonPaymenTypesClick(Sender: TObject);
    procedure ButtonSettingsClick(Sender: TObject);
  {$ENDREGION}

  {$REGION 'Private Methods'}
  private

  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    FViewModel: IViewModelAdmin;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
    property ViewModel: IViewModelAdmin read FViewModel;
  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public

  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public

  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}
  end;

  procedure ShowViewAdmin;

implementation

{$R *.dfm}

uses
  Globals,
  Interfaces.Enums,

  Interfaces.ViewModel.Login,

  Model.Pattern.Observer.Observer,
  ViewModel.Admin;

{$REGION 'Published Methods'}

procedure TViewAdmin.FormCreate(Sender: TObject);
begin
  FViewModel := CreateViewModelAdmin;
end;

procedure TViewAdmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TViewAdmin.ButtonStoresClick(Sender: TObject);
begin
  ViewModel.Stores;
end;

procedure TViewAdmin.ButtonWorkstationsClick(Sender: TObject);
begin
  ViewModel.Workstations;
end;

procedure TViewAdmin.ButtonFiscalDevicesClick(Sender: TObject);
begin
  ViewModel.FiscalDevices;
end;

procedure TViewAdmin.ButtonItemsClick(Sender: TObject);
begin
  ViewModel.Items;
end;

procedure TViewAdmin.ButtonMeasuresClick(Sender: TObject);
begin
  ViewModel.Measures;
end;

procedure TViewAdmin.ButtonClientsClick(Sender: TObject);
begin
  ViewModel.Clients;
end;

procedure TViewAdmin.ButtonPermissionsClick(Sender: TObject);
begin
  ViewModel.Permissions;
end;

procedure TViewAdmin.ButtonRolesClick(Sender: TObject);
begin
  ViewModel.Roles;
end;

procedure TViewAdmin.ButtonUsersClick(Sender: TObject);
begin
  ViewModel.Users;
end;

procedure TViewAdmin.ButtonPermissionsRolesClick(Sender: TObject);
begin
  ViewModel.PermissionsRoles;
end;

procedure TViewAdmin.ButtonRolesUsersClick(Sender: TObject);
begin
  ViewModel.RolesUsers;
end;

procedure TViewAdmin.ButtonsActionsClick(Sender: TObject);
begin
  ViewModel.Actions;
end;

procedure TViewAdmin.ButtonPaymenTypesClick(Sender: TObject);
begin
  ViewModel.PaymentTypes;
end;

procedure TViewAdmin.ButtonSettingsClick(Sender: TObject);
begin
  ViewModel.Settings;
end;

{$ENDREGION}


{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

procedure ShowViewAdmin;
var
  LViewAdmin: TViewAdmin;
begin
  LViewAdmin := TViewAdmin.Create(nil);
  try
    LViewAdmin.ShowModal;
  finally
    LViewAdmin.Free;
  end;
end;

end.
