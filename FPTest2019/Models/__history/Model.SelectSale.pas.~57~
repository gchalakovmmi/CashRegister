unit Model.SelectSale;

interface

uses
  Interfaces.Model.SelectSale;

  function CreateModelSelectSale: IModelSelectSale;

implementation

uses
  System.SysUtils,
  Vcl.Controls,
  Vcl.Dialogs,
  Device.FP700X,
  View.Message,
  Helper.MyFuncs,
  DataModule.Clients,
  DataModule.Sale,
  View.SelectClient,
  Model.AppSettings,

  Interfaces.Model.Classes.Sale,
  Model.Classes.Sale,
  Interfaces.Model.Classes.Sale.Detail,
  Model.Classes.Sale.Detail,
  Interfaces.Model.Classes.Sale.Cancellation,
  Model.Classes.Sale.Cancellation,
  Interfaces.Model.Classes.Sale.Reversal;

type
  TModelSelectSale = class(TInterfacedObject, IModelSelectSale)

  {$REGION 'Private Methods'}
  private
    function SaleIsValidForReversal: Boolean;
    procedure RegistrationOfReversalAll;
    procedure RegistrationOfNewSale;
    procedure SetupNewSale;
    procedure OpenNewSale;
    function RegistrationOfNewSaleDetail(const ASaleDetail: IModelClassSaleDetail): IModelClassSaleDetail;
    procedure RegistrationOfNewSaleCancellation(const ASaleDetail: IModelClassSaleDetail);
    procedure NewTotals;
    procedure CloseNewSale;
  {$ENDREGION}


  {$REGION 'Private Fields'}
  private
    FSale: IModelClassSale;
    FNewSale: IModelClassSale;
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

  {$ENDREGION}


  {$REGION 'Interfaced Methods'}
  public
    procedure AssignNewClient;
  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

function CreateModelSelectSale: IModelSelectSale;
begin
  Result := TModelSelectSale.Create;
end;

{ TModelSelectSale }

{$REGION 'Private Methods'}

function TModelSelectSale.SaleIsValidForReversal: Boolean;
begin
  Result := False;

  DeviceFP700X.CashCheck;

  if DeviceFP700X.Cash < FSale.Due.ToDouble then begin
    ViewMessage.ShowBadMessagePlus('ÍßÌÀ ÄÎÑÒÀÒÚ×ÍÎ ÍÀËÈ×ÍÈ ÑÐÅÄÑÒÂÀ ÇÀ ÑÒÎÐÍÈÐÀÍÅ!');
    Exit(False);
  end;

  if not
    (MessageDlg(
      Format('Ïîòâúðäåòå ñòîðíèðàíå íà ïðîäàæáà íà ñòîéíîñò %.2fëâ.', [FSale.Due.ToDouble]),
      mtConfirmation,
      [mbYes, mbNo],
      0,
      mbYes
    ) = mrYes)
  then begin
    Exit(False);
  end;

  Result := True;
end;

procedure TModelSelectSale.RegistrationOfReversalAll;
var
  LCurrentSaleDetail: IModelClassSaleDetail;
  LSaleReversal: IModelClassSaleReversal;
  LDue: String;
begin
  if SaleIsValidForReversal then begin
    LDue := FSale.Due;

    // Open Reversal
    DeviceFP700X.OpenReversal(FSale);

    for LCurrentSaleDetail in FSale.Details.List do begin
      if LCurrentSaleDetail.IsCancelled <> 'äà' then begin
        LSaleReversal := LCurrentSaleDetail.ToSaleReversal;
        LSaleReversal.FiscalDeviceID := FSale.FiscalDeviceID;
        LSaleReversal.CompletedDate := FSale.CompletedDate;
        LSaleReversal.CompletedTime := FSale.CompletedTime;

        // Fiscalization
        DeviceFP700X.RegistrationOfReversal(LSaleReversal);

        // Store in Model
        LCurrentSaleDetail.IsCancelled := 'äà';
        FSale.Due := FormatFloat('0.00', _Round(FSale.Due.ToDouble - LSaleReversal.Total.ToDouble, 0.01));
        FSale.RegistrationOfReversal(LSaleReversal);
        FSale.ReversalToFile(LSaleReversal);
      end;
    end;

    // Total on Reversal
    DeviceFP700X.TotalsOnReversalAll(LDue);

    // Close Reversal
    DeviceFP700X.CloseReversal(FSale);
    TAppSettings.SetSetting('LastSaleFileName', '');
  end;
end;

procedure TModelSelectSale.RegistrationOfNewSale;
var
  LSaleDetail: IModelClassSaleDetail;
  LNewSaleDetail: IModelClassSaleDetail;
begin
  SetupNewSale;

  OpenNewSale;

  for LSaleDetail in FSale.Details.List do begin
    LNewSaleDetail := RegistrationOfNewSaleDetail(LSaleDetail);
    if LSaleDetail.IsCancelled = 'äà' then begin
      RegistrationOfNewSaleCancellation(LNewSaleDetail);
    end;
  end;

  NewTotals;

  CloseNewSale;
end;

procedure TModelSelectSale.SetupNewSale;
begin
  FNewSale := CreateModelClassSale;

  FNewSale.SetupSale;
  FNewSale.ClientGID := DataModuleClients.SelectedID.ToString;
  FNewSale.ClientName := DataModuleClients.SelectedNAME;
  FNewSale.ClientTaxNumberType := '0';
  FNewSale.ClientTaxNumber := DataModuleClients.SelectedTAXNUMBER;
  FNewSale.ClientAddress := '';
  FNewSale.ClientReceiver := '';
  FNewSale.ClientBuyer := '';
  FNewSale.ClientVIPStatus := ''; if DataModuleClients.SelectedVIP then FNewSale.ClientVIPStatus := '*';
  FNewSale.ClientSurcharge := FormatFloat('0.00', DataModuleClients.SelectedMARKUP);

  DeviceFP700X.SetupSale(FNewSale);
end;

procedure TModelSelectSale.OpenNewSale;
begin
  // Open Fiscal Receipt
  DeviceFP700X.OpenSale(FNewSale);

  // Open in Model
  FNewSale.OpenSale;
end;

function TModelSelectSale.RegistrationOfNewSaleDetail(const ASaleDetail: IModelClassSaleDetail): IModelClassSaleDetail;
var
  LNewSaleDetail: IModelClassSaleDetail;
begin
  LNewSaleDetail := CreateFromSelectedItemModelClassSaleDetail(
    ASaleDetail.Typed,
    ASaleDetail.ItemGID,
    ASaleDetail.BarCode,
    ASaleDetail.BaseItemName,
    ASaleDetail.PackCoeff,
    ASaleDetail.Measure,
    FormatFloat('0.000', ASaleDetail.Quantity.ToDouble()),
    FormatFloat('0.0000', _Round(ASaleDetail.VendorPrice.ToDouble*ASaleDetail.PackCoeff.ToDouble, 0.0001)),
    FormatFloat('0.00', _Round(ASaleDetail.ClientPrice.ToDouble*ASaleDetail.PackCoeff.ToDouble, 0.01)),
    ASaleDetail.PackDiscount,
    ASaleDetail.VATRate.Substring(0, 1),
    FNewSale.GID,
    FNewSale.SaleUniqueID,
    FNewSale.CreatedDate,
    FNewSale.CreatedTime,
    FNewSale.ClientSurcharge,
    FNewSale.ClientVIPStatus
  );

  // Fiscalization
  DeviceFP700X.RegistrationOfSale(LNewSaleDetail);

  // Store in Model
  FNewSale.RegistrationOfSale(LNewSaleDetail);

  Result := LNewSaleDetail;
end;

procedure TModelSelectSale.RegistrationOfNewSaleCancellation(const ASaleDetail: IModelClassSaleDetail);
var
  LSaleCancellation: IModelClassSaleCancellation;
begin
  LSaleCancellation := ASaleDetail.ToSaleCancellation;

  // Fiscalization
  DeviceFP700X.RegistrationOfCancelation(LSaleCancellation);

  // Store in Model
  ASaleDetail.IsCancelled := 'äà';
  FNewSale.RegistrationOfCancelation(LSaleCancellation);
end;

procedure TModelSelectSale.NewTotals;
begin
  FNewSale.CashPayment := FNewSale.Due;
  if FNewSale.CashPayment.ToDouble > 0 then begin
    if not FNewSale.Payments.Include('cash', FNewSale.CashPayment) then begin
      DeviceFP700X.CashTotal(FNewSale);
      FNewSale.CashTotal;
    end;
  end;
end;

procedure TModelSelectSale.CloseNewSale;
begin
  // Fiscalization
  DeviceFP700X.CloseSale(FNewSale);

  // Close in Model
  FNewSale.CloseSale;
end;

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

procedure TModelSelectSale.AssignNewClient;
begin
  DataModuleClients.RefreshData;
  SelectClient('!');
  if DataModuleClients.SelectedID > 0 then begin
    FSale := CreateFromFileModelClassSale(DataModuleSale.FDMemTableSaleGID.AsString, DataModuleSale.FDMemTableSaleCreatedDate.AsString);
    RegistrationOfNewSale;
    RegistrationOfReversalAll;
  end;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

end.
