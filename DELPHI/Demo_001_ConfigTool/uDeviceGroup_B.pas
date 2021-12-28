unit uDeviceGroup_B;

interface

uses
	System.SysUtils,
	Vcl.Dialogs,
	FP3530_TLB;

function execute_033_display_Clear
 ( myFP: TCFD_BGR
 ) : Integer; //


function execute_035_display_Show_LowerLine //
 ( myFP: TCFD_BGR;                          //
   const TextData : WideString              //
 ) : Integer;                               //


function execute_047_display_Show_UpperLine //
 ( myFP: TCFD_BGR;                          //
   const TextData : WideString              //
 ) : Integer;                               //


function execute_063_display_Show_DateTime
 ( myFP: TCFD_BGR
 ) : Integer; //


function execute_100_display_Show_Text //
 ( myFP: TCFD_BGR;                     //
   var TextData : WideString           //
 ) : Integer;                          //


function execute_038_receipt_NonFiscal_Open //
 ( myFP: TCFD_BGR;                          //
   var AllReceipt : WideString              //
 ) : Integer;                               //


function execute_039_receipt_NonFiscal_Close //
 ( myFP: TCFD_BGR;                           //
   var AllReceipt : WideString               //
 ) : Integer;                                //


function execute_042_receipt_NonFiscal_Text //
 ( myFP: TCFD_BGR;                          //
   const InputText : WideString             //
 ) : Integer;                               //


function execute_042_receipt_PNonFiscal_Text //
 ( myFP: TCFD_BGR;                           //
   const Height : WideString;                //
   const InputText : WideString              //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_B01  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_B02  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const Storno_UNP : WideString;            //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_B03  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const InvoiceNumber : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_B04  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const InvoiceNumber : WideString;         //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_B05  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const Storno_UNP : WideString;            //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const InvoiceNumber : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_B06  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const Storno_UNP : WideString;            //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const InvoiceNumber : WideString;         //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_048_receipt_Fiscal_Open //
 ( myFP: TCFD_BGR;                       //
   const OperatorNumber : WideString;    //
   const OperatorPassword : WideString;  //
   const UNP : WideString;               //
   const TillNumber : WideString;        //
   var AllReceiptCount : WideString;     //
   var FiscalReceiptCount : WideString   //
 ) : Integer;                            //


function execute_048_receipt_FiscalOpen_B01 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //


function execute_048_receipt_FiscalOpen_B03 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const UNP : WideString;                  //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //


function execute_056_receipt_Fiscal_Close //
 ( myFP: TCFD_BGR;                        //
   var AllReceiptCount : WideString;      //
   var FiscalReceiptCount : WideString    //
 ) : Integer;                             //


function execute_048_receipt_Invoice_Open //
 ( myFP: TCFD_BGR;                        //
   const OperatorNumber : WideString;     //
   const OperatorPassword : WideString;   //
   const UNP : WideString;                //
   const TillNumber : WideString;         //
   var AllReceiptCount : WideString;      //
   var FiscalReceiptCount : WideString    //
 ) : Integer;                             //


function execute_048_receipt_FiscalOpen_B02 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //


function execute_048_receipt_FiscalOpen_B04 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const UNP : WideString;                  //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //


function execute_057_receipt_PrintClientInfo_08 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString                   //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_09 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString                //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_10 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString              //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_11 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString                //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_12 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString                     //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_13 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString;                    //
   const Address1 : WideString                  //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_14 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString;                    //
   const Address1 : WideString;                 //
   const Address2 : WideString                  //
 ) : Integer;                                   //


function execute_049_receipt_Sale  //
 ( myFP: TCFD_BGR;                 //
   const TextRow1 : WideString;    //
   const TextRow2 : WideString;    //
   const TaxGroup : WideString;    //
   const SinglePrice : WideString; //
   const Quantity : WideString     //
 ) : Integer;                      //


function execute_049_receipt_Sale_TextRow1 //
 ( myFP: TCFD_BGR;                         //
   const TextRow1 : WideString;            //
   const TaxGroup : WideString;            //
   const SinglePrice : WideString;         //
   const Quantity : WideString             //
 ) : Integer;                              //


function execute_049_receipt_Sale_TextRow2 //
 ( myFP: TCFD_BGR;                         //
   const TextRow1 : WideString;            //
   const TextRow2 : WideString;            //
   const TaxGroup : WideString;            //
   const SinglePrice : WideString;         //
   const Quantity : WideString             //
 ) : Integer;                              //


function execute_049_receipt_Sale_Minimum //
 ( myFP: TCFD_BGR;                        //
   const TaxGroup : WideString;           //
   const SinglePrice : WideString         //
 ) : Integer;                             //


function execute_049_receipt_Sale_CByPercent //
 ( myFP: TCFD_BGR;                           //
   const TextRow1 : WideString;              //
   const TextRow2 : WideString;              //
   const TaxGroup : WideString;              //
   const SinglePrice : WideString;           //
   const Quantity : WideString;              //
   const Percent : WideString                //
 ) : Integer;                                //


function execute_049_receipt_Sale_TextRow1CByPercent //
 ( myFP: TCFD_BGR;                                   //
   const TextRow1 : WideString;                      //
   const TaxGroup : WideString;                      //
   const SinglePrice : WideString;                   //
   const Quantity : WideString;                      //
   const Percent : WideString                        //
 ) : Integer;                                        //


function execute_049_receipt_Sale_TextRow2CByPercent //
 ( myFP: TCFD_BGR;                                   //
   const TextRow2 : WideString;                      //
   const TaxGroup : WideString;                      //
   const SinglePrice : WideString;                   //
   const Quantity : WideString;                      //
   const Percent : WideString                        //
 ) : Integer;                                        //


function execute_049_receipt_Sale_CByPercentWText //
 ( myFP: TCFD_BGR;                                //
   const TaxGroup : WideString;                   //
   const SinglePrice : WideString;                //
   const Percent : WideString                     //
 ) : Integer;                                     //


function execute_049_receipt_Sale_CBySum //
 ( myFP: TCFD_BGR;                       //
   const TextRow1 : WideString;          //
   const TextRow2 : WideString;          //
   const TaxGroup : WideString;          //
   const SinglePrice : WideString;       //
   const Quantity : WideString;          //
   const Abs : WideString                //
 ) : Integer;                            //


function execute_049_receipt_Sale_TextRow1CBySum //
 ( myFP: TCFD_BGR;                               //
   const TextRow1 : WideString;                  //
   const TaxGroup : WideString;                  //
   const SinglePrice : WideString;               //
   const Quantity : WideString;                  //
   const Abs : WideString                        //
 ) : Integer;                                    //


function execute_049_receipt_Sale_TextRow2CBySum //
 ( myFP: TCFD_BGR;                               //
   const TextRow2 : WideString;                  //
   const TaxGroup : WideString;                  //
   const SinglePrice : WideString;               //
   const Quantity : WideString;                  //
   const Abs : WideString                        //
 ) : Integer;                                    //


function execute_049_receipt_Sale_CBySumWText //
 ( myFP: TCFD_BGR;                            //
   const TaxGroup : WideString;               //
   const SinglePrice : WideString;            //
   const Quantity : WideString;               //
   const Abs : WideString                     //
 ) : Integer;                                 //


function execute_049_receipt_DSale //
 ( myFP: TCFD_BGR;                 //
   const TextRow1 : WideString;    //
   const TextRow2 : WideString;    //
   const Department : WideString;  //
   const SinglePrice : WideString; //
   const Quantity : WideString     //
 ) : Integer;                      //


function execute_049_receipt_DSale_TextRow1 //
 ( myFP: TCFD_BGR;                          //
   const TextRow1 : WideString;             //
   const Department : WideString;           //
   const SinglePrice : WideString;          //
   const Quantity : WideString              //
 ) : Integer;                               //


function execute_049_receipt_DSale_TextRow2 //
 ( myFP: TCFD_BGR;                          //
   const TextRow2 : WideString;             //
   const Department : WideString;           //
   const SinglePrice : WideString;          //
   const Quantity : WideString              //
 ) : Integer;                               //


function execute_049_receipt_DSale_Minimum //
 ( myFP: TCFD_BGR;                         //
   const Department : WideString;          //
   const SinglePrice : WideString          //
 ) : Integer;                              //


function execute_049_receipt_DSale_CByPercent //
 ( myFP: TCFD_BGR;                            //
   const TextRow1 : WideString;               //
   const TextRow2 : WideString;               //
   const Department : WideString;             //
   const SinglePrice : WideString;            //
   const Quantity : WideString;               //
   const Percent : WideString                 //
 ) : Integer;                                 //


function execute_049_receipt_DSale_TextRow1CByPercent //
 ( myFP: TCFD_BGR;                                    //
   const TextRow1 : WideString;                       //
   const Department : WideString;                     //
   const SinglePrice : WideString;                    //
   const Quantity : WideString;                       //
   const Percent : WideString                         //
 ) : Integer;                                         //


function execute_049_receipt_DSale_TextRow2CByPercent //
 ( myFP: TCFD_BGR;                                    //
   const TextRow2 : WideString;                       //
   const Department : WideString;                     //
   const SinglePrice : WideString;                    //
   const Quantity : WideString;                       //
   const Percent : WideString                         //
 ) : Integer;                                         //


function execute_049_receipt_DSale_CByPercentWText //
 ( myFP: TCFD_BGR;                                 //
   const Department : WideString;                  //
   const SinglePrice : WideString;                 //
   const Quantity : WideString;                    //
   const Percent : WideString                      //
 ) : Integer;                                      //


function execute_049_receipt_DSale_CBySum //
 ( myFP: TCFD_BGR;                        //
   const TextRow1 : WideString;           //
   const TextRow2 : WideString;           //
   const Department : WideString;         //
   const SinglePrice : WideString;        //
   const Quantity : WideString;           //
   const Abs : WideString                 //
 ) : Integer;                             //


function execute_049_receipt_DSale_TextRow1CBySum //
 ( myFP: TCFD_BGR;                                //
   const TextRow1 : WideString;                   //
   const Department : WideString;                 //
   const SinglePrice : WideString;                //
   const Quantity : WideString;                   //
   const Abs : WideString                         //
 ) : Integer;                                     //


function execute_049_receipt_DSale_TextRow2CBySum //
 ( myFP: TCFD_BGR;                                //
   const TextRow2 : WideString;                   //
   const Department : WideString;                 //
   const SinglePrice : WideString;                //
   const Quantity : WideString;                   //
   const Abs : WideString                         //
 ) : Integer;                                     //


function execute_049_receipt_DSale_CBySumWText //
 ( myFP: TCFD_BGR;                             //
   const Department : WideString;              //
   const SinglePrice : WideString;             //
   const Quantity : WideString;                //
   const Abs : WideString                      //
 ) : Integer;                                  //


function execute_052_receipt_DisplaySale //
 ( myFP: TCFD_BGR;                       //
   const TextRow : WideString;           //
   const TaxGroup : WideString;          //
   const SinglePrice : WideString;       //
   const Quantity : WideString           //
 ) : Integer;                            //


function execute_052_receipt_DisplaySale_CByPercent //
 ( myFP: TCFD_BGR;                                  //
   const TextRow : WideString;                      //
   const TaxGroup : WideString;                     //
   const SinglePrice : WideString;                  //
   const Quantity : WideString;                     //
   const Percent : WideString                       //
 ) : Integer;                                       //


function execute_052_receipt_DisplaySale_CBySum //
 ( myFP: TCFD_BGR;                              //
   const TextRow : WideString;                  //
   const TaxGroup : WideString;                 //
   const SinglePrice : WideString;              //
   const Quantity : WideString;                 //
   const Abs : WideString                       //
 ) : Integer;                                   //


function execute_052_receipt_DisplaySale_Minimum //
 ( myFP: TCFD_BGR;                               //
   const TextRow : WideString;                   //
   const TaxGroup : WideString;                  //
   const SinglePrice : WideString                //
 ) : Integer;                                    //


function execute_052_receipt_DisplayDSale //
 ( myFP: TCFD_BGR;                        //
   const TextRow : WideString;            //
   const Department : WideString;         //
   const SinglePrice : WideString;        //
   const Quantity : WideString            //
 ) : Integer;                             //


function execute_052_receipt_DisplayDSale_CByPercent //
 ( myFP: TCFD_BGR;                                   //
   const TextRow : WideString;                       //
   const Department : WideString;                    //
   const SinglePrice : WideString;                   //
   const Quantity : WideString;                      //
   const Percent : WideString                        //
 ) : Integer;                                        //


function execute_052_receipt_DisplayDSale_CBySum //
 ( myFP: TCFD_BGR;                               //
   const TextRow : WideString;                   //
   const Department : WideString;                //
   const SinglePrice : WideString;               //
   const Quantity : WideString;                  //
   const Abs : WideString                        //
 ) : Integer;                                    //


function execute_052_receipt_DisplayDSale_Minimum //
 ( myFP: TCFD_BGR;                                //
   const TextRow : WideString;                    //
   const Department : WideString;                 //
   const SinglePrice : WideString                 //
 ) : Integer;                                     //


function execute_058_receipt_PLU_Sale //
 ( myFP: TCFD_BGR;                    //
   const Target_PLU : WideString;     //
   const Quantity : WideString        //
 ) : Integer;                         //


function execute_058_receipt_PLUSale_CByPercent //
 ( myFP: TCFD_BGR;                              //
   const Target_PLU : WideString;               //
   const Quantity : WideString;                 //
   const Percent : WideString                   //
 ) : Integer;                                   //


function execute_058_receipt_PLUSale_CBySum //
 ( myFP: TCFD_BGR;                          //
   const Target_PLU : WideString;           //
   const Quantity : WideString;             //
   const Abs : WideString                   //
 ) : Integer;                               //


function execute_058_receipt_PLUDep_Sale //
 ( myFP: TCFD_BGR;                       //
   const Target_PLU : WideString;        //
   const Department : WideString;        //
   const Quantity : WideString           //
 ) : Integer;                            //


function execute_058_receipt_PLUDep_Sale_CByPercent //
 ( myFP: TCFD_BGR;                                  //
   const Target_PLU : WideString;                   //
   const Department : WideString;                   //
   const Quantity : WideString;                     //
   const Percent : WideString                       //
 ) : Integer;                                       //


function execute_058_receipt_PLUDep_Sale_CBySum //
 ( myFP: TCFD_BGR;                              //
   const Target_PLU : WideString;               //
   const Department : WideString;               //
   const Quantity : WideString;                 //
   const Abs : WideString                       //
 ) : Integer;                                   //


function execute_058_receipt_DisplayPLUSale //
 ( myFP: TCFD_BGR;                          //
   const DChar : WideString;                //
   const Target_PLU : WideString;           //
   const Quantity : WideString              //
 ) : Integer;                               //


function execute_058_receipt_DisplayPLUSale_CByPercent //
 ( myFP: TCFD_BGR;                                     //
   const DChar : WideString;                           //
   const Target_PLU : WideString;                      //
   const Quantity : WideString;                        //
   const Percent : WideString                          //
 ) : Integer;                                          //


function execute_058_receipt_DisplayPLUSale_CBySum //
 ( myFP: TCFD_BGR;                                 //
   const DChar : WideString;                       //
   const Target_PLU : WideString;                  //
   const Quantity : WideString;                    //
   const Abs : WideString                          //
 ) : Integer;                                      //


function execute_058_receipt_DisplayDepPLU_Sale //
 ( myFP: TCFD_BGR;                              //
   const DChar : WideString;                    //
   const Target_PLU : WideString;               //
   const Department : WideString;               //
   const Quantity : WideString                  //
 ) : Integer;                                   //


function execute_058_receipt_DisplayDepPLU_Sale_CByPercent //
 ( myFP: TCFD_BGR;                                         //
   const DChar : WideString;                               //
   const Target_PLU : WideString;                          //
   const Department : WideString;                          //
   const Quantity : WideString;                            //
   const Percent : WideString                              //
 ) : Integer;                                              //


function execute_058_receipt_DisplayDepPLU_Sale_CBySum //
 ( myFP: TCFD_BGR;                                     //
   const DChar : WideString;                           //
   const Target_PLU : WideString;                      //
   const Department : WideString;                      //
   const Quantity : WideString;                        //
   const Abs : WideString                              //
 ) : Integer;                                          //


function execute_051_receipt_Subtotal //
 ( myFP: TCFD_BGR;                    //
   const ToPrint : WideString;        //
   const ToDisplay : WideString;      //
   var Subtotal : WideString;         //
   var SumTaxGroupA : WideString;     //
   var SumTaxGroupB : WideString;     //
   var SumTaxGroupC : WideString;     //
   var SumTaxGroupD : WideString;     //
   var SumTaxGroupE : WideString;     //
   var SumTaxGroupF : WideString;     //
   var SumTaxGroupG : WideString;     //
   var SumTaxGroupH : WideString      //
 ) : Integer;                         //


function execute_051_receipt_Subtotal_CByPercent //
 ( myFP: TCFD_BGR;                               //
   const ToPrint : WideString;                   //
   const ToDisplay : WideString;                 //
   const Percent : WideString;                   //
   var Subtotal : WideString;                    //
   var SumTaxGroupA : WideString;                //
   var SumTaxGroupB : WideString;                //
   var SumTaxGroupC : WideString;                //
   var SumTaxGroupD : WideString;                //
   var SumTaxGroupE : WideString;                //
   var SumTaxGroupF : WideString;                //
   var SumTaxGroupG : WideString;                //
   var SumTaxGroupH : WideString                 //
 ) : Integer;                                    //


function execute_051_receipt_Subtotal_CBySum //
 ( myFP: TCFD_BGR;                           //
   const ToPrint : WideString;               //
   const ToDisplay : WideString;             //
   const Abs : WideString;                   //
   var Subtotal : WideString;                //
   var SumTaxGroupA : WideString;            //
   var SumTaxGroupB : WideString;            //
   var SumTaxGroupC : WideString;            //
   var SumTaxGroupD : WideString;            //
   var SumTaxGroupE : WideString;            //
   var SumTaxGroupF : WideString;            //
   var SumTaxGroupG : WideString;            //
   var SumTaxGroupH : WideString             //
 ) : Integer;                                //


function execute_053_receipt_Total_PAmount //
 ( myFP: TCFD_BGR;                         //
   const TextRow1 : WideString;            //
   const TextRow2 : WideString;            //
   const PaidMode : WideString;            //
   const InputAmount : WideString;         //
   var deviceCode : WideString;            //
   var outputAmount : WideString           //
 ) : Integer;                              //


function execute_053_receipt_Total_PAmountTextRow1 //
 ( myFP: TCFD_BGR;                                 //
   const TextRow1 : WideString;                    //
   const PaidMode : WideString;                    //
   const InputAmount : WideString;                 //
   var deviceCode : WideString;                    //
   var outputAmount : WideString                   //
 ) : Integer;                                      //


function execute_053_receipt_Total_PAmountTextRow2 //
 ( myFP: TCFD_BGR;                                 //
   const TextRow2 : WideString;                    //
   const PaidMode : WideString;                    //
   const InputAmount : WideString;                 //
   var deviceCode : WideString;                    //
   var outputAmount : WideString                   //
 ) : Integer;                                      //


function execute_053_receipt_Total_PAmountWithoutText //
 ( myFP: TCFD_BGR;                                    //
   const PaidMode : WideString;                       //
   const InputAmount : WideString;                    //
   var deviceCode : WideString;                       //
   var outputAmount : WideString                      //
 ) : Integer;                                         //


function execute_053_receipt_Total //
 ( myFP: TCFD_BGR;                 //
   const TextRow1 : WideString;    //
   const TextRow2 : WideString;    //
   var deviceCode : WideString;    //
   var outputAmount : WideString   //
 ) : Integer;                      //


function execute_053_receipt_Total_TextRow1 //
 ( myFP: TCFD_BGR;                          //
   const TextRow1 : WideString;             //
   var deviceCode : WideString;             //
   var outputAmount : WideString            //
 ) : Integer;                               //


function execute_053_receipt_Total_TextRow2 //
 ( myFP: TCFD_BGR;                          //
   const TextRow2 : WideString;             //
   var deviceCode : WideString;             //
   var outputAmount : WideString            //
 ) : Integer;                               //


function execute_053_receipt_Total_WithoutText //
 ( myFP: TCFD_BGR;                             //
   var deviceCode : WideString;                //
   var outputAmount : WideString               //
 ) : Integer;                                  //


function execute_053_receipt_PinPad_Total //
 ( myFP: TCFD_BGR;                        //
   const TextRow1 : WideString;           //
   const TextRow2 : WideString;           //
   const PaidMode : WideString;           //
   const InputAmount : WideString;        //
   const PinPad_PaidMode : WideString;    //
   var fAnswer : WideString               //
 ) : Integer;                             //


function execute_053_receipt_PinPad_TotalTextRow1 //
 ( myFP: TCFD_BGR;                                //
   const TextRow1 : WideString;                   //
   const PaidMode : WideString;                   //
   const InputAmount : WideString;                //
   const PinPad_PaidMode : WideString;            //
   var fAnswer : WideString                       //
 ) : Integer;                                     //


function execute_053_receipt_PinPad_TotalTextRow2 //
 ( myFP: TCFD_BGR;                                //
   const TextRow2 : WideString;                   //
   const PaidMode : WideString;                   //
   const InputAmount : WideString;                //
   const PinPad_PaidMode : WideString;            //
   var fAnswer : WideString                       //
 ) : Integer;                                     //


function execute_053_receipt_PinPad_TotalWText //
 ( myFP: TCFD_BGR;                             //
   const PaidMode : WideString;                //
   const InputAmount : WideString;             //
   const PinPad_PaidMode : WideString;         //
   var fAnswer : WideString                    //
 ) : Integer;                                  //


function execute_044_receipt_Paper_Feed //
 ( myFP: TCFD_BGR;                      //
   const LinesCount : WideString        //
 ) : Integer;                           //


function execute_054_receipt_Fiscal_Text //
 ( myFP: TCFD_BGR;                       //
   const InputText : WideString          //
 ) : Integer;                            //


function execute_060_receipt_Fiscal_Cancel
 ( myFP: TCFD_BGR
 ) : Integer; //


function execute_070_receipt_CashIn_CashOut //
 ( myFP: TCFD_BGR;                          //
   const Amount : WideString;               //
   var ErrorCode : WideString;              //
   var CashSum : WideString;                //
   var ServIn : WideString;                 //
   var ServOut : WideString                 //
 ) : Integer;                               //


function execute_092_receipt_Separating_Line //
 ( myFP: TCFD_BGR;                           //
   const LineType : WideString               //
 ) : Integer;                                //


function execute_103_receipt_Current_Info //
 ( myFP: TCFD_BGR;                        //
   var ErrorCode : WideString;            //
   var CanVd : WideString;                //
   var TaxA : WideString;                 //
   var TaxB : WideString;                 //
   var TaxC : WideString;                 //
   var TaxD : WideString;                 //
   var TaxE : WideString;                 //
   var TaxF : WideString;                 //
   var TaxG : WideString;                 //
   var TaxH : WideString;                 //
   var Inv : WideString;                  //
   var InvNumber : WideString;            //
   var fReceiptType : WideString          //
 ) : Integer;                             //


function execute_106_receipt_Drawer_KickOut //
 ( myFP: TCFD_BGR;                          //
   const mSec : WideString                  //
 ) : Integer;                               //


function execute_109_receipt_Print_Duplicate //
 ( myFP: TCFD_BGR;                           //
   const Count : WideString                  //
 ) : Integer;                                //


function execute_069_report_DailyClosure_01 //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   var Closure : WideString;                //
   var FMTotal : WideString;                //
   var TotalSum_A : WideString;             //
   var TotalSum_B : WideString;             //
   var TotalSum_C : WideString;             //
   var TotalSum_D : WideString;             //
   var TotalSum_E : WideString;             //
   var TotalSum_F : WideString;             //
   var TotalSum_G : WideString;             //
   var TotalSum_H : WideString              //
 ) : Integer;                               //


function execute_073_report_FMByNumRange //
 ( myFP: TCFD_BGR;                       //
   const StartNumber : WideString;       //
   const EndNumber : WideString          //
 ) : Integer;                            //


function execute_079_report_FMByDateRange_Short //
 ( myFP: TCFD_BGR;                              //
   const FromDate : WideString;                 //
   const ToDate : WideString                    //
 ) : Integer;                                   //


function execute_094_report_FMByDateRange //
 ( myFP: TCFD_BGR;                        //
   const FromDate : WideString;           //
   const ToDate : WideString              //
 ) : Integer;                             //


function execute_095_report_FMByNumRange_Short //
 ( myFP: TCFD_BGR;                             //
   const StartNumber : WideString;             //
   const EndNumber : WideString                //
 ) : Integer;                                  //


function execute_105_report_Operators
 ( myFP: TCFD_BGR
 ) : Integer; //


function execute_108_report_ExtDailyClosure_01 //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   var Closure : WideString;                   //
   var FMTotal : WideString;                   //
   var TotalSum_A : WideString;                //
   var TotalSum_B : WideString;                //
   var TotalSum_C : WideString;                //
   var TotalSum_D : WideString;                //
   var TotalSum_E : WideString;                //
   var TotalSum_F : WideString;                //
   var TotalSum_G : WideString;                //
   var TotalSum_H : WideString                 //
 ) : Integer;                                  //


function execute_111_report_Items //
 ( myFP: TCFD_BGR;                //
   const Option : WideString;     //
   var ErrorCode : WideString     //
 ) : Integer;                     //


function execute_111_report_Items_InRange //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   const StartPLU : WideString;           //
   const EndPLU : WideString;             //
   var ErrorCode : WideString             //
 ) : Integer;                             //


function execute_111_report_Items_InRangeByGroup //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const StartPLU : WideString;                  //
   const EndPLU : WideString;                    //
   const Group : WideString;                     //
   var ErrorCode : WideString                    //
 ) : Integer;                                    //


function execute_117_report_DailyClosureByDepartments_01 //
 ( myFP: TCFD_BGR;                                       //
   const Option : WideString;                            //
   var Closure : WideString;                             //
   var FMTotal : WideString;                             //
   var TotalSum_A : WideString;                          //
   var TotalSum_B : WideString;                          //
   var TotalSum_C : WideString;                          //
   var TotalSum_D : WideString;                          //
   var TotalSum_E : WideString;                          //
   var TotalSum_F : WideString;                          //
   var TotalSum_G : WideString;                          //
   var TotalSum_H : WideString                           //
 ) : Integer;                                            //


function execute_118_report_DailyClosureByDepartmentsAndItems_01 //
 ( myFP: TCFD_BGR;                                               //
   const Option : WideString;                                    //
   var Closure : WideString;                                     //
   var FMTotal : WideString;                                     //
   var TotalSum_A : WideString;                                  //
   var TotalSum_B : WideString;                                  //
   var TotalSum_C : WideString;                                  //
   var TotalSum_D : WideString;                                  //
   var TotalSum_E : WideString;                                  //
   var TotalSum_F : WideString;                                  //
   var TotalSum_G : WideString;                                  //
   var TotalSum_H : WideString                                   //
 ) : Integer;                                                    //


function execute_107_items_Get_ItemsInformation //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   var ErrorCode : WideString;                  //
   var Total : WideString;                      //
   var Prog : WideString;                       //
   var Len : WideString                         //
 ) : Integer;                                   //


function execute_107_items_Set_Item //
 ( myFP: TCFD_BGR;                  //
   const Option : WideString;       //
   const TaxGroup : WideString;     //
   const Target_PLU : WideString;   //
   const Group : WideString;        //
   const SinglePrice : WideString;  //
   const Quantity : WideString;     //
   const ItemName : WideString;     //
   var ErrorCode : WideString       //
 ) : Integer;                       //


function execute_107_items_Set_ItemWithReplace //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const TaxGroup : WideString;                //
   const Target_PLU : WideString;              //
   const Group : WideString;                   //
   const SinglePrice : WideString;             //
   const Replace : WideString;                 //
   const Quantity : WideString;                //
   const ItemName : WideString;                //
   var ErrorCode : WideString                  //
 ) : Integer;                                  //


function execute_107_items_Set_ItemQuantity //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Target_PLU : WideString;           //
   const Quantity : WideString;             //
   var ErrorCode : WideString               //
 ) : Integer;                               //


function execute_107_items_Delete_Item //
 ( myFP: TCFD_BGR;                     //
   const Option : WideString;          //
   const Target_PLU : WideString;      //
   var ErrorCode : WideString          //
 ) : Integer;                          //


function execute_107_items_Delete_ItemsInRange //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const StartPLU : WideString;                //
   const EndPLU : WideString;                  //
   var ErrorCode : WideString                  //
 ) : Integer;                                  //


function execute_107_items_Delete_All_Items //
 ( myFP: TCFD_BGR;                          //
   const D_Option : WideString;             //
   const A_Option : WideString;             //
   var ErrorCode : WideString               //
 ) : Integer;                               //


function execute_107_items_Get_Item //
 ( myFP: TCFD_BGR;                  //
   const Option : WideString;       //
   const Target_PLU : WideString;   //
   var ErrorCode : WideString;      //
   var PLU : WideString;            //
   var TaxGroup : WideString;       //
   var Group : WideString;          //
   var SinglePrice : WideString;    //
   var Total : WideString;          //
   var Sold : WideString;           //
   var Available : WideString;      //
   var ItemName : WideString        //
 ) : Integer;                       //


function execute_107_items_Get_FirstFoundItem //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Target_PLU : WideString;             //
   var ErrorCode : WideString;                //
   var PLU : WideString;                      //
   var TaxGroup : WideString;                 //
   var Group : WideString;                    //
   var SinglePrice : WideString;              //
   var Total : WideString;                    //
   var Sold : WideString;                     //
   var Available : WideString;                //
   var ItemName : WideString                  //
 ) : Integer;                                 //


function execute_107_items_Get_LastFoundItem //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   const Target_PLU : WideString;            //
   var ErrorCode : WideString;               //
   var PLU : WideString;                     //
   var TaxGroup : WideString;                //
   var Group : WideString;                   //
   var SinglePrice : WideString;             //
   var Total : WideString;                   //
   var Sold : WideString;                    //
   var Available : WideString;               //
   var ItemName : WideString                 //
 ) : Integer;                                //


function execute_107_items_Get_NextItem //
 ( myFP: TCFD_BGR;                      //
   const Option : WideString;           //
   var ErrorCode : WideString;          //
   var PLU : WideString;                //
   var TaxGroup : WideString;           //
   var Group : WideString;              //
   var SinglePrice : WideString;        //
   var Total : WideString;              //
   var Sold : WideString;               //
   var Available : WideString;          //
   var ItemName : WideString            //
 ) : Integer;                           //


function execute_107_items_Get_FirstSoldItem //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   const Target_PLU : WideString;            //
   var ErrorCode : WideString;               //
   var PLU : WideString;                     //
   var TaxGroup : WideString;                //
   var Group : WideString;                   //
   var SinglePrice : WideString;             //
   var Total : WideString;                   //
   var Sold : WideString;                    //
   var Available : WideString;               //
   var ItemName : WideString                 //
 ) : Integer;                                //


function execute_107_items_Get_LastSoldItem //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Target_PLU : WideString;           //
   var ErrorCode : WideString;              //
   var PLU : WideString;                    //
   var TaxGroup : WideString;               //
   var Group : WideString;                  //
   var SinglePrice : WideString;            //
   var Total : WideString;                  //
   var Sold : WideString;                   //
   var Available : WideString;              //
   var ItemName : WideString                //
 ) : Integer;                               //


function execute_107_items_Get_NextSoldItem //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Target_PLU : WideString;           //
   var ErrorCode : WideString;              //
   var PLU : WideString;                    //
   var TaxGroup : WideString;               //
   var Group : WideString;                  //
   var SinglePrice : WideString;            //
   var Total : WideString;                  //
   var Sold : WideString;                   //
   var Available : WideString;              //
   var ItemName : WideString                //
 ) : Integer;                               //


function execute_107_items_Get_FirstNotProgrammedItem //
 ( myFP: TCFD_BGR;                                    //
   const Option : WideString;                         //
   const Target_PLU : WideString;                     //
   var PLU : WideString                               //
 ) : Integer;                                         //


function execute_107_items_Get_LastNotProgrammedItem //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   const Target_PLU : WideString;                    //
   var PLU : WideString                              //
 ) : Integer;                                        //


function execute_140_clients_Set_ClientData //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const EIK_Value : WideString;            //
   const EIK_Type : WideString;             //
   const Receiver : WideString;             //
   const Client : WideString;               //
   const TaxNo : WideString;                //
   const Address_1 : WideString;            //
   const Address_2 : WideString;            //
   var ErrorCode : WideString               //
 ) : Integer;                               //


function execute_140_clients_Del_ClientData //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const EIK_Value : WideString;            //
   var ErrorCode : WideString               //
 ) : Integer;                               //


function execute_140_clients_Get_ClientData //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const EIK_Value : WideString;            //
   var Value : WideString;                  //
   var EIK_Type : WideString;               //
   var Receiver : WideString;               //
   var Client : WideString;                 //
   var TaxNo : WideString;                  //
   var Address_1 : WideString;              //
   var Address_2 : WideString               //
 ) : Integer;                               //


function execute_140_clients_Set_SellerName //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Seller : WideString;               //
   var ErrorCode : WideString               //
 ) : Integer;                               //


function execute_140_clients_Get_SellerName //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Seller : WideString                //
 ) : Integer;                               //


function execute_140_clients_Get_FirstClientData //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   var Value : WideString;                       //
   var EIK_Type : WideString;                    //
   var Receiver : WideString;                    //
   var Client : WideString;                      //
   var TaxNo : WideString;                       //
   var Address_1 : WideString;                   //
   var Address_2 : WideString                    //
 ) : Integer;                                    //


function execute_140_clients_Get_NextClientData //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   var Value : WideString;                      //
   var EIK_Type : WideString;                   //
   var Receiver : WideString;                   //
   var Client : WideString;                     //
   var TaxNo : WideString;                      //
   var Address_1 : WideString;                  //
   var Address_2 : WideString                   //
 ) : Integer;                                   //


function execute_140_clients_Del_AllClientData //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   var ErrorCode : WideString                  //
 ) : Integer;                                  //


function execute_043_config_Set_HeaderLine //
 ( myFP: TCFD_BGR;                         //
   const Item : WideString;                //
   const Value : WideString                //
 ) : Integer;                              //


function execute_043_config_Set_FooterLine //
 ( myFP: TCFD_BGR;                         //
   const Item : WideString;                //
   const Value : WideString                //
 ) : Integer;                              //


function execute_043_config_Set_AutoFormat //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const Off_On : WideString               //
 ) : Integer;                              //


function execute_043_config_Set_PrintDensity //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   const Value : WideString                  //
 ) : Integer;                                //


function execute_043_config_enable_EUR //
 ( myFP: TCFD_BGR;                     //
   const Option : WideString;          //
   const On : WideString;              //
   const Rate : WideString             //
 ) : Integer;                          //


function execute_043_config_disable_EUR //
 ( myFP: TCFD_BGR;                      //
   const Option : WideString;           //
   const Off : WideString               //
 ) : Integer;                           //


function execute_043_config_Set_PrintLogo //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   const Off_On : WideString;             //
   const Height : WideString              //
 ) : Integer;                             //


function execute_043_config_Set_PrintDepartment //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   const Off_On : WideString                    //
 ) : Integer;                                   //


function execute_043_config_Set_PrintTaxDDS //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Off_On : WideString                //
 ) : Integer;                               //


function execute_043_config_Set_CashDrawerPulse //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   const Off_On : WideString                    //
 ) : Integer;                                   //


function execute_061_config_Set_DateTime //
 ( myFP: TCFD_BGR;                       //
   const DateTime : WideString           //
 ) : Integer;                            //


function execute_066_config_Set_InvoiceRange //
 ( myFP: TCFD_BGR;                           //
   const StartValue : WideString;            //
   const EndValue : WideString;              //
   var Value_Start : WideString;             //
   var Value_End : WideString;               //
   var Value_Current : WideString            //
 ) : Integer;                                //


function execute_085_config_Set_AdditionalPaymentName //
 ( myFP: TCFD_BGR;                                    //
   const Option : WideString;                         //
   const Additional_PaymentName : WideString;         //
   var ErrorCode : WideString                         //
 ) : Integer;                                         //


function execute_087_config_Set_DepartmentName //
 ( myFP: TCFD_BGR;                             //
   const DepartmentNumber : WideString;        //
   const TaxGroup : WideString;                //
   const TextRow1 : WideString                 //
 ) : Integer;                                  //


function execute_087_config_Set_DepartmentNameTwoRows //
 ( myFP: TCFD_BGR;                                    //
   const DepartmentNumber : WideString;               //
   const TaxGroup : WideString;                       //
   const TextRow1 : WideString;                       //
   const TextRow2 : WideString                        //
 ) : Integer;                                         //


function execute_101_config_Set_OperatorPassword //
 ( myFP: TCFD_BGR;                               //
   const OperatorCode : WideString;              //
   const OldPassword : WideString;               //
   const NewPassword : WideString                //
 ) : Integer;                                    //


function execute_102_config_Set_OperatorName //
 ( myFP: TCFD_BGR;                           //
   const OperatorCode : WideString;          //
   const Password : WideString;              //
   const OperatorName : WideString           //
 ) : Integer;                                //


function execute_043_info_Get_PrintOption //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var fAnswer : WideString               //
 ) : Integer;                             //


function execute_050_info_Get_TaxRatesByPeriod //
 ( myFP: TCFD_BGR;                             //
   const StartDate : WideString;               //
   const EndDate : WideString;                 //
   var ErrorCode : WideString;                 //
   var AA : WideString;                        //
   var BB : WideString;                        //
   var CC : WideString;                        //
   var DD : WideString;                        //
   var EE : WideString;                        //
   var FF : WideString;                        //
   var GG : WideString;                        //
   var HH : WideString;                        //
   var DDMMYY : WideString                     //
 ) : Integer;                                  //


function execute_062_info_Get_DateTime //
 ( myFP: TCFD_BGR;                     //
   var DateTime : WideString           //
 ) : Integer;                          //


function execute_062_info_Get_DateTime_01 //
 ( myFP: TCFD_BGR;                        //
   var Day : WideString;                  //
   var Month : WideString;                //
   var Year : WideString;                 //
   var Hour : WideString;                 //
   var Minute : WideString;               //
   var Second : WideString                //
 ) : Integer;                             //


function execute_064_info_Get_LastFiscRecord //
 ( myFP: TCFD_BGR;                           //
   var ErrorCode : WideString;               //
   var LastFRecordNumber : WideString;       //
   var TaxA : WideString;                    //
   var TaxB : WideString;                    //
   var TaxC : WideString;                    //
   var TaxD : WideString;                    //
   var TaxE : WideString;                    //
   var TaxF : WideString;                    //
   var TaxG : WideString;                    //
   var TaxH : WideString;                    //
   var Date : WideString                     //
 ) : Integer;                                //


function execute_065_info_Get_AdditionalDailyInfo_04 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var SumA : WideString;                            //
   var SumB : WideString;                            //
   var SumC : WideString;                            //
   var SumD : WideString;                            //
   var SumE : WideString;                            //
   var SumF : WideString;                            //
   var SumG : WideString;                            //
   var SumH : WideString                             //
 ) : Integer;                                        //


function execute_065_info_Get_AdditionalDailyInfo_05 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var ClientsCount : WideString;                    //
   var SumSold : WideString;                         //
   var Surcharges_Sum : WideString;                  //
   var Surcharges_Count : WideString;                //
   var Discounts_Sum : WideString;                   //
   var Discounts_Count : WideString;                 //
   var Voids_Sum : WideString;                       //
   var Voids_Count : WideString;                     //
   var Canceled_Sum : WideString;                    //
   var Canceled_Count : WideString                   //
 ) : Integer;                                        //


function execute_065_info_Get_AdditionalDailyInfo_06 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var Foreign_Sum : WideString;                     //
   var LocalForeign_Sum : WideString;                //
   var CashIn_Sum : WideString;                      //
   var CashIn_Count : WideString;                    //
   var CashOut_Sum : WideString;                     //
   var CashOut_Count : WideString;                   //
   var CashIn_ForeignSum : WideString;               //
   var CashIn_ForeignCount : WideString;             //
   var CashOut_ForeignSum : WideString;              //
   var CashOut_ForeignCount : WideString             //
 ) : Integer;                                        //


function execute_065_info_Get_AdditionalDailyInfo_07 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var Sum_PaymentType_0 : WideString;               //
   var Sum_PaymentType_1 : WideString;               //
   var Sum_PaymentType_2 : WideString;               //
   var Sum_PaymentType_3 : WideString;               //
   var Sum_PaymentType_4 : WideString;               //
   var Sum_PaymentType_5 : WideString                //
 ) : Integer;                                        //


function execute_065_info_Get_AdditionalDailyInfo_08 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var ReverseTurnover_TaxA : WideString;            //
   var ReverseTurnover_TaxB : WideString;            //
   var ReverseTurnover_TaxC : WideString;            //
   var ReverseTurnover_TaxD : WideString;            //
   var ReverseTurnover_TaxE : WideString;            //
   var ReverseTurnover_TaxF : WideString;            //
   var ReverseTurnover_TaxG : WideString;            //
   var ReverseTurnover_TaxH : WideString             //
 ) : Integer;                                        //


function execute_065_info_Get_AdditionalDailyInfo_09 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var ReverseVat_TaxA : WideString;                 //
   var ReverseVat_TaxB : WideString;                 //
   var ReverseVat_TaxC : WideString;                 //
   var ReverseVat_TaxD : WideString;                 //
   var ReverseVat_TaxE : WideString;                 //
   var ReverseVat_TaxF : WideString;                 //
   var ReverseVat_TaxG : WideString;                 //
   var ReverseVat_TaxH : WideString                  //
 ) : Integer;                                        //


function execute_065_info_Get_AdditionalDailyInfo_10 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var ReverseSum_PaymentType_0 : WideString;        //
   var ReverseSum_PaymentType_1 : WideString;        //
   var ReverseSum_PaymentType_2 : WideString;        //
   var ReverseSum_PaymentType_3 : WideString;        //
   var ReverseSum_PaymentType_4 : WideString;        //
   var ReverseSum_PaymentType_5 : WideString;        //
   var ReverseSum_Foreign : WideString;              //
   var ReverseSum_LocalForeign : WideString          //
 ) : Integer;                                        //


function execute_066_info_Get_InvoiceRange //
 ( myFP: TCFD_BGR;                         //
   var Value_Start : WideString;           //
   var Value_End : WideString;             //
   var Value_Current : WideString          //
 ) : Integer;                              //


function execute_068_info_Get_FreeFMRecords //
 ( myFP: TCFD_BGR;                          //
   var Count_Logical : WideString;          //
   var Count_Total : WideString             //
 ) : Integer;                               //


function execute_068_info_Get_FreeFMRecords_01 //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   var fAnswer : WideString                    //
 ) : Integer;                                  //


function execute_070_info_Get_CashIn_CashOut //
 ( myFP: TCFD_BGR;                           //
   var ErrorCode : WideString;               //
   var CashSum : WideString;                 //
   var ServIn : WideString;                  //
   var ServOut : WideString                  //
 ) : Integer;                                //


function execute_071_info_Print_Diagnostic_0 //
 ( myFP: TCFD_BGR;                           //
   var ErrorCode : WideString                //
 ) : Integer;                                //


function execute_071_info_Print_Diagnostic_1 //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   var ErrorCode : WideString                //
 ) : Integer;                                //


function execute_071_info_PrintInfo_GPRS //
 ( myFP: TCFD_BGR;                       //
   const Option : WideString;            //
   var ErrorCode : WideString            //
 ) : Integer;                            //


function execute_071_info_PrintInfo_TaxTerminal //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   var ErrorCode : WideString                   //
 ) : Integer;                                   //


function execute_071_info_Get_TaxTerminalInfo //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   var ErrorCode : WideString;                //
   var Synhronized : WideString;              //
   var Ìinutes : WideString;                  //
   var NapSellXD : WideString;                //
   var NapSellChN : WideString;               //
   var SellForSend : WideString;              //
   var SellErrDocNumber : WideString;         //
   var SellErrCnt : WideString;               //
   var SellErrCode : WideString;              //
   var ZChN : WideString;                     //
   var ZForSend : WideString;                 //
   var ZErrDocNumber : WideString;            //
   var ZErrCnt : WideString;                  //
   var ZErrCode : WideString;                 //
   var NapLastSentDate : WideString;          //
   var NapLastErr : WideString                //
 ) : Integer;                                 //


function execute_071_info_Get_ModemInfo //
 ( myFP: TCFD_BGR;                      //
   const Option : WideString;           //
   var ErrorCode : WideString;          //
   var SIM : WideString;                //
   var IMSI : WideString;               //
   var isReg : WideString;              //
   var Operator : WideString;           //
   var Signal : WideString              //
 ) : Integer;                           //


function execute_071_info_Get_FlashMemoryInfo //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   var ErrorCode : WideString;                //
   var DeviceID : WideString;                 //
   var VolumeSize : WideString;               //
   var ValidBlocks : WideString;              //
   var BlockSize : WideString                 //
 ) : Integer;                                 //


function execute_074_info_Get_StatusBytes //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var StatusBytes : WideString           //
 ) : Integer;                             //


function execute_076_info_Get_FTransactionStatus //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   var Open : WideString;                        //
   var Items : WideString;                       //
   var Amount : WideString;                      //
   var Tender : WideString                       //
 ) : Integer;                                    //


function execute_079_info_Print_Short_FMReportByDTRange //
 ( myFP: TCFD_BGR;                                      //
   const FromDate : WideString;                         //
   const ToDate : WideString                            //
 ) : Integer;                                           //


function execute_079_info_Print_Short_MonthlyFMReport //
 ( myFP: TCFD_BGR;                                    //
   const StartValue : WideString                      //
 ) : Integer;                                         //


function execute_079_info_Print_Short_YearlyFMReport //
 ( myFP: TCFD_BGR;                                   //
   const StartValue : WideString                     //
 ) : Integer;                                        //


function execute_083_info_Get_DecimalsAndTaxRates //
 ( myFP: TCFD_BGR;                                //
   var Multiplier : WideString;                   //
   var Decimals : WideString;                     //
   var CurrencyName : WideString;                 //
   var EnabledMask : WideString;                  //
   var TaxA : WideString;                         //
   var TaxB : WideString;                         //
   var TaxC : WideString;                         //
   var TaxD : WideString;                         //
   var TaxE : WideString;                         //
   var TaxF : WideString;                         //
   var TaxG : WideString;                         //
   var TaxH : WideString                          //
 ) : Integer;                                     //


function execute_085_info_Get_AdditionalPaymentNames //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var PaymentName : WideString                      //
 ) : Integer;                                        //


function execute_086_info_Get_FMRecord_LastDateTime //
 ( myFP: TCFD_BGR;                                  //
   const Option : WideString;                       //
   var DateTime : WideString                        //
 ) : Integer;                                       //


function execute_086_info_Get_FMRecord_LastDateTime_01 //
 ( myFP: TCFD_BGR;                                     //
   const Option : WideString;                          //
   var Day : WideString;                               //
   var Month : WideString;                             //
   var Year : WideString;                              //
   var Hour : WideString;                              //
   var Minute : WideString;                            //
   var Second : WideString                             //
 ) : Integer;                                          //


function execute_086_info_Get_Registration_DT_Num //
 ( myFP: TCFD_BGR;                                //
   const Option : WideString;                     //
   const Number : WideString;                     //
   var Day : WideString;                          //
   var Month : WideString;                        //
   var Year : WideString;                         //
   var Hour : WideString;                         //
   var Minute : WideString;                       //
   var Second : WideString;                       //
   var Reg_Number : WideString                    //
 ) : Integer;                                     //


function execute_086_info_Get_DeRegistration_DT_Num //
 ( myFP: TCFD_BGR;                                  //
   const Option : WideString;                       //
   const Number : WideString;                       //
   var Day : WideString;                            //
   var Month : WideString;                          //
   var Year : WideString;                           //
   var Hour : WideString;                           //
   var Minute : WideString;                         //
   var Second : WideString;                         //
   var DeReg_Number : WideString                    //
 ) : Integer;                                       //


function execute_086_info_Get_Registration_Count //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   var Reg_Count : WideString                    //
 ) : Integer;                                    //


function execute_086_info_Get_DeRegistration_Count //
 ( myFP: TCFD_BGR;                                 //
   const Option : WideString;                      //
   var DeReg_Count : WideString                    //
 ) : Integer;                                      //


function execute_088_info_Get_DepartmentInfo //
 ( myFP: TCFD_BGR;                           //
   const DepartmentNumber : WideString;      //
   var ErrorCode : WideString;               //
   var TaxGroup : WideString;                //
   var RecSales : WideString;                //
   var RecSum : WideString;                  //
   var TotSales : WideString;                //
   var TotSum : WideString;                  //
   var Line1 : WideString;                   //
   var Line2 : WideString                    //
 ) : Integer;                                //


function execute_088_info_Get_Department_StornoInfo //
 ( myFP: TCFD_BGR;                                  //
   const DepartmentNumber : WideString;             //
   const Storno_Type : WideString;                  //
   var ErrorCode : WideString;                      //
   var TaxGroup : WideString;                       //
   var RecSales : WideString;                       //
   var RecSum : WideString;                         //
   var TotSales : WideString;                       //
   var TotSum : WideString;                         //
   var Line1 : WideString;                          //
   var Line2 : WideString                           //
 ) : Integer;                                       //


function execute_090_info_Get_DiagnosticInfo //
 ( myFP: TCFD_BGR;                           //
   var DeviceName : WideString;              //
   var Firmware : WideString;                //
   var CheckSum : WideString;                //
   var Switches : WideString;                //
   var SerialNumber : WideString;            //
   var FiscalMemoryNumber : WideString       //
 ) : Integer;                                //


function execute_097_info_Get_TaxRates //
 ( myFP: TCFD_BGR;                     //
   var TaxA : WideString;              //
   var TaxB : WideString;              //
   var TaxC : WideString;              //
   var TaxD : WideString;              //
   var TaxE : WideString;              //
   var TaxF : WideString;              //
   var TaxG : WideString;              //
   var TaxH : WideString               //
 ) : Integer;                          //


function execute_099_info_Get_EIK //
 ( myFP: TCFD_BGR;                //
   var EIK_Value : WideString;    //
   var EIK_Name : WideString      //
 ) : Integer;                     //


function execute_103_info_Get_CurrentRecieptInfo //
 ( myFP: TCFD_BGR;                               //
   var ErrorCode : WideString;                   //
   var CanVd : WideString;                       //
   var TaxA : WideString;                        //
   var TaxB : WideString;                        //
   var TaxC : WideString;                        //
   var TaxD : WideString;                        //
   var TaxE : WideString;                        //
   var TaxF : WideString;                        //
   var TaxG : WideString;                        //
   var TaxH : WideString;                        //
   var Inv : WideString;                         //
   var InvNum : WideString;                      //
   var ReceiptType : WideString                  //
 ) : Integer;                                    //


function execute_110_info_Get_AdditionalDailyInfo_11 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var Cash : WideString;                            //
   var Credit : WideString;                          //
   var Debit : WideString;                           //
   var Payment_04 : WideString;                      //
   var Payment_05 : WideString;                      //
   var Payment_06 : WideString;                      //
   var Resrvl1 : WideString;                         //
   var Resrvl2 : WideString;                         //
   var Closure : WideString;                         //
   var Next_FReceiptNumber : WideString              //
 ) : Integer;                                        //


function execute_112_info_Get_OperatorsData //
 ( myFP: TCFD_BGR;                          //
   const Operator : WideString;             //
   var Receipts_Count : WideString;         //
   var Sales_Count : WideString;            //
   var Sales_Sum : WideString;              //
   var Discounts_Count : WideString;        //
   var Discounts_Sum : WideString;          //
   var Surcharges_Count : WideString;       //
   var Surcharges_Sum : WideString;         //
   var Voids_Count : WideString;            //
   var Voids_Sum : WideString;              //
   var OperatorName : WideString;           //
   var OperatorPassword : WideString        //
 ) : Integer;                               //


function execute_112_info_read_OperatorsInfo //
 ( myFP: TCFD_BGR;                           //
   const Operator : WideString;              //
   const Option : WideString;                //
   var ReversalReceipts_Count : WideString;  //
   var CommonReversal_Count : WideString;    //
   var CommonReversal_Sum : WideString;      //
   var STRReturn_Count : WideString;         //
   var STRReturn_Sum : WideString;           //
   var STRError_Count : WideString;          //
   var STRError_Sum : WideString;            //
   var STRTaxbase_Count : WideString;        //
   var STRTaxbase_Sum : WideString;          //
   var OperatorName : WideString;            //
   var OperatorPassword : WideString         //
 ) : Integer;                                //


function execute_113_info_Get_LastDocumentNumber //
 ( myFP: TCFD_BGR;                               //
   var DocumentNumber : WideString               //
 ) : Integer;                                    //


function execute_114_info_Get_ActiveTaxes //
 ( myFP: TCFD_BGR;                        //
   const ClosureNumber : WideString;      //
   const Option : WideString;             //
   var ErrorCode : WideString;            //
   var TaxRecordNumber : WideString;      //
   var DecimalsCount : WideString;        //
   var Enabled : WideString;              //
   var TaxRateA : WideString;             //
   var TaxRateB : WideString;             //
   var TaxRateC : WideString;             //
   var TaxRateD : WideString;             //
   var TaxRateE : WideString;             //
   var TaxRateF : WideString;             //
   var TaxRateG : WideString;             //
   var TaxRateH : WideString;             //
   var DateTime : WideString              //
 ) : Integer;                             //


function execute_114_info_Get_Sums //
 ( myFP: TCFD_BGR;                 //
   const Closure1 : WideString;    //
   const Option : WideString;      //
   const Closure2 : WideString;    //
   var ErrorCode : WideString;     //
   var ClosureNumber : WideString; //
   var ReceiptsCount : WideString; //
   var TotTaxA : WideString;       //
   var TotTaxB : WideString;       //
   var TotTaxC : WideString;       //
   var TotTaxD : WideString;       //
   var TotTaxE : WideString;       //
   var TotTaxF : WideString;       //
   var TotTaxG : WideString;       //
   var TotTaxH : WideString        //
 ) : Integer;                      //


function execute_114_info_Get_NettoSums //
 ( myFP: TCFD_BGR;                      //
   const Closure1 : WideString;         //
   const Option : WideString;           //
   const Closure2 : WideString;         //
   var ErrorCode : WideString;          //
   var ClosureNumber : WideString;      //
   var ReceiptsCount : WideString;      //
   var NettoTaxA : WideString;          //
   var NettoTaxB : WideString;          //
   var NettoTaxC : WideString;          //
   var NettoTaxD : WideString;          //
   var NettoTaxE : WideString;          //
   var NettoTaxF : WideString;          //
   var NettoTaxG : WideString;          //
   var NettoTaxH : WideString           //
 ) : Integer;                           //


function execute_114_info_Get_VATSums //
 ( myFP: TCFD_BGR;                    //
   const Closure1 : WideString;       //
   const Option : WideString;         //
   const Closure2 : WideString;       //
   var ErrorCode : WideString;        //
   var ClosureNumber : WideString;    //
   var ReceiptsCount : WideString;    //
   var VATTaxA : WideString;          //
   var VATTaxB : WideString;          //
   var VATTaxC : WideString;          //
   var VATTaxD : WideString;          //
   var VATTaxE : WideString;          //
   var VATTaxF : WideString;          //
   var VATTaxG : WideString;          //
   var VATTaxH : WideString           //
 ) : Integer;                         //


function execute_114_info_Get_Numbers  //
 ( myFP: TCFD_BGR;                     //
   const Closure1 : WideString;        //
   const Option : WideString;          //
   var ErrorCode : WideString;         //
   var ClosureNumber : WideString;     //
   var TaxRecordNumber : WideString;   //
   var ResetRecordNumber : WideString; //
   var KLENNumber : WideString;        //
   var DateTime : WideString           //
 ) : Integer;                          //


function execute_114_info_Get_TaxRateValues //
 ( myFP: TCFD_BGR;                          //
   const Closure1 : WideString;             //
   const Option : WideString;               //
   var ErrorCode : WideString;              //
   var DecimalsCount : WideString;          //
   var Enabled : WideString;                //
   var TaxRateA : WideString;               //
   var TaxRateB : WideString;               //
   var TaxRateC : WideString;               //
   var TaxRateD : WideString;               //
   var TaxRateE : WideString;               //
   var TaxRateF : WideString;               //
   var TaxRateG : WideString;               //
   var TaxRateH : WideString;               //
   var DateTime : WideString                //
 ) : Integer;                               //


function execute_114_info_Get_ReversalTurnover //
 ( myFP: TCFD_BGR;                             //
   const Closure1 : WideString;                //
   const Option : WideString;                  //
   const Closure2 : WideString;                //
   var ErrorCode : WideString;                 //
   var Closure_Count : WideString;             //
   var TotA : WideString;                      //
   var TotB : WideString;                      //
   var TotC : WideString;                      //
   var TotD : WideString;                      //
   var TotE : WideString;                      //
   var TotF : WideString;                      //
   var TotG : WideString;                      //
   var TotH : WideString                       //
 ) : Integer;                                  //


function execute_114_info_Get_ReversalNetoSums //
 ( myFP: TCFD_BGR;                             //
   const Closure1 : WideString;                //
   const Option : WideString;                  //
   const Closure2 : WideString;                //
   var ErrorCode : WideString;                 //
   var Closure_Count : WideString;             //
   var TotA : WideString;                      //
   var TotB : WideString;                      //
   var TotC : WideString;                      //
   var TotD : WideString;                      //
   var TotE : WideString;                      //
   var TotF : WideString;                      //
   var TotG : WideString;                      //
   var TotH : WideString                       //
 ) : Integer;                                  //


function execute_114_info_Get_ReversalVATSums //
 ( myFP: TCFD_BGR;                            //
   const Closure1 : WideString;               //
   const Option : WideString;                 //
   const Closure2 : WideString;               //
   var ErrorCode : WideString;                //
   var Closure_Count : WideString;            //
   var TotA : WideString;                     //
   var TotB : WideString;                     //
   var TotC : WideString;                     //
   var TotD : WideString;                     //
   var TotE : WideString;                     //
   var TotF : WideString;                     //
   var TotG : WideString;                     //
   var TotH : WideString                      //
 ) : Integer;                                 //


function execute_119_klen_Set_DocsRange_ByDateTime //
 ( myFP: TCFD_BGR;                                 //
   const Subcommand_01 : WideString;               //
   const DocumentType : WideString;                //
   const From_DateTime : WideString;               //
   const To_DateTime : WideString;                 //
   var fAnswer : WideString                        //
 ) : Integer;                                      //


function execute_119_klen_Get_NextTextRow //
 ( myFP: TCFD_BGR;                        //
   const Subcommand_01 : WideString;      //
   var fAnswer : WideString               //
 ) : Integer;                             //


function execute_124_klen_FindRange_ByDateTime //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const Document_Type : WideString;           //
   const From_DateTime : WideString;           //
   const To_DateTime : WideString;             //
   var ErrorCode : WideString;                 //
   var First_DocumentNumber : WideString;      //
   var Last_DocumentNumber : WideString        //
 ) : Integer;                                  //


function execute_124_klen_FindRange_ByZReports //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const Document_Type : WideString;           //
   const StartNumber : WideString;             //
   const EndNumber : WideString;               //
   var ErrorCode : WideString;                 //
   var First_DocumentNumber : WideString;      //
   var Last_DocumentNumber : WideString        //
 ) : Integer;                                  //


function execute_124_klen_Get_Info        //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var ErrorCode : WideString;            //
   var isValid : WideString;              //
   var isCurrent : WideString;            //
   var ID_Number : WideString;            //
   var Klen_Number : WideString;          //
   var Activation_DT : WideString;        //
   var SD_SerialNumber : WideString;      //
   var First_ZReportNumber : WideString;  //
   var Last_ZReportNumber : WideString;   //
   var First_DocumentNumber : WideString; //
   var Last_DocumentNumber : WideString;  //
   var Size_Total : WideString;           //
   var Size_Used : WideString             //
 ) : Integer;                             //


function execute_125_klen_Prepare_Document //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const Input_DocNumber : WideString;     //
   const Input_DocType : WideString;       //
   var ErrorCode : WideString;             //
   var Document_Number : WideString;       //
   var Document_Date : WideString;         //
   var Document_Type : WideString;         //
   var ZReport_Number : WideString         //
 ) : Integer;                              //


function execute_125_klen_Prepare_DocumentInRange //
 ( myFP: TCFD_BGR;                                //
   const Option : WideString;                     //
   const Input_FromDocNumber : WideString;        //
   const Input_DocType : WideString;              //
   const Input_ToDocNumber : WideString;          //
   var ErrorCode : WideString;                    //
   var Document_Number : WideString;              //
   var Document_Date : WideString;                //
   var Document_Type : WideString;                //
   var ZReport_Number : WideString                //
 ) : Integer;                                     //


function execute_125_klen_Get_TextRow //
 ( myFP: TCFD_BGR;                    //
   const Option : WideString;         //
   var fAnswer : WideString           //
 ) : Integer;                         //


function execute_125_klen_Print_Document //
 ( myFP: TCFD_BGR;                       //
   const Option : WideString;            //
   const Input_DocNumber : WideString;   //
   const Input_DocType : WideString;     //
   var ErrorCode : WideString;           //
   var Document_Number : WideString;     //
   var Document_Date : WideString;       //
   var Document_Type : WideString;       //
   var ZReport_Number : WideString       //
 ) : Integer;                            //


function execute_125_klen_Get_SInfo //
 ( myFP: TCFD_BGR;                  //
   const Option : WideString;       //
   var ErrorCode : WideString;      //
   var DataField_01 : WideString;   //
   var DataField_02 : WideString;   //
   var DataField_03 : WideString;   //
   var DataField_04 : WideString;   //
   var DataField_05 : WideString;   //
   var DataField_06 : WideString;   //
   var DataField_07 : WideString;   //
   var DataField_08 : WideString;   //
   var DataField_09 : WideString;   //
   var DataField_10 : WideString;   //
   var DataField_11 : WideString;   //
   var DataField_12 : WideString;   //
   var DataField_13 : WideString;   //
   var DataField_14 : WideString;   //
   var DataField_15 : WideString;   //
   var DataField_16 : WideString;   //
   var DataField_17 : WideString    //
 ) : Integer;                       //


function execute_080_other_Sound_Signal //
 ( myFP: TCFD_BGR;                      //
   const Hz : WideString;               //
   const mSec : WideString              //
 ) : Integer;                           //


function execute_083_service_Set_DecimalsAndTaxRates //
 ( myFP: TCFD_BGR;                                   //
   const inp_Multiplier : WideString;                //
   const inp_Decimals : WideString;                  //
   const inp_CurrencyName : WideString;              //
   const inp_EnabledMask : WideString;               //
   const inp_TaxA : WideString;                      //
   const inp_TaxB : WideString;                      //
   const inp_TaxC : WideString;                      //
   const inp_TaxD : WideString;                      //
   const inp_TaxE : WideString;                      //
   const inp_TaxF : WideString;                      //
   const inp_TaxG : WideString;                      //
   const inp_TaxH : WideString;                      //
   var out_Multiplier : WideString;                  //
   var out_Decimals : WideString;                    //
   var out_CurrencyName : WideString;                //
   var out_EnabledMask : WideString;                 //
   var out_TaxA : WideString;                        //
   var out_TaxB : WideString;                        //
   var out_TaxC : WideString;                        //
   var out_TaxD : WideString;                        //
   var out_TaxE : WideString;                        //
   var out_TaxF : WideString;                        //
   var out_TaxG : WideString;                        //
   var out_TaxH : WideString                         //
 ) : Integer;                                        //


function execute_089_service_Set_ProductionTestArea //
 ( myFP: TCFD_BGR;                                  //
   const Option : WideString;                       //
   var ErrorCode : WideString;                      //
   var FreeRecords : WideString                     //
 ) : Integer;                                       //


implementation

function execute_033_display_Clear
 ( myFP: TCFD_BGR
 ) : Integer; //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('033_display_Clear');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_035_display_Show_LowerLine //
 ( myFP: TCFD_BGR;                          //
   const TextData : WideString              //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('035_display_Show_LowerLine', 'TextData', TextData ) <> 0 then Exit;
        myFP.execute_Command_ByName('035_display_Show_LowerLine');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_047_display_Show_UpperLine //
 ( myFP: TCFD_BGR;                          //
   const TextData : WideString              //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('047_display_Show_UpperLine', 'TextData', TextData ) <> 0 then Exit;
        myFP.execute_Command_ByName('047_display_Show_UpperLine');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_063_display_Show_DateTime
 ( myFP: TCFD_BGR
 ) : Integer; //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('063_display_Show_DateTime');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_100_display_Show_Text //
 ( myFP: TCFD_BGR;                     //
   var TextData : WideString           //
 ) : Integer;                          //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('100_display_Show_Text');
        myFP.get_OutputParam_ByName('100_display_Show_Text', 'TextData',TextData);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_038_receipt_NonFiscal_Open //
 ( myFP: TCFD_BGR;                          //
   var AllReceipt : WideString              //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('038_receipt_NonFiscal_Open');
        myFP.get_OutputParam_ByName('038_receipt_NonFiscal_Open', 'AllReceipt',AllReceipt);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_039_receipt_NonFiscal_Close //
 ( myFP: TCFD_BGR;                           //
   var AllReceipt : WideString               //
 ) : Integer;                                //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('039_receipt_NonFiscal_Close');
        myFP.get_OutputParam_ByName('039_receipt_NonFiscal_Close', 'AllReceipt',AllReceipt);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_042_receipt_NonFiscal_Text //
 ( myFP: TCFD_BGR;                          //
   const InputText : WideString             //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('042_receipt_NonFiscal_Text', 'InputText', InputText ) <> 0 then Exit;
        myFP.execute_Command_ByName('042_receipt_NonFiscal_Text');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_042_receipt_PNonFiscal_Text //
 ( myFP: TCFD_BGR;                           //
   const Height : WideString;                //
   const InputText : WideString              //
 ) : Integer;                                //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('042_receipt_PNonFiscal_Text', 'Height', Height ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('042_receipt_PNonFiscal_Text', 'InputText', InputText ) <> 0 then Exit;
        myFP.execute_Command_ByName('042_receipt_PNonFiscal_Text');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_B01  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B01', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B01', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B01', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B01', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B01', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B01', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B01', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_B01') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B01', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B01', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_B02  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const Storno_UNP : WideString;            //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B02', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B02', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B02', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B02', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B02', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B02', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B02', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B02', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_B02') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B02', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B02', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_B03  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const InvoiceNumber : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B03', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B03', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B03', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B03', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B03', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B03', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B03', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B03', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_B03') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B03', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B03', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_B04  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const InvoiceNumber : WideString;         //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B04', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B04', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B04', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B04', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B04', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B04', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B04', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B04', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B04', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_B04') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B04', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B04', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_B05  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const Storno_UNP : WideString;            //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const InvoiceNumber : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B05', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B05', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B05', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B05', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B05', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B05', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B05', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B05', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B05', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_B05') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B05', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B05', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_B06  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const Storno_UNP : WideString;            //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const InvoiceNumber : WideString;         //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_B06', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_B06') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B06', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_B06', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_Fiscal_Open //
 ( myFP: TCFD_BGR;                       //
   const OperatorNumber : WideString;    //
   const OperatorPassword : WideString;  //
   const UNP : WideString;               //
   const TillNumber : WideString;        //
   var AllReceiptCount : WideString;     //
   var FiscalReceiptCount : WideString   //
 ) : Integer;                            //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_Open', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_Open', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_Open', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_Open', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_Fiscal_Open') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_Fiscal_Open', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_Fiscal_Open', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_FiscalOpen_B01 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B01', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B01', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B01', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_FiscalOpen_B01') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_B01', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_B01', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_FiscalOpen_B03 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const UNP : WideString;                  //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B03', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B03', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B03', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B03', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_FiscalOpen_B03') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_B03', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_B03', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_056_receipt_Fiscal_Close //
 ( myFP: TCFD_BGR;                        //
   var AllReceiptCount : WideString;      //
   var FiscalReceiptCount : WideString    //
 ) : Integer;                             //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('056_receipt_Fiscal_Close') <> 0 then Exit;
        myFP.get_OutputParam_ByName('056_receipt_Fiscal_Close', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('056_receipt_Fiscal_Close', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_Invoice_Open //
 ( myFP: TCFD_BGR;                        //
   const OperatorNumber : WideString;     //
   const OperatorPassword : WideString;   //
   const UNP : WideString;                //
   const TillNumber : WideString;         //
   var AllReceiptCount : WideString;      //
   var FiscalReceiptCount : WideString    //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_Open', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_Open', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_Open', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_Open', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_Invoice_Open') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_Invoice_Open', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_Invoice_Open', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_FiscalOpen_B02 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B02', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B02', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B02', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_FiscalOpen_B02') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_B02', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_B02', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_FiscalOpen_B04 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const UNP : WideString;                  //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B04', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B04', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B04', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_B04', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_FiscalOpen_B04') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_B04', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_B04', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_08 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString                   //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_08', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_08', 'EIKType', EIKType ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_08');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_09 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString                //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_09', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_09', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_09', 'SellerName', SellerName ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_09');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_10 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString              //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_10', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_10', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_10', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_10', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_10');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_11 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString                //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_11', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_11', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_11', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_11', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_11', 'ClientName', ClientName ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_11');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_12 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString                     //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_12', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_12', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_12', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_12', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_12', 'ClientName', ClientName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_12', 'TaxNo', TaxNo ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_12');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_13 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString;                    //
   const Address1 : WideString                  //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_13', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_13', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_13', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_13', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_13', 'ClientName', ClientName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_13', 'TaxNo', TaxNo ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_13', 'Address1', Address1 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_13');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_14 //
 ( myFP: TCFD_BGR;                              //
   const EIK : WideString;                      //
   const EIKType : WideString;                  //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString;                    //
   const Address1 : WideString;                 //
   const Address2 : WideString                  //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_14', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_14', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_14', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_14', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_14', 'ClientName', ClientName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_14', 'TaxNo', TaxNo ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_14', 'Address1', Address1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_14', 'Address2', Address2 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_14');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale  //
 ( myFP: TCFD_BGR;                 //
   const TextRow1 : WideString;    //
   const TextRow2 : WideString;    //
   const TaxGroup : WideString;    //
   const SinglePrice : WideString; //
   const Quantity : WideString     //
 ) : Integer;                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow1 //
 ( myFP: TCFD_BGR;                         //
   const TextRow1 : WideString;            //
   const TaxGroup : WideString;            //
   const SinglePrice : WideString;         //
   const Quantity : WideString             //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow1');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow2 //
 ( myFP: TCFD_BGR;                         //
   const TextRow1 : WideString;            //
   const TextRow2 : WideString;            //
   const TaxGroup : WideString;            //
   const SinglePrice : WideString;         //
   const Quantity : WideString             //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow2');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_Minimum //
 ( myFP: TCFD_BGR;                        //
   const TaxGroup : WideString;           //
   const SinglePrice : WideString         //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_Minimum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_Minimum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_Minimum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_CByPercent //
 ( myFP: TCFD_BGR;                           //
   const TextRow1 : WideString;              //
   const TextRow2 : WideString;              //
   const TaxGroup : WideString;              //
   const SinglePrice : WideString;           //
   const Quantity : WideString;              //
   const Percent : WideString                //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercent', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercent', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercent', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow1CByPercent //
 ( myFP: TCFD_BGR;                                   //
   const TextRow1 : WideString;                      //
   const TaxGroup : WideString;                      //
   const SinglePrice : WideString;                   //
   const Quantity : WideString;                      //
   const Percent : WideString                        //
 ) : Integer;                                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CByPercent', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CByPercent', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow1CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow2CByPercent //
 ( myFP: TCFD_BGR;                                   //
   const TextRow2 : WideString;                      //
   const TaxGroup : WideString;                      //
   const SinglePrice : WideString;                   //
   const Quantity : WideString;                      //
   const Percent : WideString                        //
 ) : Integer;                                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CByPercent', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CByPercent', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow2CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_CByPercentWText //
 ( myFP: TCFD_BGR;                                //
   const TaxGroup : WideString;                   //
   const SinglePrice : WideString;                //
   const Percent : WideString                     //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercentWText', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercentWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercentWText', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_CByPercentWText');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_CBySum //
 ( myFP: TCFD_BGR;                       //
   const TextRow1 : WideString;          //
   const TextRow2 : WideString;          //
   const TaxGroup : WideString;          //
   const SinglePrice : WideString;       //
   const Quantity : WideString;          //
   const Abs : WideString                //
 ) : Integer;                            //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySum', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySum', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow1CBySum //
 ( myFP: TCFD_BGR;                               //
   const TextRow1 : WideString;                  //
   const TaxGroup : WideString;                  //
   const SinglePrice : WideString;               //
   const Quantity : WideString;                  //
   const Abs : WideString                        //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CBySum', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CBySum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow1CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow2CBySum //
 ( myFP: TCFD_BGR;                               //
   const TextRow2 : WideString;                  //
   const TaxGroup : WideString;                  //
   const SinglePrice : WideString;               //
   const Quantity : WideString;                  //
   const Abs : WideString                        //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CBySum', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CBySum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow2CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_CBySumWText //
 ( myFP: TCFD_BGR;                            //
   const TaxGroup : WideString;               //
   const SinglePrice : WideString;            //
   const Quantity : WideString;               //
   const Abs : WideString                     //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySumWText', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySumWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySumWText', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CBySumWText', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_CBySumWText');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale //
 ( myFP: TCFD_BGR;                 //
   const TextRow1 : WideString;    //
   const TextRow2 : WideString;    //
   const Department : WideString;  //
   const SinglePrice : WideString; //
   const Quantity : WideString     //
 ) : Integer;                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow1 //
 ( myFP: TCFD_BGR;                          //
   const TextRow1 : WideString;             //
   const Department : WideString;           //
   const SinglePrice : WideString;          //
   const Quantity : WideString              //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow1');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow2 //
 ( myFP: TCFD_BGR;                          //
   const TextRow2 : WideString;             //
   const Department : WideString;           //
   const SinglePrice : WideString;          //
   const Quantity : WideString              //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow2');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_Minimum //
 ( myFP: TCFD_BGR;                         //
   const Department : WideString;          //
   const SinglePrice : WideString          //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_Minimum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_Minimum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_Minimum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_CByPercent //
 ( myFP: TCFD_BGR;                            //
   const TextRow1 : WideString;               //
   const TextRow2 : WideString;               //
   const Department : WideString;             //
   const SinglePrice : WideString;            //
   const Quantity : WideString;               //
   const Percent : WideString                 //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercent', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercent', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow1CByPercent //
 ( myFP: TCFD_BGR;                                    //
   const TextRow1 : WideString;                       //
   const Department : WideString;                     //
   const SinglePrice : WideString;                    //
   const Quantity : WideString;                       //
   const Percent : WideString                         //
 ) : Integer;                                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CByPercent', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow1CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow2CByPercent //
 ( myFP: TCFD_BGR;                                    //
   const TextRow2 : WideString;                       //
   const Department : WideString;                     //
   const SinglePrice : WideString;                    //
   const Quantity : WideString;                       //
   const Percent : WideString                         //
 ) : Integer;                                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CByPercent', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow2CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_CByPercentWText //
 ( myFP: TCFD_BGR;                                 //
   const Department : WideString;                  //
   const SinglePrice : WideString;                 //
   const Quantity : WideString;                    //
   const Percent : WideString                      //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercentWText', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercentWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercentWText', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CByPercentWText', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_CByPercentWText');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_CBySum //
 ( myFP: TCFD_BGR;                        //
   const TextRow1 : WideString;           //
   const TextRow2 : WideString;           //
   const Department : WideString;         //
   const SinglePrice : WideString;        //
   const Quantity : WideString;           //
   const Abs : WideString                 //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySum', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySum', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow1CBySum //
 ( myFP: TCFD_BGR;                                //
   const TextRow1 : WideString;                   //
   const Department : WideString;                 //
   const SinglePrice : WideString;                //
   const Quantity : WideString;                   //
   const Abs : WideString                         //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CBySum', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow1CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow2CBySum //
 ( myFP: TCFD_BGR;                                //
   const TextRow2 : WideString;                   //
   const Department : WideString;                 //
   const SinglePrice : WideString;                //
   const Quantity : WideString;                   //
   const Abs : WideString                         //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CBySum', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow2CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_CBySumWText //
 ( myFP: TCFD_BGR;                             //
   const Department : WideString;              //
   const SinglePrice : WideString;             //
   const Quantity : WideString;                //
   const Abs : WideString                      //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySumWText', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySumWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySumWText', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_CBySumWText', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_CBySumWText');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_052_receipt_DisplaySale //
 ( myFP: TCFD_BGR;                       //
   const TextRow : WideString;           //
   const TaxGroup : WideString;          //
   const SinglePrice : WideString;       //
   const Quantity : WideString           //
 ) : Integer;                            //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplaySale');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_052_receipt_DisplaySale_CByPercent //
 ( myFP: TCFD_BGR;                                  //
   const TextRow : WideString;                      //
   const TaxGroup : WideString;                     //
   const SinglePrice : WideString;                  //
   const Quantity : WideString;                     //
   const Percent : WideString                       //
 ) : Integer;                                       //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CByPercent', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CByPercent', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplaySale_CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_052_receipt_DisplaySale_CBySum //
 ( myFP: TCFD_BGR;                              //
   const TextRow : WideString;                  //
   const TaxGroup : WideString;                 //
   const SinglePrice : WideString;              //
   const Quantity : WideString;                 //
   const Abs : WideString                       //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CBySum', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CBySum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplaySale_CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_052_receipt_DisplaySale_Minimum //
 ( myFP: TCFD_BGR;                               //
   const TextRow : WideString;                   //
   const TaxGroup : WideString;                  //
   const SinglePrice : WideString                //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_Minimum', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_Minimum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_Minimum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplaySale_Minimum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_052_receipt_DisplayDSale //
 ( myFP: TCFD_BGR;                        //
   const TextRow : WideString;            //
   const Department : WideString;         //
   const SinglePrice : WideString;        //
   const Quantity : WideString            //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplayDSale');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_052_receipt_DisplayDSale_CByPercent //
 ( myFP: TCFD_BGR;                                   //
   const TextRow : WideString;                       //
   const Department : WideString;                    //
   const SinglePrice : WideString;                   //
   const Quantity : WideString;                      //
   const Percent : WideString                        //
 ) : Integer;                                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CByPercent', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplayDSale_CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_052_receipt_DisplayDSale_CBySum //
 ( myFP: TCFD_BGR;                               //
   const TextRow : WideString;                   //
   const Department : WideString;                //
   const SinglePrice : WideString;               //
   const Quantity : WideString;                  //
   const Abs : WideString                        //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CBySum', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplayDSale_CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_052_receipt_DisplayDSale_Minimum //
 ( myFP: TCFD_BGR;                                //
   const TextRow : WideString;                    //
   const Department : WideString;                 //
   const SinglePrice : WideString                 //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_Minimum', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_Minimum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_Minimum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplayDSale_Minimum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLU_Sale //
 ( myFP: TCFD_BGR;                    //
   const Target_PLU : WideString;     //
   const Quantity : WideString        //
 ) : Integer;                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLU_Sale', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLU_Sale', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLU_Sale');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLUSale_CByPercent //
 ( myFP: TCFD_BGR;                              //
   const Target_PLU : WideString;               //
   const Quantity : WideString;                 //
   const Percent : WideString                   //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_CByPercent', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUSale_CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLUSale_CBySum //
 ( myFP: TCFD_BGR;                          //
   const Target_PLU : WideString;           //
   const Quantity : WideString;             //
   const Abs : WideString                   //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_CBySum', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUSale_CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLUDep_Sale //
 ( myFP: TCFD_BGR;                       //
   const Target_PLU : WideString;        //
   const Department : WideString;        //
   const Quantity : WideString           //
 ) : Integer;                            //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUDep_Sale');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLUDep_Sale_CByPercent //
 ( myFP: TCFD_BGR;                                  //
   const Target_PLU : WideString;                   //
   const Department : WideString;                   //
   const Quantity : WideString;                     //
   const Percent : WideString                       //
 ) : Integer;                                       //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_CByPercent', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_CByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUDep_Sale_CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLUDep_Sale_CBySum //
 ( myFP: TCFD_BGR;                              //
   const Target_PLU : WideString;               //
   const Department : WideString;               //
   const Quantity : WideString;                 //
   const Abs : WideString                       //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_CBySum', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_CBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUDep_Sale_CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayPLUSale //
 ( myFP: TCFD_BGR;                          //
   const DChar : WideString;                //
   const Target_PLU : WideString;           //
   const Quantity : WideString              //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayPLUSale');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayPLUSale_CByPercent //
 ( myFP: TCFD_BGR;                                     //
   const DChar : WideString;                           //
   const Target_PLU : WideString;                      //
   const Quantity : WideString;                        //
   const Percent : WideString                          //
 ) : Integer;                                          //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_CByPercent', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_CByPercent', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayPLUSale_CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayPLUSale_CBySum //
 ( myFP: TCFD_BGR;                                 //
   const DChar : WideString;                       //
   const Target_PLU : WideString;                  //
   const Quantity : WideString;                    //
   const Abs : WideString                          //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_CBySum', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_CBySum', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayPLUSale_CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayDepPLU_Sale //
 ( myFP: TCFD_BGR;                              //
   const DChar : WideString;                    //
   const Target_PLU : WideString;               //
   const Department : WideString;               //
   const Quantity : WideString                  //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayDepPLU_Sale');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayDepPLU_Sale_CByPercent //
 ( myFP: TCFD_BGR;                                         //
   const DChar : WideString;                               //
   const Target_PLU : WideString;                          //
   const Department : WideString;                          //
   const Quantity : WideString;                            //
   const Percent : WideString                              //
 ) : Integer;                                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CByPercent', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CByPercent', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayDepPLU_Sale_CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayDepPLU_Sale_CBySum //
 ( myFP: TCFD_BGR;                                     //
   const DChar : WideString;                           //
   const Target_PLU : WideString;                      //
   const Department : WideString;                      //
   const Quantity : WideString;                        //
   const Abs : WideString                              //
 ) : Integer;                                          //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CBySum', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CBySum', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_Sale_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayDepPLU_Sale_CBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_051_receipt_Subtotal //
 ( myFP: TCFD_BGR;                    //
   const ToPrint : WideString;        //
   const ToDisplay : WideString;      //
   var Subtotal : WideString;         //
   var SumTaxGroupA : WideString;     //
   var SumTaxGroupB : WideString;     //
   var SumTaxGroupC : WideString;     //
   var SumTaxGroupD : WideString;     //
   var SumTaxGroupE : WideString;     //
   var SumTaxGroupF : WideString;     //
   var SumTaxGroupG : WideString;     //
   var SumTaxGroupH : WideString      //
 ) : Integer;                         //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('051_receipt_Subtotal', 'Subtotal',Subtotal);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal', 'SumTaxGroupA',SumTaxGroupA);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal', 'SumTaxGroupB',SumTaxGroupB);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal', 'SumTaxGroupC',SumTaxGroupC);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal', 'SumTaxGroupD',SumTaxGroupD);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal', 'SumTaxGroupE',SumTaxGroupE);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal', 'SumTaxGroupF',SumTaxGroupF);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal', 'SumTaxGroupG',SumTaxGroupG);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal', 'SumTaxGroupH',SumTaxGroupH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('051_receipt_Subtotal', 'ToPrint', ToPrint ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('051_receipt_Subtotal', 'ToDisplay', ToDisplay ) <> 0 then Exit;
        if myFP.execute_Command_ByName('051_receipt_Subtotal') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_051_receipt_Subtotal_CByPercent //
 ( myFP: TCFD_BGR;                               //
   const ToPrint : WideString;                   //
   const ToDisplay : WideString;                 //
   const Percent : WideString;                   //
   var Subtotal : WideString;                    //
   var SumTaxGroupA : WideString;                //
   var SumTaxGroupB : WideString;                //
   var SumTaxGroupC : WideString;                //
   var SumTaxGroupD : WideString;                //
   var SumTaxGroupE : WideString;                //
   var SumTaxGroupF : WideString;                //
   var SumTaxGroupG : WideString;                //
   var SumTaxGroupH : WideString                 //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('051_receipt_Subtotal_CByPercent', 'ToPrint', ToPrint ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('051_receipt_Subtotal_CByPercent', 'ToDisplay', ToDisplay ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('051_receipt_Subtotal_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CByPercent', 'Subtotal',Subtotal);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CByPercent', 'SumTaxGroupA',SumTaxGroupA);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CByPercent', 'SumTaxGroupB',SumTaxGroupB);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CByPercent', 'SumTaxGroupC',SumTaxGroupC);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CByPercent', 'SumTaxGroupD',SumTaxGroupD);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CByPercent', 'SumTaxGroupE',SumTaxGroupE);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CByPercent', 'SumTaxGroupF',SumTaxGroupF);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CByPercent', 'SumTaxGroupG',SumTaxGroupG);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CByPercent', 'SumTaxGroupH',SumTaxGroupH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('051_receipt_Subtotal_CByPercent') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_051_receipt_Subtotal_CBySum //
 ( myFP: TCFD_BGR;                           //
   const ToPrint : WideString;               //
   const ToDisplay : WideString;             //
   const Abs : WideString;                   //
   var Subtotal : WideString;                //
   var SumTaxGroupA : WideString;            //
   var SumTaxGroupB : WideString;            //
   var SumTaxGroupC : WideString;            //
   var SumTaxGroupD : WideString;            //
   var SumTaxGroupE : WideString;            //
   var SumTaxGroupF : WideString;            //
   var SumTaxGroupG : WideString;            //
   var SumTaxGroupH : WideString             //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('051_receipt_Subtotal_CBySum', 'ToPrint', ToPrint ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('051_receipt_Subtotal_CBySum', 'ToDisplay', ToDisplay ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('051_receipt_Subtotal_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CBySum', 'Subtotal',Subtotal);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CBySum', 'SumTaxGroupA',SumTaxGroupA);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CBySum', 'SumTaxGroupB',SumTaxGroupB);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CBySum', 'SumTaxGroupC',SumTaxGroupC);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CBySum', 'SumTaxGroupD',SumTaxGroupD);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CBySum', 'SumTaxGroupE',SumTaxGroupE);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CBySum', 'SumTaxGroupF',SumTaxGroupF);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CBySum', 'SumTaxGroupG',SumTaxGroupG);
   myFP.get_OutputParam_ByName('051_receipt_Subtotal_CBySum', 'SumTaxGroupH',SumTaxGroupH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('051_receipt_Subtotal_CBySum') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_Total_PAmount //
 ( myFP: TCFD_BGR;                         //
   const TextRow1 : WideString;            //
   const TextRow2 : WideString;            //
   const PaidMode : WideString;            //
   const InputAmount : WideString;         //
   var deviceCode : WideString;            //
   var outputAmount : WideString           //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmount', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmount', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmount', 'PaidMode', PaidMode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmount', 'InputAmount', InputAmount ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('053_receipt_Total_PAmount') <> 0 then Exit;
        myFP.get_OutputParam_ByName('053_receipt_Total_PAmount', 'deviceCode',deviceCode);
        myFP.get_OutputParam_ByName('053_receipt_Total_PAmount', 'outputAmount',outputAmount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_Total_PAmountTextRow1 //
 ( myFP: TCFD_BGR;                                 //
   const TextRow1 : WideString;                    //
   const PaidMode : WideString;                    //
   const InputAmount : WideString;                 //
   var deviceCode : WideString;                    //
   var outputAmount : WideString                   //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmountTextRow1', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmountTextRow1', 'PaidMode', PaidMode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmountTextRow1', 'InputAmount', InputAmount ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('053_receipt_Total_PAmountTextRow1') <> 0 then Exit;
        myFP.get_OutputParam_ByName('053_receipt_Total_PAmountTextRow1', 'deviceCode',deviceCode);
        myFP.get_OutputParam_ByName('053_receipt_Total_PAmountTextRow1', 'outputAmount',outputAmount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_Total_PAmountTextRow2 //
 ( myFP: TCFD_BGR;                                 //
   const TextRow2 : WideString;                    //
   const PaidMode : WideString;                    //
   const InputAmount : WideString;                 //
   var deviceCode : WideString;                    //
   var outputAmount : WideString                   //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmountTextRow2', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmountTextRow2', 'PaidMode', PaidMode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmountTextRow2', 'InputAmount', InputAmount ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('053_receipt_Total_PAmountTextRow2') <> 0 then Exit;
        myFP.get_OutputParam_ByName('053_receipt_Total_PAmountTextRow2', 'deviceCode',deviceCode);
        myFP.get_OutputParam_ByName('053_receipt_Total_PAmountTextRow2', 'outputAmount',outputAmount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_Total_PAmountWithoutText //
 ( myFP: TCFD_BGR;                                    //
   const PaidMode : WideString;                       //
   const InputAmount : WideString;                    //
   var deviceCode : WideString;                       //
   var outputAmount : WideString                      //
 ) : Integer;                                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmountWithoutText', 'PaidMode', PaidMode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_Total_PAmountWithoutText', 'InputAmount', InputAmount ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('053_receipt_Total_PAmountWithoutText') <> 0 then Exit;
        myFP.get_OutputParam_ByName('053_receipt_Total_PAmountWithoutText', 'deviceCode',deviceCode);
        myFP.get_OutputParam_ByName('053_receipt_Total_PAmountWithoutText', 'outputAmount',outputAmount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_Total //
 ( myFP: TCFD_BGR;                 //
   const TextRow1 : WideString;    //
   const TextRow2 : WideString;    //
   var deviceCode : WideString;    //
   var outputAmount : WideString   //
 ) : Integer;                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_Total', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_Total', 'TextRow2', TextRow2 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('053_receipt_Total') <> 0 then Exit;
        myFP.get_OutputParam_ByName('053_receipt_Total', 'deviceCode',deviceCode);
        myFP.get_OutputParam_ByName('053_receipt_Total', 'outputAmount',outputAmount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_Total_TextRow1 //
 ( myFP: TCFD_BGR;                          //
   const TextRow1 : WideString;             //
   var deviceCode : WideString;             //
   var outputAmount : WideString            //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('053_receipt_Total_TextRow1', 'TextRow1', TextRow1 ) <> 0 then Exit;
        if myFP.execute_Command_ByName('053_receipt_Total_TextRow1') <> 0 then Exit;
        myFP.get_OutputParam_ByName('053_receipt_Total_TextRow1', 'deviceCode',deviceCode);
        myFP.get_OutputParam_ByName('053_receipt_Total_TextRow1', 'outputAmount',outputAmount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_Total_TextRow2 //
 ( myFP: TCFD_BGR;                          //
   const TextRow2 : WideString;             //
   var deviceCode : WideString;             //
   var outputAmount : WideString            //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_Total_TextRow2', 'TextRow2', TextRow2 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('053_receipt_Total_TextRow2') <> 0 then Exit;
        myFP.get_OutputParam_ByName('053_receipt_Total_TextRow2', 'deviceCode',deviceCode);
        myFP.get_OutputParam_ByName('053_receipt_Total_TextRow2', 'outputAmount',outputAmount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_Total_WithoutText //
 ( myFP: TCFD_BGR;                             //
   var deviceCode : WideString;                //
   var outputAmount : WideString               //
 ) : Integer;                                  //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('053_receipt_Total_WithoutText') <> 0 then Exit;
        myFP.get_OutputParam_ByName('053_receipt_Total_WithoutText', 'deviceCode',deviceCode);
        myFP.get_OutputParam_ByName('053_receipt_Total_WithoutText', 'outputAmount',outputAmount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_PinPad_Total //
 ( myFP: TCFD_BGR;                        //
   const TextRow1 : WideString;           //
   const TextRow2 : WideString;           //
   const PaidMode : WideString;           //
   const InputAmount : WideString;        //
   const PinPad_PaidMode : WideString;    //
   var fAnswer : WideString               //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_Total', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_Total', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_Total', 'PaidMode', PaidMode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_Total', 'InputAmount', InputAmount ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_Total', 'PinPad_PaidMode', PinPad_PaidMode ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('053_receipt_PinPad_Total');
        myFP.get_OutputParam_ByName('053_receipt_PinPad_Total', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_PinPad_TotalTextRow1 //
 ( myFP: TCFD_BGR;                                //
   const TextRow1 : WideString;                   //
   const PaidMode : WideString;                   //
   const InputAmount : WideString;                //
   const PinPad_PaidMode : WideString;            //
   var fAnswer : WideString                       //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalTextRow1', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalTextRow1', 'PaidMode', PaidMode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalTextRow1', 'InputAmount', InputAmount ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalTextRow1', 'PinPad_PaidMode', PinPad_PaidMode ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('053_receipt_PinPad_TotalTextRow1');
        myFP.get_OutputParam_ByName('053_receipt_PinPad_TotalTextRow1', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_PinPad_TotalTextRow2 //
 ( myFP: TCFD_BGR;                                //
   const TextRow2 : WideString;                   //
   const PaidMode : WideString;                   //
   const InputAmount : WideString;                //
   const PinPad_PaidMode : WideString;            //
   var fAnswer : WideString                       //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalTextRow2', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalTextRow2', 'PaidMode', PaidMode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalTextRow2', 'InputAmount', InputAmount ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalTextRow2', 'PinPad_PaidMode', PinPad_PaidMode ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('053_receipt_PinPad_TotalTextRow2');
        myFP.get_OutputParam_ByName('053_receipt_PinPad_TotalTextRow2', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_053_receipt_PinPad_TotalWText //
 ( myFP: TCFD_BGR;                             //
   const PaidMode : WideString;                //
   const InputAmount : WideString;             //
   const PinPad_PaidMode : WideString;         //
   var fAnswer : WideString                    //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalWText', 'PaidMode', PaidMode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalWText', 'InputAmount', InputAmount ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('053_receipt_PinPad_TotalWText', 'PinPad_PaidMode', PinPad_PaidMode ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('053_receipt_PinPad_TotalWText');
        myFP.get_OutputParam_ByName('053_receipt_PinPad_TotalWText', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_044_receipt_Paper_Feed //
 ( myFP: TCFD_BGR;                      //
   const LinesCount : WideString        //
 ) : Integer;                           //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('044_receipt_Paper_Feed', 'LinesCount', LinesCount ) <> 0 then Exit;
        myFP.execute_Command_ByName('044_receipt_Paper_Feed');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_054_receipt_Fiscal_Text //
 ( myFP: TCFD_BGR;                       //
   const InputText : WideString          //
 ) : Integer;                            //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('054_receipt_Fiscal_Text', 'InputText', InputText ) <> 0 then Exit;
        myFP.execute_Command_ByName('054_receipt_Fiscal_Text');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_060_receipt_Fiscal_Cancel
 ( myFP: TCFD_BGR
 ) : Integer; //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('060_receipt_Fiscal_Cancel');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_070_receipt_CashIn_CashOut //
 ( myFP: TCFD_BGR;                          //
   const Amount : WideString;               //
   var ErrorCode : WideString;              //
   var CashSum : WideString;                //
   var ServIn : WideString;                 //
   var ServOut : WideString                 //
 ) : Integer;                               //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('070_receipt_CashIn_CashOut', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('070_receipt_CashIn_CashOut', 'CashSum',CashSum);
   myFP.get_OutputParam_ByName('070_receipt_CashIn_CashOut', 'ServIn',ServIn);
   myFP.get_OutputParam_ByName('070_receipt_CashIn_CashOut', 'ServOut',ServOut);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('070_receipt_CashIn_CashOut', 'Amount', Amount ) <> 0 then Exit;
        if myFP.execute_Command_ByName('070_receipt_CashIn_CashOut') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_092_receipt_Separating_Line //
 ( myFP: TCFD_BGR;                           //
   const LineType : WideString               //
 ) : Integer;                                //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('092_receipt_Separating_Line', 'LineType', LineType ) <> 0 then Exit;
        myFP.execute_Command_ByName('092_receipt_Separating_Line');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_103_receipt_Current_Info //
 ( myFP: TCFD_BGR;                        //
   var ErrorCode : WideString;            //
   var CanVd : WideString;                //
   var TaxA : WideString;                 //
   var TaxB : WideString;                 //
   var TaxC : WideString;                 //
   var TaxD : WideString;                 //
   var TaxE : WideString;                 //
   var TaxF : WideString;                 //
   var TaxG : WideString;                 //
   var TaxH : WideString;                 //
   var Inv : WideString;                  //
   var InvNumber : WideString;            //
   var fReceiptType : WideString          //
 ) : Integer;                             //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'CanVd',CanVd);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'TaxA',TaxA);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'TaxB',TaxB);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'TaxC',TaxC);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'TaxD',TaxD);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'TaxE',TaxE);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'TaxF',TaxF);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'TaxG',TaxG);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'TaxH',TaxH);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'Inv',Inv);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'InvNumber',InvNumber);
   myFP.get_OutputParam_ByName('103_receipt_Current_Info', 'fReceiptType',fReceiptType);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('103_receipt_Current_Info') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_106_receipt_Drawer_KickOut //
 ( myFP: TCFD_BGR;                          //
   const mSec : WideString                  //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('106_receipt_Drawer_KickOut', 'mSec', mSec ) <> 0 then Exit;
        myFP.execute_Command_ByName('106_receipt_Drawer_KickOut');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_109_receipt_Print_Duplicate //
 ( myFP: TCFD_BGR;                           //
   const Count : WideString                  //
 ) : Integer;                                //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('109_receipt_Print_Duplicate', 'Count', Count ) <> 0 then Exit;
        myFP.execute_Command_ByName('109_receipt_Print_Duplicate');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_069_report_DailyClosure_01 //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   var Closure : WideString;                //
   var FMTotal : WideString;                //
   var TotalSum_A : WideString;             //
   var TotalSum_B : WideString;             //
   var TotalSum_C : WideString;             //
   var TotalSum_D : WideString;             //
   var TotalSum_E : WideString;             //
   var TotalSum_F : WideString;             //
   var TotalSum_G : WideString;             //
   var TotalSum_H : WideString              //
 ) : Integer;                               //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'Closure',Closure);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'FMTotal',FMTotal);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'TotalSum_A',TotalSum_A);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'TotalSum_B',TotalSum_B);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'TotalSum_C',TotalSum_C);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'TotalSum_D',TotalSum_D);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'TotalSum_E',TotalSum_E);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'TotalSum_F',TotalSum_F);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'TotalSum_G',TotalSum_G);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_01', 'TotalSum_H',TotalSum_H);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('069_report_DailyClosure_01', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('069_report_DailyClosure_01') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_073_report_FMByNumRange //
 ( myFP: TCFD_BGR;                       //
   const StartNumber : WideString;       //
   const EndNumber : WideString          //
 ) : Integer;                            //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('073_report_FMByNumRange', 'StartNumber', StartNumber ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('073_report_FMByNumRange', 'EndNumber', EndNumber ) <> 0 then Exit;
        myFP.execute_Command_ByName('073_report_FMByNumRange');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_079_report_FMByDateRange_Short //
 ( myFP: TCFD_BGR;                              //
   const FromDate : WideString;                 //
   const ToDate : WideString                    //
 ) : Integer;                                   //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('079_report_FMByDateRange_Short', 'FromDate', FromDate ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('079_report_FMByDateRange_Short', 'ToDate', ToDate ) <> 0 then Exit;
        myFP.execute_Command_ByName('079_report_FMByDateRange_Short');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_094_report_FMByDateRange //
 ( myFP: TCFD_BGR;                        //
   const FromDate : WideString;           //
   const ToDate : WideString              //
 ) : Integer;                             //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('094_report_FMByDateRange', 'FromDate', FromDate ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('094_report_FMByDateRange', 'ToDate', ToDate ) <> 0 then Exit;
        myFP.execute_Command_ByName('094_report_FMByDateRange');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_095_report_FMByNumRange_Short //
 ( myFP: TCFD_BGR;                             //
   const StartNumber : WideString;             //
   const EndNumber : WideString                //
 ) : Integer;                                  //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('095_report_FMByNumRange_Short', 'StartNumber', StartNumber ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('095_report_FMByNumRange_Short', 'EndNumber', EndNumber ) <> 0 then Exit;
        myFP.execute_Command_ByName('095_report_FMByNumRange_Short');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_105_report_Operators
 ( myFP: TCFD_BGR
 ) : Integer; //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('105_report_Operators');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_108_report_ExtDailyClosure_01 //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   var Closure : WideString;                   //
   var FMTotal : WideString;                   //
   var TotalSum_A : WideString;                //
   var TotalSum_B : WideString;                //
   var TotalSum_C : WideString;                //
   var TotalSum_D : WideString;                //
   var TotalSum_E : WideString;                //
   var TotalSum_F : WideString;                //
   var TotalSum_G : WideString;                //
   var TotalSum_H : WideString                 //
 ) : Integer;                                  //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'Closure',Closure);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'FMTotal',FMTotal);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'TotalSum_A',TotalSum_A);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'TotalSum_B',TotalSum_B);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'TotalSum_C',TotalSum_C);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'TotalSum_D',TotalSum_D);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'TotalSum_E',TotalSum_E);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'TotalSum_F',TotalSum_F);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'TotalSum_G',TotalSum_G);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_01', 'TotalSum_H',TotalSum_H);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('108_report_ExtDailyClosure_01', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('108_report_ExtDailyClosure_01') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_111_report_Items //
 ( myFP: TCFD_BGR;                //
   const Option : WideString;     //
   var ErrorCode : WideString     //
 ) : Integer;                     //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('111_report_Items', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('111_report_Items');
        myFP.get_OutputParam_ByName('111_report_Items', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_111_report_Items_InRange //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   const StartPLU : WideString;           //
   const EndPLU : WideString;             //
   var ErrorCode : WideString             //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('111_report_Items_InRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('111_report_Items_InRange', 'StartPLU', StartPLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('111_report_Items_InRange', 'EndPLU', EndPLU ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('111_report_Items_InRange');
        myFP.get_OutputParam_ByName('111_report_Items_InRange', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_111_report_Items_InRangeByGroup //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const StartPLU : WideString;                  //
   const EndPLU : WideString;                    //
   const Group : WideString;                     //
   var ErrorCode : WideString                    //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('111_report_Items_InRangeByGroup', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('111_report_Items_InRangeByGroup', 'StartPLU', StartPLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('111_report_Items_InRangeByGroup', 'EndPLU', EndPLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('111_report_Items_InRangeByGroup', 'Group', Group ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('111_report_Items_InRangeByGroup');
        myFP.get_OutputParam_ByName('111_report_Items_InRangeByGroup', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_117_report_DailyClosureByDepartments_01 //
 ( myFP: TCFD_BGR;                                       //
   const Option : WideString;                            //
   var Closure : WideString;                             //
   var FMTotal : WideString;                             //
   var TotalSum_A : WideString;                          //
   var TotalSum_B : WideString;                          //
   var TotalSum_C : WideString;                          //
   var TotalSum_D : WideString;                          //
   var TotalSum_E : WideString;                          //
   var TotalSum_F : WideString;                          //
   var TotalSum_G : WideString;                          //
   var TotalSum_H : WideString                           //
 ) : Integer;                                            //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'Closure',Closure);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'FMTotal',FMTotal);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'TotalSum_A',TotalSum_A);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'TotalSum_B',TotalSum_B);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'TotalSum_C',TotalSum_C);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'TotalSum_D',TotalSum_D);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'TotalSum_E',TotalSum_E);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'TotalSum_F',TotalSum_F);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'TotalSum_G',TotalSum_G);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_01', 'TotalSum_H',TotalSum_H);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('117_report_DailyClosureByDepartments_01', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('117_report_DailyClosureByDepartments_01') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_118_report_DailyClosureByDepartmentsAndItems_01 //
 ( myFP: TCFD_BGR;                                               //
   const Option : WideString;                                    //
   var Closure : WideString;                                     //
   var FMTotal : WideString;                                     //
   var TotalSum_A : WideString;                                  //
   var TotalSum_B : WideString;                                  //
   var TotalSum_C : WideString;                                  //
   var TotalSum_D : WideString;                                  //
   var TotalSum_E : WideString;                                  //
   var TotalSum_F : WideString;                                  //
   var TotalSum_G : WideString;                                  //
   var TotalSum_H : WideString                                   //
 ) : Integer;                                                    //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'Closure',Closure);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'FMTotal',FMTotal);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'TotalSum_A',TotalSum_A);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'TotalSum_B',TotalSum_B);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'TotalSum_C',TotalSum_C);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'TotalSum_D',TotalSum_D);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'TotalSum_E',TotalSum_E);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'TotalSum_F',TotalSum_F);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'TotalSum_G',TotalSum_G);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'TotalSum_H',TotalSum_H);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_01', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('118_report_DailyClosureByDepartmentsAndItems_01') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_ItemsInformation //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   var ErrorCode : WideString;                  //
   var Total : WideString;                      //
   var Prog : WideString;                       //
   var Len : WideString                         //
 ) : Integer;                                   //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('107_items_Get_ItemsInformation', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('107_items_Get_ItemsInformation', 'Total',Total);
   myFP.get_OutputParam_ByName('107_items_Get_ItemsInformation', 'Prog',Prog);
   myFP.get_OutputParam_ByName('107_items_Get_ItemsInformation', 'Len',Len);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_ItemsInformation', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('107_items_Get_ItemsInformation') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Set_Item //
 ( myFP: TCFD_BGR;                  //
   const Option : WideString;       //
   const TaxGroup : WideString;     //
   const Target_PLU : WideString;   //
   const Group : WideString;        //
   const SinglePrice : WideString;  //
   const Quantity : WideString;     //
   const ItemName : WideString;     //
   var ErrorCode : WideString       //
 ) : Integer;                       //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('107_items_Set_Item', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_Item', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_Item', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_Item', 'Group', Group ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_Item', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_Item', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_Item', 'ItemName', ItemName ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('107_items_Set_Item');
        myFP.get_OutputParam_ByName('107_items_Set_Item', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Set_ItemWithReplace //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const TaxGroup : WideString;                //
   const Target_PLU : WideString;              //
   const Group : WideString;                   //
   const SinglePrice : WideString;             //
   const Replace : WideString;                 //
   const Quantity : WideString;                //
   const ItemName : WideString;                //
   var ErrorCode : WideString                  //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('107_items_Set_ItemWithReplace', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_ItemWithReplace', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_ItemWithReplace', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_ItemWithReplace', 'Group', Group ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_ItemWithReplace', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_ItemWithReplace', 'Replace', Replace ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_ItemWithReplace', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_ItemWithReplace', 'ItemName', ItemName ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('107_items_Set_ItemWithReplace');
        myFP.get_OutputParam_ByName('107_items_Set_ItemWithReplace', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Set_ItemQuantity //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Target_PLU : WideString;           //
   const Quantity : WideString;             //
   var ErrorCode : WideString               //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('107_items_Set_ItemQuantity', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_ItemQuantity', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Set_ItemQuantity', 'Quantity', Quantity ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('107_items_Set_ItemQuantity');
        myFP.get_OutputParam_ByName('107_items_Set_ItemQuantity', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Delete_Item //
 ( myFP: TCFD_BGR;                     //
   const Option : WideString;          //
   const Target_PLU : WideString;      //
   var ErrorCode : WideString          //
 ) : Integer;                          //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Delete_Item', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Delete_Item', 'Target_PLU', Target_PLU ) <> 0 then Exit;
        myFP.execute_Command_ByName('107_items_Delete_Item');
        myFP.get_OutputParam_ByName('107_items_Delete_Item', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Delete_ItemsInRange //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const StartPLU : WideString;                //
   const EndPLU : WideString;                  //
   var ErrorCode : WideString                  //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('107_items_Delete_ItemsInRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Delete_ItemsInRange', 'StartPLU', StartPLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('107_items_Delete_ItemsInRange', 'EndPLU', EndPLU ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('107_items_Delete_ItemsInRange');
        myFP.get_OutputParam_ByName('107_items_Delete_ItemsInRange', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Delete_All_Items //
 ( myFP: TCFD_BGR;                          //
   const D_Option : WideString;             //
   const A_Option : WideString;             //
   var ErrorCode : WideString               //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Delete_All_Items', 'D_Option', D_Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Delete_All_Items', 'A_Option', A_Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('107_items_Delete_All_Items');
        myFP.get_OutputParam_ByName('107_items_Delete_All_Items', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_Item //
 ( myFP: TCFD_BGR;                  //
   const Option : WideString;       //
   const Target_PLU : WideString;   //
   var ErrorCode : WideString;      //
   var PLU : WideString;            //
   var TaxGroup : WideString;       //
   var Group : WideString;          //
   var SinglePrice : WideString;    //
   var Total : WideString;          //
   var Sold : WideString;           //
   var Available : WideString;      //
   var ItemName : WideString        //
 ) : Integer;                       //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('107_items_Get_Item', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('107_items_Get_Item', 'PLU',PLU);
   myFP.get_OutputParam_ByName('107_items_Get_Item', 'TaxGroup',TaxGroup);
   myFP.get_OutputParam_ByName('107_items_Get_Item', 'Group',Group);
   myFP.get_OutputParam_ByName('107_items_Get_Item', 'SinglePrice',SinglePrice);
   myFP.get_OutputParam_ByName('107_items_Get_Item', 'Total',Total);
   myFP.get_OutputParam_ByName('107_items_Get_Item', 'Sold',Sold);
   myFP.get_OutputParam_ByName('107_items_Get_Item', 'Available',Available);
   myFP.get_OutputParam_ByName('107_items_Get_Item', 'ItemName',ItemName);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_Item', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_Item', 'Target_PLU', Target_PLU ) <> 0 then Exit;
        if myFP.execute_Command_ByName('107_items_Get_Item') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_FirstFoundItem //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Target_PLU : WideString;             //
   var ErrorCode : WideString;                //
   var PLU : WideString;                      //
   var TaxGroup : WideString;                 //
   var Group : WideString;                    //
   var SinglePrice : WideString;              //
   var Total : WideString;                    //
   var Sold : WideString;                     //
   var Available : WideString;                //
   var ItemName : WideString                  //
 ) : Integer;                                 //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('107_items_Get_FirstFoundItem', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('107_items_Get_FirstFoundItem', 'PLU',PLU);
   myFP.get_OutputParam_ByName('107_items_Get_FirstFoundItem', 'TaxGroup',TaxGroup);
   myFP.get_OutputParam_ByName('107_items_Get_FirstFoundItem', 'Group',Group);
   myFP.get_OutputParam_ByName('107_items_Get_FirstFoundItem', 'SinglePrice',SinglePrice);
   myFP.get_OutputParam_ByName('107_items_Get_FirstFoundItem', 'Total',Total);
   myFP.get_OutputParam_ByName('107_items_Get_FirstFoundItem', 'Sold',Sold);
   myFP.get_OutputParam_ByName('107_items_Get_FirstFoundItem', 'Available',Available);
   myFP.get_OutputParam_ByName('107_items_Get_FirstFoundItem', 'ItemName',ItemName);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_FirstFoundItem', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_FirstFoundItem', 'Target_PLU', Target_PLU ) <> 0 then Exit;
        if myFP.execute_Command_ByName('107_items_Get_FirstFoundItem') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_LastFoundItem //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   const Target_PLU : WideString;            //
   var ErrorCode : WideString;               //
   var PLU : WideString;                     //
   var TaxGroup : WideString;                //
   var Group : WideString;                   //
   var SinglePrice : WideString;             //
   var Total : WideString;                   //
   var Sold : WideString;                    //
   var Available : WideString;               //
   var ItemName : WideString                 //
 ) : Integer;                                //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('107_items_Get_LastFoundItem', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('107_items_Get_LastFoundItem', 'PLU',PLU);
   myFP.get_OutputParam_ByName('107_items_Get_LastFoundItem', 'TaxGroup',TaxGroup);
   myFP.get_OutputParam_ByName('107_items_Get_LastFoundItem', 'Group',Group);
   myFP.get_OutputParam_ByName('107_items_Get_LastFoundItem', 'SinglePrice',SinglePrice);
   myFP.get_OutputParam_ByName('107_items_Get_LastFoundItem', 'Total',Total);
   myFP.get_OutputParam_ByName('107_items_Get_LastFoundItem', 'Sold',Sold);
   myFP.get_OutputParam_ByName('107_items_Get_LastFoundItem', 'Available',Available);
   myFP.get_OutputParam_ByName('107_items_Get_LastFoundItem', 'ItemName',ItemName);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_LastFoundItem', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_LastFoundItem', 'Target_PLU', Target_PLU ) <> 0 then Exit;
        if myFP.execute_Command_ByName('107_items_Get_LastFoundItem') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_NextItem //
 ( myFP: TCFD_BGR;                      //
   const Option : WideString;           //
   var ErrorCode : WideString;          //
   var PLU : WideString;                //
   var TaxGroup : WideString;           //
   var Group : WideString;              //
   var SinglePrice : WideString;        //
   var Total : WideString;              //
   var Sold : WideString;               //
   var Available : WideString;          //
   var ItemName : WideString            //
 ) : Integer;                           //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('107_items_Get_NextItem', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('107_items_Get_NextItem', 'PLU',PLU);
   myFP.get_OutputParam_ByName('107_items_Get_NextItem', 'TaxGroup',TaxGroup);
   myFP.get_OutputParam_ByName('107_items_Get_NextItem', 'Group',Group);
   myFP.get_OutputParam_ByName('107_items_Get_NextItem', 'SinglePrice',SinglePrice);
   myFP.get_OutputParam_ByName('107_items_Get_NextItem', 'Total',Total);
   myFP.get_OutputParam_ByName('107_items_Get_NextItem', 'Sold',Sold);
   myFP.get_OutputParam_ByName('107_items_Get_NextItem', 'Available',Available);
   myFP.get_OutputParam_ByName('107_items_Get_NextItem', 'ItemName',ItemName);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_NextItem', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('107_items_Get_NextItem') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_FirstSoldItem //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   const Target_PLU : WideString;            //
   var ErrorCode : WideString;               //
   var PLU : WideString;                     //
   var TaxGroup : WideString;                //
   var Group : WideString;                   //
   var SinglePrice : WideString;             //
   var Total : WideString;                   //
   var Sold : WideString;                    //
   var Available : WideString;               //
   var ItemName : WideString                 //
 ) : Integer;                                //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('107_items_Get_FirstSoldItem', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('107_items_Get_FirstSoldItem', 'PLU',PLU);
   myFP.get_OutputParam_ByName('107_items_Get_FirstSoldItem', 'TaxGroup',TaxGroup);
   myFP.get_OutputParam_ByName('107_items_Get_FirstSoldItem', 'Group',Group);
   myFP.get_OutputParam_ByName('107_items_Get_FirstSoldItem', 'SinglePrice',SinglePrice);
   myFP.get_OutputParam_ByName('107_items_Get_FirstSoldItem', 'Total',Total);
   myFP.get_OutputParam_ByName('107_items_Get_FirstSoldItem', 'Sold',Sold);
   myFP.get_OutputParam_ByName('107_items_Get_FirstSoldItem', 'Available',Available);
   myFP.get_OutputParam_ByName('107_items_Get_FirstSoldItem', 'ItemName',ItemName);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_FirstSoldItem', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_FirstSoldItem', 'Target_PLU', Target_PLU ) <> 0 then Exit;
        if myFP.execute_Command_ByName('107_items_Get_FirstSoldItem') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_LastSoldItem //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Target_PLU : WideString;           //
   var ErrorCode : WideString;              //
   var PLU : WideString;                    //
   var TaxGroup : WideString;               //
   var Group : WideString;                  //
   var SinglePrice : WideString;            //
   var Total : WideString;                  //
   var Sold : WideString;                   //
   var Available : WideString;              //
   var ItemName : WideString                //
 ) : Integer;                               //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('107_items_Get_LastSoldItem', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('107_items_Get_LastSoldItem', 'PLU',PLU);
   myFP.get_OutputParam_ByName('107_items_Get_LastSoldItem', 'TaxGroup',TaxGroup);
   myFP.get_OutputParam_ByName('107_items_Get_LastSoldItem', 'Group',Group);
   myFP.get_OutputParam_ByName('107_items_Get_LastSoldItem', 'SinglePrice',SinglePrice);
   myFP.get_OutputParam_ByName('107_items_Get_LastSoldItem', 'Total',Total);
   myFP.get_OutputParam_ByName('107_items_Get_LastSoldItem', 'Sold',Sold);
   myFP.get_OutputParam_ByName('107_items_Get_LastSoldItem', 'Available',Available);
   myFP.get_OutputParam_ByName('107_items_Get_LastSoldItem', 'ItemName',ItemName);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_LastSoldItem', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_LastSoldItem', 'Target_PLU', Target_PLU ) <> 0 then Exit;
        if myFP.execute_Command_ByName('107_items_Get_LastSoldItem') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_NextSoldItem //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Target_PLU : WideString;           //
   var ErrorCode : WideString;              //
   var PLU : WideString;                    //
   var TaxGroup : WideString;               //
   var Group : WideString;                  //
   var SinglePrice : WideString;            //
   var Total : WideString;                  //
   var Sold : WideString;                   //
   var Available : WideString;              //
   var ItemName : WideString                //
 ) : Integer;                               //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('107_items_Get_NextSoldItem', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('107_items_Get_NextSoldItem', 'PLU',PLU);
   myFP.get_OutputParam_ByName('107_items_Get_NextSoldItem', 'TaxGroup',TaxGroup);
   myFP.get_OutputParam_ByName('107_items_Get_NextSoldItem', 'Group',Group);
   myFP.get_OutputParam_ByName('107_items_Get_NextSoldItem', 'SinglePrice',SinglePrice);
   myFP.get_OutputParam_ByName('107_items_Get_NextSoldItem', 'Total',Total);
   myFP.get_OutputParam_ByName('107_items_Get_NextSoldItem', 'Sold',Sold);
   myFP.get_OutputParam_ByName('107_items_Get_NextSoldItem', 'Available',Available);
   myFP.get_OutputParam_ByName('107_items_Get_NextSoldItem', 'ItemName',ItemName);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_NextSoldItem', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_NextSoldItem', 'Target_PLU', Target_PLU ) <> 0 then Exit;
        if myFP.execute_Command_ByName('107_items_Get_NextSoldItem') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_FirstNotProgrammedItem //
 ( myFP: TCFD_BGR;                                    //
   const Option : WideString;                         //
   const Target_PLU : WideString;                     //
   var PLU : WideString                               //
 ) : Integer;                                         //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_FirstNotProgrammedItem', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_FirstNotProgrammedItem', 'Target_PLU', Target_PLU ) <> 0 then Exit;
        myFP.execute_Command_ByName('107_items_Get_FirstNotProgrammedItem');
        myFP.get_OutputParam_ByName('107_items_Get_FirstNotProgrammedItem', 'PLU',PLU);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_107_items_Get_LastNotProgrammedItem //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   const Target_PLU : WideString;                    //
   var PLU : WideString                              //
 ) : Integer;                                        //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_LastNotProgrammedItem', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('107_items_Get_LastNotProgrammedItem', 'Target_PLU', Target_PLU ) <> 0 then Exit;
        myFP.execute_Command_ByName('107_items_Get_LastNotProgrammedItem');
        myFP.get_OutputParam_ByName('107_items_Get_LastNotProgrammedItem', 'PLU',PLU);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_140_clients_Set_ClientData //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const EIK_Value : WideString;            //
   const EIK_Type : WideString;             //
   const Receiver : WideString;             //
   const Client : WideString;               //
   const TaxNo : WideString;                //
   const Address_1 : WideString;            //
   const Address_2 : WideString;            //
   var ErrorCode : WideString               //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('140_clients_Set_ClientData', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('140_clients_Set_ClientData', 'EIK_Value', EIK_Value ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('140_clients_Set_ClientData', 'EIK_Type', EIK_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('140_clients_Set_ClientData', 'Receiver', Receiver ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('140_clients_Set_ClientData', 'Client', Client ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('140_clients_Set_ClientData', 'TaxNo', TaxNo ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('140_clients_Set_ClientData', 'Address_1', Address_1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('140_clients_Set_ClientData', 'Address_2', Address_2 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('140_clients_Set_ClientData');
        myFP.get_OutputParam_ByName('140_clients_Set_ClientData', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_140_clients_Del_ClientData //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const EIK_Value : WideString;            //
   var ErrorCode : WideString               //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('140_clients_Del_ClientData', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('140_clients_Del_ClientData', 'EIK_Value', EIK_Value ) <> 0 then Exit;
        myFP.execute_Command_ByName('140_clients_Del_ClientData');
        myFP.get_OutputParam_ByName('140_clients_Del_ClientData', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_140_clients_Get_ClientData //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const EIK_Value : WideString;            //
   var Value : WideString;                  //
   var EIK_Type : WideString;               //
   var Receiver : WideString;               //
   var Client : WideString;                 //
   var TaxNo : WideString;                  //
   var Address_1 : WideString;              //
   var Address_2 : WideString               //
 ) : Integer;                               //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('140_clients_Get_ClientData', 'Value',Value);
   myFP.get_OutputParam_ByName('140_clients_Get_ClientData', 'EIK_Type',EIK_Type);
   myFP.get_OutputParam_ByName('140_clients_Get_ClientData', 'Receiver',Receiver);
   myFP.get_OutputParam_ByName('140_clients_Get_ClientData', 'Client',Client);
   myFP.get_OutputParam_ByName('140_clients_Get_ClientData', 'TaxNo',TaxNo);
   myFP.get_OutputParam_ByName('140_clients_Get_ClientData', 'Address_1',Address_1);
   myFP.get_OutputParam_ByName('140_clients_Get_ClientData', 'Address_2',Address_2);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('140_clients_Get_ClientData', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('140_clients_Get_ClientData', 'EIK_Value', EIK_Value ) <> 0 then Exit;
        if myFP.execute_Command_ByName('140_clients_Get_ClientData') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_140_clients_Set_SellerName //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Seller : WideString;               //
   var ErrorCode : WideString               //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('140_clients_Set_SellerName', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('140_clients_Set_SellerName', 'Seller', Seller ) <> 0 then Exit;
        myFP.execute_Command_ByName('140_clients_Set_SellerName');
        myFP.get_OutputParam_ByName('140_clients_Set_SellerName', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_140_clients_Get_SellerName //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Seller : WideString                //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('140_clients_Get_SellerName', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('140_clients_Get_SellerName', 'Seller', Seller ) <> 0 then Exit;
        myFP.execute_Command_ByName('140_clients_Get_SellerName');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_140_clients_Get_FirstClientData //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   var Value : WideString;                       //
   var EIK_Type : WideString;                    //
   var Receiver : WideString;                    //
   var Client : WideString;                      //
   var TaxNo : WideString;                       //
   var Address_1 : WideString;                   //
   var Address_2 : WideString                    //
 ) : Integer;                                    //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('140_clients_Get_FirstClientData', 'Value',Value);
   myFP.get_OutputParam_ByName('140_clients_Get_FirstClientData', 'EIK_Type',EIK_Type);
   myFP.get_OutputParam_ByName('140_clients_Get_FirstClientData', 'Receiver',Receiver);
   myFP.get_OutputParam_ByName('140_clients_Get_FirstClientData', 'Client',Client);
   myFP.get_OutputParam_ByName('140_clients_Get_FirstClientData', 'TaxNo',TaxNo);
   myFP.get_OutputParam_ByName('140_clients_Get_FirstClientData', 'Address_1',Address_1);
   myFP.get_OutputParam_ByName('140_clients_Get_FirstClientData', 'Address_2',Address_2);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('140_clients_Get_FirstClientData', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('140_clients_Get_FirstClientData') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_140_clients_Get_NextClientData //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   var Value : WideString;                      //
   var EIK_Type : WideString;                   //
   var Receiver : WideString;                   //
   var Client : WideString;                     //
   var TaxNo : WideString;                      //
   var Address_1 : WideString;                  //
   var Address_2 : WideString                   //
 ) : Integer;                                   //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('140_clients_Get_NextClientData', 'Value',Value);
   myFP.get_OutputParam_ByName('140_clients_Get_NextClientData', 'EIK_Type',EIK_Type);
   myFP.get_OutputParam_ByName('140_clients_Get_NextClientData', 'Receiver',Receiver);
   myFP.get_OutputParam_ByName('140_clients_Get_NextClientData', 'Client',Client);
   myFP.get_OutputParam_ByName('140_clients_Get_NextClientData', 'TaxNo',TaxNo);
   myFP.get_OutputParam_ByName('140_clients_Get_NextClientData', 'Address_1',Address_1);
   myFP.get_OutputParam_ByName('140_clients_Get_NextClientData', 'Address_2',Address_2);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('140_clients_Get_NextClientData', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('140_clients_Get_NextClientData') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_140_clients_Del_AllClientData //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   var ErrorCode : WideString                  //
 ) : Integer;                                  //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('140_clients_Del_AllClientData', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('140_clients_Del_AllClientData');
        myFP.get_OutputParam_ByName('140_clients_Del_AllClientData', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_HeaderLine //
 ( myFP: TCFD_BGR;                         //
   const Item : WideString;                //
   const Value : WideString                //
 ) : Integer;                              //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_HeaderLine', 'Item', Item ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_HeaderLine', 'Value', Value ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_HeaderLine');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_FooterLine //
 ( myFP: TCFD_BGR;                         //
   const Item : WideString;                //
   const Value : WideString                //
 ) : Integer;                              //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_FooterLine', 'Item', Item ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_FooterLine', 'Value', Value ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_FooterLine');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_AutoFormat //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const Off_On : WideString               //
 ) : Integer;                              //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_AutoFormat', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_AutoFormat', 'Off_On', Off_On ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_AutoFormat');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_PrintDensity //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   const Value : WideString                  //
 ) : Integer;                                //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_PrintDensity', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_PrintDensity', 'Value', Value ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_PrintDensity');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_enable_EUR //
 ( myFP: TCFD_BGR;                     //
   const Option : WideString;          //
   const On : WideString;              //
   const Rate : WideString             //
 ) : Integer;                          //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('043_config_enable_EUR', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('043_config_enable_EUR', 'On', On ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('043_config_enable_EUR', 'Rate', Rate ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('043_config_enable_EUR');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_disable_EUR //
 ( myFP: TCFD_BGR;                      //
   const Option : WideString;           //
   const Off : WideString               //
 ) : Integer;                           //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_disable_EUR', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_disable_EUR', 'Off', Off ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_disable_EUR');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_PrintLogo //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   const Off_On : WideString;             //
   const Height : WideString              //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('043_config_Set_PrintLogo', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('043_config_Set_PrintLogo', 'Off_On', Off_On ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('043_config_Set_PrintLogo', 'Height', Height ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('043_config_Set_PrintLogo');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_PrintDepartment //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   const Off_On : WideString                    //
 ) : Integer;                                   //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_PrintDepartment', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_PrintDepartment', 'Off_On', Off_On ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_PrintDepartment');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_PrintTaxDDS //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Off_On : WideString                //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_PrintTaxDDS', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_PrintTaxDDS', 'Off_On', Off_On ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_PrintTaxDDS');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_CashDrawerPulse //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   const Off_On : WideString                    //
 ) : Integer;                                   //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_CashDrawerPulse', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_CashDrawerPulse', 'Off_On', Off_On ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_CashDrawerPulse');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_061_config_Set_DateTime //
 ( myFP: TCFD_BGR;                       //
   const DateTime : WideString           //
 ) : Integer;                            //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('061_config_Set_DateTime', 'DateTime', DateTime ) <> 0 then Exit;
        myFP.execute_Command_ByName('061_config_Set_DateTime');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_066_config_Set_InvoiceRange //
 ( myFP: TCFD_BGR;                           //
   const StartValue : WideString;            //
   const EndValue : WideString;              //
   var Value_Start : WideString;             //
   var Value_End : WideString;               //
   var Value_Current : WideString            //
 ) : Integer;                                //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('066_config_Set_InvoiceRange', 'Value_Start',Value_Start);
   myFP.get_OutputParam_ByName('066_config_Set_InvoiceRange', 'Value_End',Value_End);
   myFP.get_OutputParam_ByName('066_config_Set_InvoiceRange', 'Value_Current',Value_Current);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('066_config_Set_InvoiceRange', 'StartValue', StartValue ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('066_config_Set_InvoiceRange', 'EndValue', EndValue ) <> 0 then Exit;
        if myFP.execute_Command_ByName('066_config_Set_InvoiceRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_085_config_Set_AdditionalPaymentName //
 ( myFP: TCFD_BGR;                                    //
   const Option : WideString;                         //
   const Additional_PaymentName : WideString;         //
   var ErrorCode : WideString                         //
 ) : Integer;                                         //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('085_config_Set_AdditionalPaymentName', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('085_config_Set_AdditionalPaymentName', 'Additional_PaymentName', Additional_PaymentName ) <> 0 then Exit;
        myFP.execute_Command_ByName('085_config_Set_AdditionalPaymentName');
        myFP.get_OutputParam_ByName('085_config_Set_AdditionalPaymentName', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_087_config_Set_DepartmentName //
 ( myFP: TCFD_BGR;                             //
   const DepartmentNumber : WideString;        //
   const TaxGroup : WideString;                //
   const TextRow1 : WideString                 //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('087_config_Set_DepartmentName', 'DepartmentNumber', DepartmentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('087_config_Set_DepartmentName', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('087_config_Set_DepartmentName', 'TextRow1', TextRow1 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('087_config_Set_DepartmentName');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_087_config_Set_DepartmentNameTwoRows //
 ( myFP: TCFD_BGR;                                    //
   const DepartmentNumber : WideString;               //
   const TaxGroup : WideString;                       //
   const TextRow1 : WideString;                       //
   const TextRow2 : WideString                        //
 ) : Integer;                                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('087_config_Set_DepartmentNameTwoRows', 'DepartmentNumber', DepartmentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('087_config_Set_DepartmentNameTwoRows', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('087_config_Set_DepartmentNameTwoRows', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('087_config_Set_DepartmentNameTwoRows', 'TextRow2', TextRow2 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('087_config_Set_DepartmentNameTwoRows');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_101_config_Set_OperatorPassword //
 ( myFP: TCFD_BGR;                               //
   const OperatorCode : WideString;              //
   const OldPassword : WideString;               //
   const NewPassword : WideString                //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('101_config_Set_OperatorPassword', 'OperatorCode', OperatorCode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('101_config_Set_OperatorPassword', 'OldPassword', OldPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('101_config_Set_OperatorPassword', 'NewPassword', NewPassword ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('101_config_Set_OperatorPassword');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_102_config_Set_OperatorName //
 ( myFP: TCFD_BGR;                           //
   const OperatorCode : WideString;          //
   const Password : WideString;              //
   const OperatorName : WideString           //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('102_config_Set_OperatorName', 'OperatorCode', OperatorCode ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('102_config_Set_OperatorName', 'Password', Password ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('102_config_Set_OperatorName', 'OperatorName', OperatorName ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('102_config_Set_OperatorName');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_info_Get_PrintOption //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var fAnswer : WideString               //
 ) : Integer;                             //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_info_Get_PrintOption', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_info_Get_PrintOption');
        myFP.get_OutputParam_ByName('043_info_Get_PrintOption', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_050_info_Get_TaxRatesByPeriod //
 ( myFP: TCFD_BGR;                             //
   const StartDate : WideString;               //
   const EndDate : WideString;                 //
   var ErrorCode : WideString;                 //
   var AA : WideString;                        //
   var BB : WideString;                        //
   var CC : WideString;                        //
   var DD : WideString;                        //
   var EE : WideString;                        //
   var FF : WideString;                        //
   var GG : WideString;                        //
   var HH : WideString;                        //
   var DDMMYY : WideString                     //
 ) : Integer;                                  //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'AA',AA);
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'BB',BB);
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'CC',CC);
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'DD',DD);
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'EE',EE);
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'FF',FF);
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'GG',GG);
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'HH',HH);
   myFP.get_OutputParam_ByName('050_info_Get_TaxRatesByPeriod', 'DDMMYY',DDMMYY);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('050_info_Get_TaxRatesByPeriod', 'StartDate', StartDate ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('050_info_Get_TaxRatesByPeriod', 'EndDate', EndDate ) <> 0 then Exit;
        if myFP.execute_Command_ByName('050_info_Get_TaxRatesByPeriod') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_062_info_Get_DateTime //
 ( myFP: TCFD_BGR;                     //
   var DateTime : WideString           //
 ) : Integer;                          //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('062_info_Get_DateTime');
        myFP.get_OutputParam_ByName('062_info_Get_DateTime', 'DateTime',DateTime);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_062_info_Get_DateTime_01 //
 ( myFP: TCFD_BGR;                        //
   var Day : WideString;                  //
   var Month : WideString;                //
   var Year : WideString;                 //
   var Hour : WideString;                 //
   var Minute : WideString;               //
   var Second : WideString                //
 ) : Integer;                             //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('062_info_Get_DateTime_01', 'Day',Day);
   myFP.get_OutputParam_ByName('062_info_Get_DateTime_01', 'Month',Month);
   myFP.get_OutputParam_ByName('062_info_Get_DateTime_01', 'Year',Year);
   myFP.get_OutputParam_ByName('062_info_Get_DateTime_01', 'Hour',Hour);
   myFP.get_OutputParam_ByName('062_info_Get_DateTime_01', 'Minute',Minute);
   myFP.get_OutputParam_ByName('062_info_Get_DateTime_01', 'Second',Second);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('062_info_Get_DateTime_01') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_064_info_Get_LastFiscRecord //
 ( myFP: TCFD_BGR;                           //
   var ErrorCode : WideString;               //
   var LastFRecordNumber : WideString;       //
   var TaxA : WideString;                    //
   var TaxB : WideString;                    //
   var TaxC : WideString;                    //
   var TaxD : WideString;                    //
   var TaxE : WideString;                    //
   var TaxF : WideString;                    //
   var TaxG : WideString;                    //
   var TaxH : WideString;                    //
   var Date : WideString                     //
 ) : Integer;                                //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'LastFRecordNumber',LastFRecordNumber);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'TaxA',TaxA);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'TaxB',TaxB);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'TaxC',TaxC);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'TaxD',TaxD);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'TaxE',TaxE);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'TaxF',TaxF);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'TaxG',TaxG);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'TaxH',TaxH);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord', 'Date',Date);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('064_info_Get_LastFiscRecord') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_065_info_Get_AdditionalDailyInfo_04 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var SumA : WideString;                            //
   var SumB : WideString;                            //
   var SumC : WideString;                            //
   var SumD : WideString;                            //
   var SumE : WideString;                            //
   var SumF : WideString;                            //
   var SumG : WideString;                            //
   var SumH : WideString                             //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_04', 'SumA',SumA);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_04', 'SumB',SumB);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_04', 'SumC',SumC);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_04', 'SumD',SumD);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_04', 'SumE',SumE);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_04', 'SumF',SumF);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_04', 'SumG',SumG);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_04', 'SumH',SumH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('065_info_Get_AdditionalDailyInfo_04', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('065_info_Get_AdditionalDailyInfo_04') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_065_info_Get_AdditionalDailyInfo_05 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var ClientsCount : WideString;                    //
   var SumSold : WideString;                         //
   var Surcharges_Sum : WideString;                  //
   var Surcharges_Count : WideString;                //
   var Discounts_Sum : WideString;                   //
   var Discounts_Count : WideString;                 //
   var Voids_Sum : WideString;                       //
   var Voids_Count : WideString;                     //
   var Canceled_Sum : WideString;                    //
   var Canceled_Count : WideString                   //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'ClientsCount',ClientsCount);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'SumSold',SumSold);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'Surcharges_Sum',Surcharges_Sum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'Surcharges_Count',Surcharges_Count);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'Discounts_Sum',Discounts_Sum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'Discounts_Count',Discounts_Count);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'Voids_Sum',Voids_Sum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'Voids_Count',Voids_Count);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'Canceled_Sum',Canceled_Sum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'Canceled_Count',Canceled_Count);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('065_info_Get_AdditionalDailyInfo_05', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('065_info_Get_AdditionalDailyInfo_05') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_065_info_Get_AdditionalDailyInfo_06 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var Foreign_Sum : WideString;                     //
   var LocalForeign_Sum : WideString;                //
   var CashIn_Sum : WideString;                      //
   var CashIn_Count : WideString;                    //
   var CashOut_Sum : WideString;                     //
   var CashOut_Count : WideString;                   //
   var CashIn_ForeignSum : WideString;               //
   var CashIn_ForeignCount : WideString;             //
   var CashOut_ForeignSum : WideString;              //
   var CashOut_ForeignCount : WideString             //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'Foreign_Sum',Foreign_Sum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'LocalForeign_Sum',LocalForeign_Sum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'CashIn_Sum',CashIn_Sum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'CashIn_Count',CashIn_Count);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'CashOut_Sum',CashOut_Sum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'CashOut_Count',CashOut_Count);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'CashIn_ForeignSum',CashIn_ForeignSum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'CashIn_ForeignCount',CashIn_ForeignCount);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'CashOut_ForeignSum',CashOut_ForeignSum);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'CashOut_ForeignCount',CashOut_ForeignCount);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('065_info_Get_AdditionalDailyInfo_06', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('065_info_Get_AdditionalDailyInfo_06') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_065_info_Get_AdditionalDailyInfo_07 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var Sum_PaymentType_0 : WideString;               //
   var Sum_PaymentType_1 : WideString;               //
   var Sum_PaymentType_2 : WideString;               //
   var Sum_PaymentType_3 : WideString;               //
   var Sum_PaymentType_4 : WideString;               //
   var Sum_PaymentType_5 : WideString                //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_07', 'Sum_PaymentType_0',Sum_PaymentType_0);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_07', 'Sum_PaymentType_1',Sum_PaymentType_1);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_07', 'Sum_PaymentType_2',Sum_PaymentType_2);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_07', 'Sum_PaymentType_3',Sum_PaymentType_3);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_07', 'Sum_PaymentType_4',Sum_PaymentType_4);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_07', 'Sum_PaymentType_5',Sum_PaymentType_5);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('065_info_Get_AdditionalDailyInfo_07', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('065_info_Get_AdditionalDailyInfo_07') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_065_info_Get_AdditionalDailyInfo_08 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var ReverseTurnover_TaxA : WideString;            //
   var ReverseTurnover_TaxB : WideString;            //
   var ReverseTurnover_TaxC : WideString;            //
   var ReverseTurnover_TaxD : WideString;            //
   var ReverseTurnover_TaxE : WideString;            //
   var ReverseTurnover_TaxF : WideString;            //
   var ReverseTurnover_TaxG : WideString;            //
   var ReverseTurnover_TaxH : WideString             //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_08', 'ReverseTurnover_TaxA',ReverseTurnover_TaxA);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_08', 'ReverseTurnover_TaxB',ReverseTurnover_TaxB);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_08', 'ReverseTurnover_TaxC',ReverseTurnover_TaxC);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_08', 'ReverseTurnover_TaxD',ReverseTurnover_TaxD);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_08', 'ReverseTurnover_TaxE',ReverseTurnover_TaxE);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_08', 'ReverseTurnover_TaxF',ReverseTurnover_TaxF);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_08', 'ReverseTurnover_TaxG',ReverseTurnover_TaxG);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_08', 'ReverseTurnover_TaxH',ReverseTurnover_TaxH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('065_info_Get_AdditionalDailyInfo_08', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('065_info_Get_AdditionalDailyInfo_08') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_065_info_Get_AdditionalDailyInfo_09 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var ReverseVat_TaxA : WideString;                 //
   var ReverseVat_TaxB : WideString;                 //
   var ReverseVat_TaxC : WideString;                 //
   var ReverseVat_TaxD : WideString;                 //
   var ReverseVat_TaxE : WideString;                 //
   var ReverseVat_TaxF : WideString;                 //
   var ReverseVat_TaxG : WideString;                 //
   var ReverseVat_TaxH : WideString                  //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_09', 'ReverseVat_TaxA',ReverseVat_TaxA);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_09', 'ReverseVat_TaxB',ReverseVat_TaxB);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_09', 'ReverseVat_TaxC',ReverseVat_TaxC);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_09', 'ReverseVat_TaxD',ReverseVat_TaxD);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_09', 'ReverseVat_TaxE',ReverseVat_TaxE);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_09', 'ReverseVat_TaxF',ReverseVat_TaxF);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_09', 'ReverseVat_TaxG',ReverseVat_TaxG);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_09', 'ReverseVat_TaxH',ReverseVat_TaxH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('065_info_Get_AdditionalDailyInfo_09', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('065_info_Get_AdditionalDailyInfo_09') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_065_info_Get_AdditionalDailyInfo_10 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var ReverseSum_PaymentType_0 : WideString;        //
   var ReverseSum_PaymentType_1 : WideString;        //
   var ReverseSum_PaymentType_2 : WideString;        //
   var ReverseSum_PaymentType_3 : WideString;        //
   var ReverseSum_PaymentType_4 : WideString;        //
   var ReverseSum_PaymentType_5 : WideString;        //
   var ReverseSum_Foreign : WideString;              //
   var ReverseSum_LocalForeign : WideString          //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_10', 'ReverseSum_PaymentType_0',ReverseSum_PaymentType_0);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_10', 'ReverseSum_PaymentType_1',ReverseSum_PaymentType_1);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_10', 'ReverseSum_PaymentType_2',ReverseSum_PaymentType_2);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_10', 'ReverseSum_PaymentType_3',ReverseSum_PaymentType_3);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_10', 'ReverseSum_PaymentType_4',ReverseSum_PaymentType_4);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_10', 'ReverseSum_PaymentType_5',ReverseSum_PaymentType_5);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_10', 'ReverseSum_Foreign',ReverseSum_Foreign);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_10', 'ReverseSum_LocalForeign',ReverseSum_LocalForeign);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('065_info_Get_AdditionalDailyInfo_10', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('065_info_Get_AdditionalDailyInfo_10') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_066_info_Get_InvoiceRange //
 ( myFP: TCFD_BGR;                         //
   var Value_Start : WideString;           //
   var Value_End : WideString;             //
   var Value_Current : WideString          //
 ) : Integer;                              //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('066_info_Get_InvoiceRange', 'Value_Start',Value_Start);
   myFP.get_OutputParam_ByName('066_info_Get_InvoiceRange', 'Value_End',Value_End);
   myFP.get_OutputParam_ByName('066_info_Get_InvoiceRange', 'Value_Current',Value_Current);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('066_info_Get_InvoiceRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_068_info_Get_FreeFMRecords //
 ( myFP: TCFD_BGR;                          //
   var Count_Logical : WideString;          //
   var Count_Total : WideString             //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('068_info_Get_FreeFMRecords') <> 0 then Exit;
        myFP.get_OutputParam_ByName('068_info_Get_FreeFMRecords', 'Count_Logical',Count_Logical);
        myFP.get_OutputParam_ByName('068_info_Get_FreeFMRecords', 'Count_Total',Count_Total);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_068_info_Get_FreeFMRecords_01 //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   var fAnswer : WideString                    //
 ) : Integer;                                  //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('068_info_Get_FreeFMRecords_01', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('068_info_Get_FreeFMRecords_01');
        myFP.get_OutputParam_ByName('068_info_Get_FreeFMRecords_01', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_070_info_Get_CashIn_CashOut //
 ( myFP: TCFD_BGR;                           //
   var ErrorCode : WideString;               //
   var CashSum : WideString;                 //
   var ServIn : WideString;                  //
   var ServOut : WideString                  //
 ) : Integer;                                //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('070_info_Get_CashIn_CashOut', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('070_info_Get_CashIn_CashOut', 'CashSum',CashSum);
   myFP.get_OutputParam_ByName('070_info_Get_CashIn_CashOut', 'ServIn',ServIn);
   myFP.get_OutputParam_ByName('070_info_Get_CashIn_CashOut', 'ServOut',ServOut);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('070_info_Get_CashIn_CashOut') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_071_info_Print_Diagnostic_0 //
 ( myFP: TCFD_BGR;                           //
   var ErrorCode : WideString                //
 ) : Integer;                                //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('071_info_Print_Diagnostic_0');
        myFP.get_OutputParam_ByName('071_info_Print_Diagnostic_0', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_071_info_Print_Diagnostic_1 //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   var ErrorCode : WideString                //
 ) : Integer;                                //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('071_info_Print_Diagnostic_1', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('071_info_Print_Diagnostic_1');
        myFP.get_OutputParam_ByName('071_info_Print_Diagnostic_1', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_071_info_PrintInfo_GPRS //
 ( myFP: TCFD_BGR;                       //
   const Option : WideString;            //
   var ErrorCode : WideString            //
 ) : Integer;                            //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('071_info_PrintInfo_GPRS', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('071_info_PrintInfo_GPRS');
        myFP.get_OutputParam_ByName('071_info_PrintInfo_GPRS', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_071_info_PrintInfo_TaxTerminal //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   var ErrorCode : WideString                   //
 ) : Integer;                                   //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('071_info_PrintInfo_TaxTerminal', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('071_info_PrintInfo_TaxTerminal');
        myFP.get_OutputParam_ByName('071_info_PrintInfo_TaxTerminal', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_071_info_Get_TaxTerminalInfo //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   var ErrorCode : WideString;                //
   var Synhronized : WideString;              //
   var Ìinutes : WideString;                  //
   var NapSellXD : WideString;                //
   var NapSellChN : WideString;               //
   var SellForSend : WideString;              //
   var SellErrDocNumber : WideString;         //
   var SellErrCnt : WideString;               //
   var SellErrCode : WideString;              //
   var ZChN : WideString;                     //
   var ZForSend : WideString;                 //
   var ZErrDocNumber : WideString;            //
   var ZErrCnt : WideString;                  //
   var ZErrCode : WideString;                 //
   var NapLastSentDate : WideString;          //
   var NapLastErr : WideString                //
 ) : Integer;                                 //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'Synhronized',Synhronized);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'Ìinutes',Ìinutes);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'NapSellXD',NapSellXD);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'NapSellChN',NapSellChN);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'SellForSend',SellForSend);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'SellErrDocNumber',SellErrDocNumber);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'SellErrCnt',SellErrCnt);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'SellErrCode',SellErrCode);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'ZChN',ZChN);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'ZForSend',ZForSend);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'ZErrDocNumber',ZErrDocNumber);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'ZErrCnt',ZErrCnt);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'ZErrCode',ZErrCode);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'NapLastSentDate',NapLastSentDate);
   myFP.get_OutputParam_ByName('071_info_Get_TaxTerminalInfo', 'NapLastErr',NapLastErr);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('071_info_Get_TaxTerminalInfo', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('071_info_Get_TaxTerminalInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_071_info_Get_ModemInfo //
 ( myFP: TCFD_BGR;                      //
   const Option : WideString;           //
   var ErrorCode : WideString;          //
   var SIM : WideString;                //
   var IMSI : WideString;               //
   var isReg : WideString;              //
   var Operator : WideString;           //
   var Signal : WideString              //
 ) : Integer;                           //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('071_info_Get_ModemInfo', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('071_info_Get_ModemInfo', 'SIM',SIM);
   myFP.get_OutputParam_ByName('071_info_Get_ModemInfo', 'IMSI',IMSI);
   myFP.get_OutputParam_ByName('071_info_Get_ModemInfo', 'isReg',isReg);
   myFP.get_OutputParam_ByName('071_info_Get_ModemInfo', 'Operator',Operator);
   myFP.get_OutputParam_ByName('071_info_Get_ModemInfo', 'Signal',Signal);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('071_info_Get_ModemInfo', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('071_info_Get_ModemInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_071_info_Get_FlashMemoryInfo //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   var ErrorCode : WideString;                //
   var DeviceID : WideString;                 //
   var VolumeSize : WideString;               //
   var ValidBlocks : WideString;              //
   var BlockSize : WideString                 //
 ) : Integer;                                 //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('071_info_Get_FlashMemoryInfo', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('071_info_Get_FlashMemoryInfo', 'DeviceID',DeviceID);
   myFP.get_OutputParam_ByName('071_info_Get_FlashMemoryInfo', 'VolumeSize',VolumeSize);
   myFP.get_OutputParam_ByName('071_info_Get_FlashMemoryInfo', 'ValidBlocks',ValidBlocks);
   myFP.get_OutputParam_ByName('071_info_Get_FlashMemoryInfo', 'BlockSize',BlockSize);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('071_info_Get_FlashMemoryInfo', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('071_info_Get_FlashMemoryInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_074_info_Get_StatusBytes //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var StatusBytes : WideString           //
 ) : Integer;                             //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('074_info_Get_StatusBytes', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('074_info_Get_StatusBytes');
        myFP.get_OutputParam_ByName('074_info_Get_StatusBytes', 'StatusBytes',StatusBytes);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_076_info_Get_FTransactionStatus //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   var Open : WideString;                        //
   var Items : WideString;                       //
   var Amount : WideString;                      //
   var Tender : WideString                       //
 ) : Integer;                                    //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('076_info_Get_FTransactionStatus', 'Open',Open);
   myFP.get_OutputParam_ByName('076_info_Get_FTransactionStatus', 'Items',Items);
   myFP.get_OutputParam_ByName('076_info_Get_FTransactionStatus', 'Amount',Amount);
   myFP.get_OutputParam_ByName('076_info_Get_FTransactionStatus', 'Tender',Tender);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('076_info_Get_FTransactionStatus', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('076_info_Get_FTransactionStatus') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_079_info_Print_Short_FMReportByDTRange //
 ( myFP: TCFD_BGR;                                      //
   const FromDate : WideString;                         //
   const ToDate : WideString                            //
 ) : Integer;                                           //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('079_info_Print_Short_FMReportByDTRange', 'FromDate', FromDate ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('079_info_Print_Short_FMReportByDTRange', 'ToDate', ToDate ) <> 0 then Exit;
        myFP.execute_Command_ByName('079_info_Print_Short_FMReportByDTRange');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_079_info_Print_Short_MonthlyFMReport //
 ( myFP: TCFD_BGR;                                    //
   const StartValue : WideString                      //
 ) : Integer;                                         //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('079_info_Print_Short_MonthlyFMReport', 'StartValue', StartValue ) <> 0 then Exit;
        myFP.execute_Command_ByName('079_info_Print_Short_MonthlyFMReport');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_079_info_Print_Short_YearlyFMReport //
 ( myFP: TCFD_BGR;                                   //
   const StartValue : WideString                     //
 ) : Integer;                                        //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('079_info_Print_Short_YearlyFMReport', 'StartValue', StartValue ) <> 0 then Exit;
        myFP.execute_Command_ByName('079_info_Print_Short_YearlyFMReport');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_083_info_Get_DecimalsAndTaxRates //
 ( myFP: TCFD_BGR;                                //
   var Multiplier : WideString;                   //
   var Decimals : WideString;                     //
   var CurrencyName : WideString;                 //
   var EnabledMask : WideString;                  //
   var TaxA : WideString;                         //
   var TaxB : WideString;                         //
   var TaxC : WideString;                         //
   var TaxD : WideString;                         //
   var TaxE : WideString;                         //
   var TaxF : WideString;                         //
   var TaxG : WideString;                         //
   var TaxH : WideString                          //
 ) : Integer;                                     //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'Multiplier',Multiplier);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'Decimals',Decimals);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'CurrencyName',CurrencyName);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'EnabledMask',EnabledMask);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'TaxA',TaxA);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'TaxB',TaxB);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'TaxC',TaxC);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'TaxD',TaxD);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'TaxE',TaxE);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'TaxF',TaxF);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'TaxG',TaxG);
   myFP.get_OutputParam_ByName('083_info_Get_DecimalsAndTaxRates', 'TaxH',TaxH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('083_info_Get_DecimalsAndTaxRates') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_085_info_Get_AdditionalPaymentNames //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var PaymentName : WideString                      //
 ) : Integer;                                        //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('085_info_Get_AdditionalPaymentNames', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('085_info_Get_AdditionalPaymentNames');
        myFP.get_OutputParam_ByName('085_info_Get_AdditionalPaymentNames', 'PaymentName',PaymentName);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_086_info_Get_FMRecord_LastDateTime //
 ( myFP: TCFD_BGR;                                  //
   const Option : WideString;                       //
   var DateTime : WideString                        //
 ) : Integer;                                       //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('086_info_Get_FMRecord_LastDateTime', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('086_info_Get_FMRecord_LastDateTime');
        myFP.get_OutputParam_ByName('086_info_Get_FMRecord_LastDateTime', 'DateTime',DateTime);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_086_info_Get_FMRecord_LastDateTime_01 //
 ( myFP: TCFD_BGR;                                     //
   const Option : WideString;                          //
   var Day : WideString;                               //
   var Month : WideString;                             //
   var Year : WideString;                              //
   var Hour : WideString;                              //
   var Minute : WideString;                            //
   var Second : WideString                             //
 ) : Integer;                                          //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('086_info_Get_FMRecord_LastDateTime_01', 'Day',Day);
   myFP.get_OutputParam_ByName('086_info_Get_FMRecord_LastDateTime_01', 'Month',Month);
   myFP.get_OutputParam_ByName('086_info_Get_FMRecord_LastDateTime_01', 'Year',Year);
   myFP.get_OutputParam_ByName('086_info_Get_FMRecord_LastDateTime_01', 'Hour',Hour);
   myFP.get_OutputParam_ByName('086_info_Get_FMRecord_LastDateTime_01', 'Minute',Minute);
   myFP.get_OutputParam_ByName('086_info_Get_FMRecord_LastDateTime_01', 'Second',Second);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('086_info_Get_FMRecord_LastDateTime_01', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('086_info_Get_FMRecord_LastDateTime_01') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_086_info_Get_Registration_DT_Num //
 ( myFP: TCFD_BGR;                                //
   const Option : WideString;                     //
   const Number : WideString;                     //
   var Day : WideString;                          //
   var Month : WideString;                        //
   var Year : WideString;                         //
   var Hour : WideString;                         //
   var Minute : WideString;                       //
   var Second : WideString;                       //
   var Reg_Number : WideString                    //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('086_info_Get_Registration_DT_Num', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('086_info_Get_Registration_DT_Num', 'Number', Number ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('086_info_Get_Registration_DT_Num', 'Day',Day);
   myFP.get_OutputParam_ByName('086_info_Get_Registration_DT_Num', 'Month',Month);
   myFP.get_OutputParam_ByName('086_info_Get_Registration_DT_Num', 'Year',Year);
   myFP.get_OutputParam_ByName('086_info_Get_Registration_DT_Num', 'Hour',Hour);
   myFP.get_OutputParam_ByName('086_info_Get_Registration_DT_Num', 'Minute',Minute);
   myFP.get_OutputParam_ByName('086_info_Get_Registration_DT_Num', 'Second',Second);
   myFP.get_OutputParam_ByName('086_info_Get_Registration_DT_Num', 'Reg_Number',Reg_Number);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('086_info_Get_Registration_DT_Num') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_086_info_Get_DeRegistration_DT_Num //
 ( myFP: TCFD_BGR;                                  //
   const Option : WideString;                       //
   const Number : WideString;                       //
   var Day : WideString;                            //
   var Month : WideString;                          //
   var Year : WideString;                           //
   var Hour : WideString;                           //
   var Minute : WideString;                         //
   var Second : WideString;                         //
   var DeReg_Number : WideString                    //
 ) : Integer;                                       //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('086_info_Get_DeRegistration_DT_Num', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('086_info_Get_DeRegistration_DT_Num', 'Number', Number ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('086_info_Get_DeRegistration_DT_Num', 'Day',Day);
   myFP.get_OutputParam_ByName('086_info_Get_DeRegistration_DT_Num', 'Month',Month);
   myFP.get_OutputParam_ByName('086_info_Get_DeRegistration_DT_Num', 'Year',Year);
   myFP.get_OutputParam_ByName('086_info_Get_DeRegistration_DT_Num', 'Hour',Hour);
   myFP.get_OutputParam_ByName('086_info_Get_DeRegistration_DT_Num', 'Minute',Minute);
   myFP.get_OutputParam_ByName('086_info_Get_DeRegistration_DT_Num', 'Second',Second);
   myFP.get_OutputParam_ByName('086_info_Get_DeRegistration_DT_Num', 'DeReg_Number',DeReg_Number);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('086_info_Get_DeRegistration_DT_Num') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_086_info_Get_Registration_Count //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   var Reg_Count : WideString                    //
 ) : Integer;                                    //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('086_info_Get_Registration_Count', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('086_info_Get_Registration_Count');
        myFP.get_OutputParam_ByName('086_info_Get_Registration_Count', 'Reg_Count',Reg_Count);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_086_info_Get_DeRegistration_Count //
 ( myFP: TCFD_BGR;                                 //
   const Option : WideString;                      //
   var DeReg_Count : WideString                    //
 ) : Integer;                                      //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('086_info_Get_DeRegistration_Count', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('086_info_Get_DeRegistration_Count');
        myFP.get_OutputParam_ByName('086_info_Get_DeRegistration_Count', 'DeReg_Count',DeReg_Count);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_088_info_Get_DepartmentInfo //
 ( myFP: TCFD_BGR;                           //
   const DepartmentNumber : WideString;      //
   var ErrorCode : WideString;               //
   var TaxGroup : WideString;                //
   var RecSales : WideString;                //
   var RecSum : WideString;                  //
   var TotSales : WideString;                //
   var TotSum : WideString;                  //
   var Line1 : WideString;                   //
   var Line2 : WideString                    //
 ) : Integer;                                //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('088_info_Get_DepartmentInfo', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('088_info_Get_DepartmentInfo', 'TaxGroup',TaxGroup);
   myFP.get_OutputParam_ByName('088_info_Get_DepartmentInfo', 'RecSales',RecSales);
   myFP.get_OutputParam_ByName('088_info_Get_DepartmentInfo', 'RecSum',RecSum);
   myFP.get_OutputParam_ByName('088_info_Get_DepartmentInfo', 'TotSales',TotSales);
   myFP.get_OutputParam_ByName('088_info_Get_DepartmentInfo', 'TotSum',TotSum);
   myFP.get_OutputParam_ByName('088_info_Get_DepartmentInfo', 'Line1',Line1);
   myFP.get_OutputParam_ByName('088_info_Get_DepartmentInfo', 'Line2',Line2);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('088_info_Get_DepartmentInfo', 'DepartmentNumber', DepartmentNumber ) <> 0 then Exit;
        if myFP.execute_Command_ByName('088_info_Get_DepartmentInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_088_info_Get_Department_StornoInfo //
 ( myFP: TCFD_BGR;                                  //
   const DepartmentNumber : WideString;             //
   const Storno_Type : WideString;                  //
   var ErrorCode : WideString;                      //
   var TaxGroup : WideString;                       //
   var RecSales : WideString;                       //
   var RecSum : WideString;                         //
   var TotSales : WideString;                       //
   var TotSum : WideString;                         //
   var Line1 : WideString;                          //
   var Line2 : WideString                           //
 ) : Integer;                                       //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('088_info_Get_Department_StornoInfo', 'DepartmentNumber', DepartmentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('088_info_Get_Department_StornoInfo', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('088_info_Get_Department_StornoInfo', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('088_info_Get_Department_StornoInfo', 'TaxGroup',TaxGroup);
   myFP.get_OutputParam_ByName('088_info_Get_Department_StornoInfo', 'RecSales',RecSales);
   myFP.get_OutputParam_ByName('088_info_Get_Department_StornoInfo', 'RecSum',RecSum);
   myFP.get_OutputParam_ByName('088_info_Get_Department_StornoInfo', 'TotSales',TotSales);
   myFP.get_OutputParam_ByName('088_info_Get_Department_StornoInfo', 'TotSum',TotSum);
   myFP.get_OutputParam_ByName('088_info_Get_Department_StornoInfo', 'Line1',Line1);
   myFP.get_OutputParam_ByName('088_info_Get_Department_StornoInfo', 'Line2',Line2);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('088_info_Get_Department_StornoInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_090_info_Get_DiagnosticInfo //
 ( myFP: TCFD_BGR;                           //
   var DeviceName : WideString;              //
   var Firmware : WideString;                //
   var CheckSum : WideString;                //
   var Switches : WideString;                //
   var SerialNumber : WideString;            //
   var FiscalMemoryNumber : WideString       //
 ) : Integer;                                //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('090_info_Get_DiagnosticInfo', 'DeviceName',DeviceName);
   myFP.get_OutputParam_ByName('090_info_Get_DiagnosticInfo', 'Firmware',Firmware);
   myFP.get_OutputParam_ByName('090_info_Get_DiagnosticInfo', 'CheckSum',CheckSum);
   myFP.get_OutputParam_ByName('090_info_Get_DiagnosticInfo', 'Switches',Switches);
   myFP.get_OutputParam_ByName('090_info_Get_DiagnosticInfo', 'SerialNumber',SerialNumber);
   myFP.get_OutputParam_ByName('090_info_Get_DiagnosticInfo', 'FiscalMemoryNumber',FiscalMemoryNumber);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('090_info_Get_DiagnosticInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_097_info_Get_TaxRates //
 ( myFP: TCFD_BGR;                     //
   var TaxA : WideString;              //
   var TaxB : WideString;              //
   var TaxC : WideString;              //
   var TaxD : WideString;              //
   var TaxE : WideString;              //
   var TaxF : WideString;              //
   var TaxG : WideString;              //
   var TaxH : WideString               //
 ) : Integer;                          //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('097_info_Get_TaxRates', 'TaxA',TaxA);
   myFP.get_OutputParam_ByName('097_info_Get_TaxRates', 'TaxB',TaxB);
   myFP.get_OutputParam_ByName('097_info_Get_TaxRates', 'TaxC',TaxC);
   myFP.get_OutputParam_ByName('097_info_Get_TaxRates', 'TaxD',TaxD);
   myFP.get_OutputParam_ByName('097_info_Get_TaxRates', 'TaxE',TaxE);
   myFP.get_OutputParam_ByName('097_info_Get_TaxRates', 'TaxF',TaxF);
   myFP.get_OutputParam_ByName('097_info_Get_TaxRates', 'TaxG',TaxG);
   myFP.get_OutputParam_ByName('097_info_Get_TaxRates', 'TaxH',TaxH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('097_info_Get_TaxRates') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_099_info_Get_EIK //
 ( myFP: TCFD_BGR;                //
   var EIK_Value : WideString;    //
   var EIK_Name : WideString      //
 ) : Integer;                     //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('099_info_Get_EIK') <> 0 then Exit;
        myFP.get_OutputParam_ByName('099_info_Get_EIK', 'EIK_Value',EIK_Value);
        myFP.get_OutputParam_ByName('099_info_Get_EIK', 'EIK_Name',EIK_Name);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_103_info_Get_CurrentRecieptInfo //
 ( myFP: TCFD_BGR;                               //
   var ErrorCode : WideString;                   //
   var CanVd : WideString;                       //
   var TaxA : WideString;                        //
   var TaxB : WideString;                        //
   var TaxC : WideString;                        //
   var TaxD : WideString;                        //
   var TaxE : WideString;                        //
   var TaxF : WideString;                        //
   var TaxG : WideString;                        //
   var TaxH : WideString;                        //
   var Inv : WideString;                         //
   var InvNum : WideString;                      //
   var ReceiptType : WideString                  //
 ) : Integer;                                    //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'CanVd',CanVd);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'TaxA',TaxA);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'TaxB',TaxB);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'TaxC',TaxC);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'TaxD',TaxD);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'TaxE',TaxE);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'TaxF',TaxF);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'TaxG',TaxG);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'TaxH',TaxH);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'Inv',Inv);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'InvNum',InvNum);
   myFP.get_OutputParam_ByName('103_info_Get_CurrentRecieptInfo', 'ReceiptType',ReceiptType);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('103_info_Get_CurrentRecieptInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_110_info_Get_AdditionalDailyInfo_11 //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   var Cash : WideString;                            //
   var Credit : WideString;                          //
   var Debit : WideString;                           //
   var Payment_04 : WideString;                      //
   var Payment_05 : WideString;                      //
   var Payment_06 : WideString;                      //
   var Resrvl1 : WideString;                         //
   var Resrvl2 : WideString;                         //
   var Closure : WideString;                         //
   var Next_FReceiptNumber : WideString              //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Cash',Cash);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Credit',Credit);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Debit',Debit);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Payment_04',Payment_04);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Payment_05',Payment_05);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Payment_06',Payment_06);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Resrvl1',Resrvl1);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Resrvl2',Resrvl2);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Closure',Closure);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Next_FReceiptNumber',Next_FReceiptNumber);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('110_info_Get_AdditionalDailyInfo_11', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('110_info_Get_AdditionalDailyInfo_11') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_112_info_Get_OperatorsData //
 ( myFP: TCFD_BGR;                          //
   const Operator : WideString;             //
   var Receipts_Count : WideString;         //
   var Sales_Count : WideString;            //
   var Sales_Sum : WideString;              //
   var Discounts_Count : WideString;        //
   var Discounts_Sum : WideString;          //
   var Surcharges_Count : WideString;       //
   var Surcharges_Sum : WideString;         //
   var Voids_Count : WideString;            //
   var Voids_Sum : WideString;              //
   var OperatorName : WideString;           //
   var OperatorPassword : WideString        //
 ) : Integer;                               //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'Receipts_Count',Receipts_Count);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'Sales_Count',Sales_Count);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'Sales_Sum',Sales_Sum);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'Discounts_Count',Discounts_Count);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'Discounts_Sum',Discounts_Sum);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'Surcharges_Count',Surcharges_Count);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'Surcharges_Sum',Surcharges_Sum);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'Voids_Count',Voids_Count);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'Voids_Sum',Voids_Sum);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'OperatorName',OperatorName);
   myFP.get_OutputParam_ByName('112_info_Get_OperatorsData', 'OperatorPassword',OperatorPassword);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('112_info_Get_OperatorsData', 'Operator', Operator ) <> 0 then Exit;
        if myFP.execute_Command_ByName('112_info_Get_OperatorsData') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_112_info_read_OperatorsInfo //
 ( myFP: TCFD_BGR;                           //
   const Operator : WideString;              //
   const Option : WideString;                //
   var ReversalReceipts_Count : WideString;  //
   var CommonReversal_Count : WideString;    //
   var CommonReversal_Sum : WideString;      //
   var STRReturn_Count : WideString;         //
   var STRReturn_Sum : WideString;           //
   var STRError_Count : WideString;          //
   var STRError_Sum : WideString;            //
   var STRTaxbase_Count : WideString;        //
   var STRTaxbase_Sum : WideString;          //
   var OperatorName : WideString;            //
   var OperatorPassword : WideString         //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('112_info_read_OperatorsInfo', 'Operator', Operator ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('112_info_read_OperatorsInfo', 'Option', Option ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'ReversalReceipts_Count',ReversalReceipts_Count);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'CommonReversal_Count',CommonReversal_Count);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'CommonReversal_Sum',CommonReversal_Sum);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'STRReturn_Count',STRReturn_Count);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'STRReturn_Sum',STRReturn_Sum);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'STRError_Count',STRError_Count);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'STRError_Sum',STRError_Sum);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'STRTaxbase_Count',STRTaxbase_Count);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'STRTaxbase_Sum',STRTaxbase_Sum);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'OperatorName',OperatorName);
   myFP.get_OutputParam_ByName('112_info_read_OperatorsInfo', 'OperatorPassword',OperatorPassword);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('112_info_read_OperatorsInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_113_info_Get_LastDocumentNumber //
 ( myFP: TCFD_BGR;                               //
   var DocumentNumber : WideString               //
 ) : Integer;                                    //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('113_info_Get_LastDocumentNumber');
        myFP.get_OutputParam_ByName('113_info_Get_LastDocumentNumber', 'DocumentNumber',DocumentNumber);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_ActiveTaxes //
 ( myFP: TCFD_BGR;                        //
   const ClosureNumber : WideString;      //
   const Option : WideString;             //
   var ErrorCode : WideString;            //
   var TaxRecordNumber : WideString;      //
   var DecimalsCount : WideString;        //
   var Enabled : WideString;              //
   var TaxRateA : WideString;             //
   var TaxRateB : WideString;             //
   var TaxRateC : WideString;             //
   var TaxRateD : WideString;             //
   var TaxRateE : WideString;             //
   var TaxRateF : WideString;             //
   var TaxRateG : WideString;             //
   var TaxRateH : WideString;             //
   var DateTime : WideString              //
 ) : Integer;                             //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'TaxRecordNumber',TaxRecordNumber);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'DecimalsCount',DecimalsCount);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'Enabled',Enabled);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'TaxRateA',TaxRateA);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'TaxRateB',TaxRateB);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'TaxRateC',TaxRateC);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'TaxRateD',TaxRateD);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'TaxRateE',TaxRateE);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'TaxRateF',TaxRateF);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'TaxRateG',TaxRateG);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'TaxRateH',TaxRateH);
   myFP.get_OutputParam_ByName('114_info_Get_ActiveTaxes', 'DateTime',DateTime);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_ActiveTaxes', 'ClosureNumber', ClosureNumber ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_ActiveTaxes', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('114_info_Get_ActiveTaxes') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_Sums //
 ( myFP: TCFD_BGR;                 //
   const Closure1 : WideString;    //
   const Option : WideString;      //
   const Closure2 : WideString;    //
   var ErrorCode : WideString;     //
   var ClosureNumber : WideString; //
   var ReceiptsCount : WideString; //
   var TotTaxA : WideString;       //
   var TotTaxB : WideString;       //
   var TotTaxC : WideString;       //
   var TotTaxD : WideString;       //
   var TotTaxE : WideString;       //
   var TotTaxF : WideString;       //
   var TotTaxG : WideString;       //
   var TotTaxH : WideString        //
 ) : Integer;                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('114_info_Get_Sums', 'Closure1', Closure1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_Sums', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_Sums', 'Closure2', Closure2 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'ClosureNumber',ClosureNumber);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'ReceiptsCount',ReceiptsCount);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'TotTaxA',TotTaxA);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'TotTaxB',TotTaxB);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'TotTaxC',TotTaxC);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'TotTaxD',TotTaxD);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'TotTaxE',TotTaxE);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'TotTaxF',TotTaxF);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'TotTaxG',TotTaxG);
   myFP.get_OutputParam_ByName('114_info_Get_Sums', 'TotTaxH',TotTaxH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('114_info_Get_Sums') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_NettoSums //
 ( myFP: TCFD_BGR;                      //
   const Closure1 : WideString;         //
   const Option : WideString;           //
   const Closure2 : WideString;         //
   var ErrorCode : WideString;          //
   var ClosureNumber : WideString;      //
   var ReceiptsCount : WideString;      //
   var NettoTaxA : WideString;          //
   var NettoTaxB : WideString;          //
   var NettoTaxC : WideString;          //
   var NettoTaxD : WideString;          //
   var NettoTaxE : WideString;          //
   var NettoTaxF : WideString;          //
   var NettoTaxG : WideString;          //
   var NettoTaxH : WideString           //
 ) : Integer;                           //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('114_info_Get_NettoSums', 'Closure1', Closure1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_NettoSums', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_NettoSums', 'Closure2', Closure2 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'ClosureNumber',ClosureNumber);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'ReceiptsCount',ReceiptsCount);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'NettoTaxA',NettoTaxA);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'NettoTaxB',NettoTaxB);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'NettoTaxC',NettoTaxC);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'NettoTaxD',NettoTaxD);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'NettoTaxE',NettoTaxE);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'NettoTaxF',NettoTaxF);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'NettoTaxG',NettoTaxG);
   myFP.get_OutputParam_ByName('114_info_Get_NettoSums', 'NettoTaxH',NettoTaxH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('114_info_Get_NettoSums') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_VATSums //
 ( myFP: TCFD_BGR;                    //
   const Closure1 : WideString;       //
   const Option : WideString;         //
   const Closure2 : WideString;       //
   var ErrorCode : WideString;        //
   var ClosureNumber : WideString;    //
   var ReceiptsCount : WideString;    //
   var VATTaxA : WideString;          //
   var VATTaxB : WideString;          //
   var VATTaxC : WideString;          //
   var VATTaxD : WideString;          //
   var VATTaxE : WideString;          //
   var VATTaxF : WideString;          //
   var VATTaxG : WideString;          //
   var VATTaxH : WideString           //
 ) : Integer;                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('114_info_Get_VATSums', 'Closure1', Closure1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_VATSums', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_VATSums', 'Closure2', Closure2 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'ClosureNumber',ClosureNumber);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'ReceiptsCount',ReceiptsCount);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'VATTaxA',VATTaxA);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'VATTaxB',VATTaxB);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'VATTaxC',VATTaxC);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'VATTaxD',VATTaxD);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'VATTaxE',VATTaxE);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'VATTaxF',VATTaxF);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'VATTaxG',VATTaxG);
   myFP.get_OutputParam_ByName('114_info_Get_VATSums', 'VATTaxH',VATTaxH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('114_info_Get_VATSums') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_Numbers  //
 ( myFP: TCFD_BGR;                     //
   const Closure1 : WideString;        //
   const Option : WideString;          //
   var ErrorCode : WideString;         //
   var ClosureNumber : WideString;     //
   var TaxRecordNumber : WideString;   //
   var ResetRecordNumber : WideString; //
   var KLENNumber : WideString;        //
   var DateTime : WideString           //
 ) : Integer;                          //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_Numbers', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_Numbers', 'ClosureNumber',ClosureNumber);
   myFP.get_OutputParam_ByName('114_info_Get_Numbers', 'TaxRecordNumber',TaxRecordNumber);
   myFP.get_OutputParam_ByName('114_info_Get_Numbers', 'ResetRecordNumber',ResetRecordNumber);
   myFP.get_OutputParam_ByName('114_info_Get_Numbers', 'KLENNumber',KLENNumber);
   myFP.get_OutputParam_ByName('114_info_Get_Numbers', 'DateTime',DateTime);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_Numbers', 'Closure1', Closure1 ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_Numbers', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('114_info_Get_Numbers') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_TaxRateValues //
 ( myFP: TCFD_BGR;                          //
   const Closure1 : WideString;             //
   const Option : WideString;               //
   var ErrorCode : WideString;              //
   var DecimalsCount : WideString;          //
   var Enabled : WideString;                //
   var TaxRateA : WideString;               //
   var TaxRateB : WideString;               //
   var TaxRateC : WideString;               //
   var TaxRateD : WideString;               //
   var TaxRateE : WideString;               //
   var TaxRateF : WideString;               //
   var TaxRateG : WideString;               //
   var TaxRateH : WideString;               //
   var DateTime : WideString                //
 ) : Integer;                               //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'DecimalsCount',DecimalsCount);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'Enabled',Enabled);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'TaxRateA',TaxRateA);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'TaxRateB',TaxRateB);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'TaxRateC',TaxRateC);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'TaxRateD',TaxRateD);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'TaxRateE',TaxRateE);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'TaxRateF',TaxRateF);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'TaxRateG',TaxRateG);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'TaxRateH',TaxRateH);
   myFP.get_OutputParam_ByName('114_info_Get_TaxRateValues', 'DateTime',DateTime);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_TaxRateValues', 'Closure1', Closure1 ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_TaxRateValues', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('114_info_Get_TaxRateValues') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_ReversalTurnover //
 ( myFP: TCFD_BGR;                             //
   const Closure1 : WideString;                //
   const Option : WideString;                  //
   const Closure2 : WideString;                //
   var ErrorCode : WideString;                 //
   var Closure_Count : WideString;             //
   var TotA : WideString;                      //
   var TotB : WideString;                      //
   var TotC : WideString;                      //
   var TotD : WideString;                      //
   var TotE : WideString;                      //
   var TotF : WideString;                      //
   var TotG : WideString;                      //
   var TotH : WideString                       //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('114_info_Get_ReversalTurnover', 'Closure1', Closure1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_ReversalTurnover', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_ReversalTurnover', 'Closure2', Closure2 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'Closure_Count',Closure_Count);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'TotA',TotA);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'TotB',TotB);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'TotC',TotC);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'TotD',TotD);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'TotE',TotE);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'TotF',TotF);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'TotG',TotG);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalTurnover', 'TotH',TotH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('114_info_Get_ReversalTurnover') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_ReversalNetoSums //
 ( myFP: TCFD_BGR;                             //
   const Closure1 : WideString;                //
   const Option : WideString;                  //
   const Closure2 : WideString;                //
   var ErrorCode : WideString;                 //
   var Closure_Count : WideString;             //
   var TotA : WideString;                      //
   var TotB : WideString;                      //
   var TotC : WideString;                      //
   var TotD : WideString;                      //
   var TotE : WideString;                      //
   var TotF : WideString;                      //
   var TotG : WideString;                      //
   var TotH : WideString                       //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('114_info_Get_ReversalNetoSums', 'Closure1', Closure1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_ReversalNetoSums', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_ReversalNetoSums', 'Closure2', Closure2 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'Closure_Count',Closure_Count);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'TotA',TotA);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'TotB',TotB);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'TotC',TotC);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'TotD',TotD);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'TotE',TotE);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'TotF',TotF);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'TotG',TotG);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalNetoSums', 'TotH',TotH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('114_info_Get_ReversalNetoSums') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_ReversalVATSums //
 ( myFP: TCFD_BGR;                            //
   const Closure1 : WideString;               //
   const Option : WideString;                 //
   const Closure2 : WideString;               //
   var ErrorCode : WideString;                //
   var Closure_Count : WideString;            //
   var TotA : WideString;                     //
   var TotB : WideString;                     //
   var TotC : WideString;                     //
   var TotD : WideString;                     //
   var TotE : WideString;                     //
   var TotF : WideString;                     //
   var TotG : WideString;                     //
   var TotH : WideString                      //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('114_info_Get_ReversalVATSums', 'Closure1', Closure1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_ReversalVATSums', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_ReversalVATSums', 'Closure2', Closure2 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'Closure_Count',Closure_Count);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'TotA',TotA);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'TotB',TotB);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'TotC',TotC);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'TotD',TotD);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'TotE',TotE);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'TotF',TotF);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'TotG',TotG);
   myFP.get_OutputParam_ByName('114_info_Get_ReversalVATSums', 'TotH',TotH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('114_info_Get_ReversalVATSums') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Set_DocsRange_ByDateTime //
 ( myFP: TCFD_BGR;                                 //
   const Subcommand_01 : WideString;               //
   const DocumentType : WideString;                //
   const From_DateTime : WideString;               //
   const To_DateTime : WideString;                 //
   var fAnswer : WideString                        //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_ByDateTime', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_ByDateTime', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_ByDateTime', 'From_DateTime', From_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_ByDateTime', 'To_DateTime', To_DateTime ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Set_DocsRange_ByDateTime');
        myFP.get_OutputParam_ByName('119_klen_Set_DocsRange_ByDateTime', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Get_NextTextRow //
 ( myFP: TCFD_BGR;                        //
   const Subcommand_01 : WideString;      //
   var fAnswer : WideString               //
 ) : Integer;                             //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('119_klen_Get_NextTextRow', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
        myFP.execute_Command_ByName('119_klen_Get_NextTextRow');
        myFP.get_OutputParam_ByName('119_klen_Get_NextTextRow', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_124_klen_FindRange_ByDateTime //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const Document_Type : WideString;           //
   const From_DateTime : WideString;           //
   const To_DateTime : WideString;             //
   var ErrorCode : WideString;                 //
   var First_DocumentNumber : WideString;      //
   var Last_DocumentNumber : WideString        //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('124_klen_FindRange_ByDateTime', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('124_klen_FindRange_ByDateTime', 'Document_Type', Document_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('124_klen_FindRange_ByDateTime', 'From_DateTime', From_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('124_klen_FindRange_ByDateTime', 'To_DateTime', To_DateTime ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('124_klen_FindRange_ByDateTime', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('124_klen_FindRange_ByDateTime', 'First_DocumentNumber',First_DocumentNumber);
   myFP.get_OutputParam_ByName('124_klen_FindRange_ByDateTime', 'Last_DocumentNumber',Last_DocumentNumber);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('124_klen_FindRange_ByDateTime') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_124_klen_FindRange_ByZReports //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const Document_Type : WideString;           //
   const StartNumber : WideString;             //
   const EndNumber : WideString;               //
   var ErrorCode : WideString;                 //
   var First_DocumentNumber : WideString;      //
   var Last_DocumentNumber : WideString        //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('124_klen_FindRange_ByZReports', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('124_klen_FindRange_ByZReports', 'Document_Type', Document_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('124_klen_FindRange_ByZReports', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('124_klen_FindRange_ByZReports', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('124_klen_FindRange_ByZReports', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('124_klen_FindRange_ByZReports', 'First_DocumentNumber',First_DocumentNumber);
   myFP.get_OutputParam_ByName('124_klen_FindRange_ByZReports', 'Last_DocumentNumber',Last_DocumentNumber);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('124_klen_FindRange_ByZReports') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_124_klen_Get_Info        //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var ErrorCode : WideString;            //
   var isValid : WideString;              //
   var isCurrent : WideString;            //
   var ID_Number : WideString;            //
   var Klen_Number : WideString;          //
   var Activation_DT : WideString;        //
   var SD_SerialNumber : WideString;      //
   var First_ZReportNumber : WideString;  //
   var Last_ZReportNumber : WideString;   //
   var First_DocumentNumber : WideString; //
   var Last_DocumentNumber : WideString;  //
   var Size_Total : WideString;           //
   var Size_Used : WideString             //
 ) : Integer;                             //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'isValid',isValid);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'isCurrent',isCurrent);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'ID_Number',ID_Number);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'Klen_Number',Klen_Number);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'Activation_DT',Activation_DT);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'SD_SerialNumber',SD_SerialNumber);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'First_ZReportNumber',First_ZReportNumber);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'Last_ZReportNumber',Last_ZReportNumber);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'First_DocumentNumber',First_DocumentNumber);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'Last_DocumentNumber',Last_DocumentNumber);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'Size_Total',Size_Total);
   myFP.get_OutputParam_ByName('124_klen_Get_Info', 'Size_Used',Size_Used);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('124_klen_Get_Info', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('124_klen_Get_Info') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_125_klen_Prepare_Document //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const Input_DocNumber : WideString;     //
   const Input_DocType : WideString;       //
   var ErrorCode : WideString;             //
   var Document_Number : WideString;       //
   var Document_Date : WideString;         //
   var Document_Type : WideString;         //
   var ZReport_Number : WideString         //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('125_klen_Prepare_Document', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('125_klen_Prepare_Document', 'Input_DocNumber', Input_DocNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('125_klen_Prepare_Document', 'Input_DocType', Input_DocType ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('125_klen_Prepare_Document', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('125_klen_Prepare_Document', 'Document_Number',Document_Number);
   myFP.get_OutputParam_ByName('125_klen_Prepare_Document', 'Document_Date',Document_Date);
   myFP.get_OutputParam_ByName('125_klen_Prepare_Document', 'Document_Type',Document_Type);
   myFP.get_OutputParam_ByName('125_klen_Prepare_Document', 'ZReport_Number',ZReport_Number);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('125_klen_Prepare_Document') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_125_klen_Prepare_DocumentInRange //
 ( myFP: TCFD_BGR;                                //
   const Option : WideString;                     //
   const Input_FromDocNumber : WideString;        //
   const Input_DocType : WideString;              //
   const Input_ToDocNumber : WideString;          //
   var ErrorCode : WideString;                    //
   var Document_Number : WideString;              //
   var Document_Date : WideString;                //
   var Document_Type : WideString;                //
   var ZReport_Number : WideString                //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('125_klen_Prepare_DocumentInRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('125_klen_Prepare_DocumentInRange', 'Input_FromDocNumber', Input_FromDocNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('125_klen_Prepare_DocumentInRange', 'Input_DocType', Input_DocType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('125_klen_Prepare_DocumentInRange', 'Input_ToDocNumber', Input_ToDocNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('125_klen_Prepare_DocumentInRange', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('125_klen_Prepare_DocumentInRange', 'Document_Number',Document_Number);
   myFP.get_OutputParam_ByName('125_klen_Prepare_DocumentInRange', 'Document_Date',Document_Date);
   myFP.get_OutputParam_ByName('125_klen_Prepare_DocumentInRange', 'Document_Type',Document_Type);
   myFP.get_OutputParam_ByName('125_klen_Prepare_DocumentInRange', 'ZReport_Number',ZReport_Number);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('125_klen_Prepare_DocumentInRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_125_klen_Get_TextRow //
 ( myFP: TCFD_BGR;                    //
   const Option : WideString;         //
   var fAnswer : WideString           //
 ) : Integer;                         //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('125_klen_Get_TextRow', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('125_klen_Get_TextRow');
        myFP.get_OutputParam_ByName('125_klen_Get_TextRow', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_125_klen_Print_Document //
 ( myFP: TCFD_BGR;                       //
   const Option : WideString;            //
   const Input_DocNumber : WideString;   //
   const Input_DocType : WideString;     //
   var ErrorCode : WideString;           //
   var Document_Number : WideString;     //
   var Document_Date : WideString;       //
   var Document_Type : WideString;       //
   var ZReport_Number : WideString       //
 ) : Integer;                            //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('125_klen_Print_Document', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('125_klen_Print_Document', 'Input_DocNumber', Input_DocNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('125_klen_Print_Document', 'Input_DocType', Input_DocType ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('125_klen_Print_Document', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('125_klen_Print_Document', 'Document_Number',Document_Number);
   myFP.get_OutputParam_ByName('125_klen_Print_Document', 'Document_Date',Document_Date);
   myFP.get_OutputParam_ByName('125_klen_Print_Document', 'Document_Type',Document_Type);
   myFP.get_OutputParam_ByName('125_klen_Print_Document', 'ZReport_Number',ZReport_Number);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('125_klen_Print_Document') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_125_klen_Get_SInfo //
 ( myFP: TCFD_BGR;                  //
   const Option : WideString;       //
   var ErrorCode : WideString;      //
   var DataField_01 : WideString;   //
   var DataField_02 : WideString;   //
   var DataField_03 : WideString;   //
   var DataField_04 : WideString;   //
   var DataField_05 : WideString;   //
   var DataField_06 : WideString;   //
   var DataField_07 : WideString;   //
   var DataField_08 : WideString;   //
   var DataField_09 : WideString;   //
   var DataField_10 : WideString;   //
   var DataField_11 : WideString;   //
   var DataField_12 : WideString;   //
   var DataField_13 : WideString;   //
   var DataField_14 : WideString;   //
   var DataField_15 : WideString;   //
   var DataField_16 : WideString;   //
   var DataField_17 : WideString    //
 ) : Integer;                       //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('125_klen_Get_SInfo', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('125_klen_Get_SInfo', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('125_klen_Get_SInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_080_other_Sound_Signal //
 ( myFP: TCFD_BGR;                      //
   const Hz : WideString;               //
   const mSec : WideString              //
 ) : Integer;                           //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('080_other_Sound_Signal', 'Hz', Hz ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('080_other_Sound_Signal', 'mSec', mSec ) <> 0 then Exit;
        myFP.execute_Command_ByName('080_other_Sound_Signal');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_083_service_Set_DecimalsAndTaxRates //
 ( myFP: TCFD_BGR;                                   //
   const inp_Multiplier : WideString;                //
   const inp_Decimals : WideString;                  //
   const inp_CurrencyName : WideString;              //
   const inp_EnabledMask : WideString;               //
   const inp_TaxA : WideString;                      //
   const inp_TaxB : WideString;                      //
   const inp_TaxC : WideString;                      //
   const inp_TaxD : WideString;                      //
   const inp_TaxE : WideString;                      //
   const inp_TaxF : WideString;                      //
   const inp_TaxG : WideString;                      //
   const inp_TaxH : WideString;                      //
   var out_Multiplier : WideString;                  //
   var out_Decimals : WideString;                    //
   var out_CurrencyName : WideString;                //
   var out_EnabledMask : WideString;                 //
   var out_TaxA : WideString;                        //
   var out_TaxB : WideString;                        //
   var out_TaxC : WideString;                        //
   var out_TaxD : WideString;                        //
   var out_TaxE : WideString;                        //
   var out_TaxF : WideString;                        //
   var out_TaxG : WideString;                        //
   var out_TaxH : WideString                         //
 ) : Integer;                                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_Multiplier', inp_Multiplier ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_Decimals', inp_Decimals ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_CurrencyName', inp_CurrencyName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_EnabledMask', inp_EnabledMask ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_TaxA', inp_TaxA ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_TaxB', inp_TaxB ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_TaxC', inp_TaxC ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_TaxD', inp_TaxD ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_TaxE', inp_TaxE ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_TaxF', inp_TaxF ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_TaxG', inp_TaxG ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'inp_TaxH', inp_TaxH ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_Multiplier',out_Multiplier);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_Decimals',out_Decimals);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_CurrencyName',out_CurrencyName);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_EnabledMask',out_EnabledMask);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_TaxA',out_TaxA);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_TaxB',out_TaxB);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_TaxC',out_TaxC);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_TaxD',out_TaxD);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_TaxE',out_TaxE);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_TaxF',out_TaxF);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_TaxG',out_TaxG);
   myFP.get_OutputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'out_TaxH',out_TaxH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('083_service_Set_DecimalsAndTaxRates') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_089_service_Set_ProductionTestArea //
 ( myFP: TCFD_BGR;                                  //
   const Option : WideString;                       //
   var ErrorCode : WideString;                      //
   var FreeRecords : WideString                     //
 ) : Integer;                                       //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('089_service_Set_ProductionTestArea', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('089_service_Set_ProductionTestArea') <> 0 then Exit;
        myFP.get_OutputParam_ByName('089_service_Set_ProductionTestArea', 'ErrorCode',ErrorCode);
        myFP.get_OutputParam_ByName('089_service_Set_ProductionTestArea', 'FreeRecords',FreeRecords);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;


end.
