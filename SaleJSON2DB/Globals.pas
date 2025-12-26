unit Globals;

interface

type
  TGlobal = class

  {$REGION 'Private Fields'}
  private
    FAppVersion: String;

    FStoreID: String;
    FStoreName: String;

    FWorkstationID: String;
    FWorkstationName: String;

    FFiscalDevicePresent: Boolean;
    FFiscalDeviceID: String;
    FFiscalDeviceCOMPort: Integer;
    FFiscalDeviceBaudRate: Integer;
    FFiscalDeviceLineWidth: Integer;

    FIsLoggedUser: Boolean;
    FUserGID: Integer;
    FUserName: String;
    FUserPassword: String;

    FFolder0: String;
    FFolder1: String;
    FFolder2: String;
    FFolder3: String;
    FFolder6: String;
    FFolder3001: String;
    FFolder3002: String;
    FFolder3003: String;
    FFolder3005: String;
    FFolder3006: String;
    FFolder3008: String;
    FFolder3009: String;
    FFolder3011: String;
    FFolder3021: String;
    FFolder3023: String;
    FFolder3031: String;
    FFolder3041: String;
    FFolder3051: String;
    FFolder3061: String;
    FFolder3071: String;
    FFolder3077: String;
    FFolder3081: String;
    FFolder3098: String;
    FFolder3099: String;

    FMinVIPSale: Double;
    FMaxPayment: Double;

    FShowCheckItem: Boolean;
  {$ENDREGION}


  {$REGION 'Private Methods'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties Getters/Setters'}
  private

  {$ENDREGION}


  {$REGION 'Private Properties'}
  private

  {$ENDREGION}


  {$REGION 'Interfaced Properties Getters/Setters'}
  public

  {$ENDREGION}


  {$REGION 'Interfaced Properties'}
  public
    property MinVIPSale: Double read FMinVIPSale;
    property MaxPayment: Double read FMaxPayment;
    property ShowCheckItem: Boolean read FShowCheckItem write FShowCheckItem;

    property StoreID: String read FStoreID write FStoreID;
    property StoreName: String read FStoreName write FStoreName;

    property WorkstationID: String read FWorkstationID write FWorkstationID;
    property WorkstationName: String read FWorkstationName write FWorkstationName;

    property FiscalDeviceID: String read FFiscalDeviceID write FFiscalDeviceID;
    property FiscalDevicePresent: Boolean read FFiscalDevicePresent write FFiscalDevicePresent;
    property FiscalDeviceCOMPort: Integer read FFiscalDeviceCOMPort write FFiscalDeviceCOMPort;
    property FiscalDeviceBaudRate: Integer read FFiscalDeviceBaudRate write FFiscalDeviceBaudRate;
    property FiscalDeviceLineWidth: Integer read FFiscalDeviceLineWidth write FFiscalDeviceLineWidth;

    property IsLoggedUser: Boolean read FIsLoggedUser write FIsLoggedUser;
    property UserGID: Integer read FUserGID write FUserGID;
    property UserName: String read FUserName write FUserName;
    property UserPassword: String read FUserPassword write FUserPassword;

    property TempFolder: String read FFolder0;
    property ItemsFolder: String read FFolder3;
    property ContragentsFolder: String read FFolder2;
    property StructureFolder: String read FFolder1;
    property SalesFolder: String read FFolder3002;
  {$ENDREGION}


  {$REGION 'Interfaced Methods'}
  public
    function GetAppVersion: string;
    function GetThisComputerName: String;

  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public
    constructor Create;
    destructor Destroy; override;
  {$ENDREGION}

  end;

var
  G: TGlobal;

procedure Initialize;

implementation

uses
  Winapi.Windows,
  System.IOUtils,
  System.SysUtils,
  Model.AppSettings,

  DataModule.Sale,

  Model.Classes.Sales,
  Model.Classes.Sale,
  Model.Classes.Sale.Details,
  Model.Classes.Sale.Detail,
  Model.Classes.Sale.Cancellations,
  Model.Classes.Sale.Cancellation,
  Model.Classes.Sale.Payments,
  Model.Classes.Sale.Payment;

procedure SetFormatSettings;
begin
	FormatSettings.DateSeparator := '.';
	FormatSettings.TimeSeparator := ':';
	FormatSettings.DecimalSeparator := '.';
	FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
	FormatSettings.ShortTimeFormat := 'hh:mm:ss:zzz';
	FormatSettings.LongDateFormat := 'dd.mm.yyyy';
	FormatSettings.LongTimeFormat := 'hh:mm:ss:zzz';
end;

procedure InitializeORM;
begin
  AssignDataSetModelClassSales(DataModuleSale.FDMemTableSale);
  AssignDataSetModelClassSale(DataModuleSale.FDMemTableSale);

  AssignDataSetModelClassSaleDetails(DataModuleSale.FDMemTableSaleDetails);
  AssignDataSetModelClassSaleDetail(DataModuleSale.FDMemTableSaleDetails);
  AssignDataSet2ModelClassSaleDetail(DataModuleSale.FDMemTableSaleDetails);

  AssignDataSetModelClassSaleCancellations(DataModuleSale.FDMemTableSaleCancellations);
  AssignDataSetModelClassSaleCancellation(DataModuleSale.FDMemTableSaleCancellations);
  AssignDataSet2ModelClassSaleCancellation(DataModuleSale.FDMemTableSaleDetails);

  AssignDataSetModelClassSalePayments(DataModuleSale.FDMemTableSalePayments);
  AssignDataSetModelClassSalePayment(DataModuleSale.FDMemTableSalePayments);
end;

procedure Initialize;
begin
  SetFormatSettings;
  InitializeORM;
end;

{ TGlobal }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TGlobal.GetAppVersion: string;
var
  Exe: string;
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  if FAppVersion = '' then begin
    Exe := ParamStr(0);
    Size := GetFileVersionInfoSize(PChar(Exe), Handle);
    if Size = 0 then
      RaiseLastOSError;
    SetLength(Buffer, Size);
    if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then
      RaiseLastOSError;
    if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
      RaiseLastOSError;

//    FAppVersion := Format('%d.%d.%d.%d',
//      [LongRec(FixedPtr.dwFileVersionMS).Hi,  //major
//       LongRec(FixedPtr.dwFileVersionMS).Lo,  //minor
//       LongRec(FixedPtr.dwFileVersionLS).Hi,  //release
//       LongRec(FixedPtr.dwFileVersionLS).Lo]);//build
    FAppVersion := Format('%d.%d',
      [LongRec(FixedPtr.dwFileVersionMS).Hi,  //major
       LongRec(FixedPtr.dwFileVersionMS).Lo]);//minor
  end;

  Result := FAppVersion;
end;

function TGlobal.GetThisComputerName: String;
var
  LSize: DWORD;
  LBuffer: array [0..MAX_COMPUTERNAME_LENGTH] of Char;
begin
  Result := 'ThisPC';
  LSize := MAX_COMPUTERNAME_LENGTH + 1;
  if GetComputerName(LBuffer, LSize) then begin
    SetString(Result, LBuffer, LSize)
  end;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

constructor TGlobal.Create;
begin
  FStoreID := TAppSettings.GetSetting('StoreID');
  FStoreName := TAppSettings.GetSetting('StoreName');

  FWorkstationID := TAppSettings.GetSetting('WorkstationID');
  FWorkstationName := TAppSettings.GetSetting('WorkstationName');

  FFiscalDevicePresent := (TAppSettings.GetIntegerSetting('FiscalDevicePresent', 0) = 1);
  FFiscalDeviceID := TAppSettings.GetSetting('FiscalDeviceID');
  FFiscalDeviceCOMPort := TAppSettings.GetIntegerSetting('FiscalDeviceCOMPort', 4);
  FFiscalDeviceBaudRate := TAppSettings.GetIntegerSetting('FiscalDeviceBaudRate', 115000);
  FFiscalDeviceLineWidth := TAppSettings.GetIntegerSetting('FiscalDeviceLineWidth', 25);

  FIsLoggedUser := False;
  FUserGID := 1;
  FUserName := ' ¿—»≈– 1';
  FUserPassword := '0000';

  FFolder0 := TAppSettings.GetSetting('Folder0');
  FFolder1 := TAppSettings.GetSetting('Folder1');
  FFolder2 := TAppSettings.GetSetting('Folder2');
  FFolder3 := TAppSettings.GetSetting('Folder3');
  FFolder6 := TAppSettings.GetSetting('Folder6');
  FFolder3001 := TAppSettings.GetSetting('Folder3001');
  FFolder3002 := TAppSettings.GetSetting('Folder3002');
  FFolder3003 := TAppSettings.GetSetting('Folder3003');
  FFolder3005 := TAppSettings.GetSetting('Folder3005');
  FFolder3006 := TAppSettings.GetSetting('Folder3006');
  FFolder3008 := TAppSettings.GetSetting('Folder3008');
  FFolder3009 := TAppSettings.GetSetting('Folder3009');
  FFolder3011 := TAppSettings.GetSetting('Folder3011');
  FFolder3021 := TAppSettings.GetSetting('Folder3021');
  FFolder3023 := TAppSettings.GetSetting('Folder3023');
  FFolder3031 := TAppSettings.GetSetting('Folder3031');
  FFolder3041 := TAppSettings.GetSetting('Folder3041');
  FFolder3051 := TAppSettings.GetSetting('Folder3051');
  FFolder3061 := TAppSettings.GetSetting('Folder3061');
  FFolder3071 := TAppSettings.GetSetting('Folder3071');
  FFolder3077 := TAppSettings.GetSetting('Folder3077');
  FFolder3081 := TAppSettings.GetSetting('Folder3081');
  FFolder3098 := TAppSettings.GetSetting('Folder3098');
  FFolder3099 := TAppSettings.GetSetting('Folder3099');

  FMinVIPSale := TAppSettings.GetFloatSetting('MinVIPSale');
  FMaxPayment := TAppSettings.GetFloatSetting('MaxPayment', 1000.00);

  FShowCheckItem := False;

  TFile.WriteAllText(TPath.Combine(ItemsFolder, 'start.txt'),'');
  TFile.WriteAllText(TPath.Combine(ContragentsFolder, 'start.txt'),'');
end;

destructor TGlobal.Destroy;
begin

  inherited;
end;

{$ENDREGION}

end.
