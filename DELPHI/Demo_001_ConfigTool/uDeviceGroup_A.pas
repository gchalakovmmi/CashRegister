unit uDeviceGroup_A;

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
   const TextData : WideString         //
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
   const Flags : WideString;                 //
   const InputText : WideString              //
 ) : Integer;                                //


function execute_122_receipt_NonFiscalRotated_Open //
 ( myFP: TCFD_BGR;                                 //
   var RotRec : WideString                         //
 ) : Integer;                                      //


function execute_123_receipt_NonFiscalRotated_Text //
 ( myFP: TCFD_BGR;                                 //
   const InputText : WideString                    //
 ) : Integer;                                      //


function execute_124_receipt_NonFiscalRotated_Close //
 ( myFP: TCFD_BGR;                                  //
   var RotRec : WideString                          //
 ) : Integer;                                       //


function execute_046_receipt_StornoOpen_A01  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A02  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A03  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A04  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A05  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A06  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A07  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A08  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A09  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A10  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A11  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A12  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A13  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A14  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A15  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_046_receipt_StornoOpen_A16  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //


function execute_048_receipt_Fiscal_01_Open //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //


function execute_048_receipt_Fiscal_Open //
 ( myFP: TCFD_BGR;                       //
   const OperatorNumber : WideString;    //
   const OperatorPassword : WideString;  //
   const TillNumber : WideString;        //
   const UNP : WideString;               //
   var AllReceiptCount : WideString;     //
   var FiscalReceiptCount : WideString   //
 ) : Integer;                            //


function execute_048_receipt_FiscalOpen_A01 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //


function execute_048_receipt_Fiscal_02_Open //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   const UNP : WideString;                  //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //


function execute_048_receipt_FiscalOpen_A03 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   const UNP : WideString;                  //
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
   const TillNumber : WideString;         //
   const UNP : WideString;                //
   var AllReceiptCount : WideString;      //
   var FiscalReceiptCount : WideString    //
 ) : Integer;                             //


function execute_048_receipt_FiscalOpen_A04 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   const UNP : WideString;                  //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //


function execute_048_receipt_Invoice_01_Open //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   var AllReceiptCount : WideString;         //
   var FiscalReceiptCount : WideString       //
 ) : Integer;                                //


function execute_048_receipt_FiscalOpen_A02 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //


function execute_057_receipt_PrintClientInfo_01 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString                       //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_02 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString                //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_03 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString;               //
   const ReceiverName : WideString              //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_04 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString                //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_05 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString                     //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_06 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString;                    //
   const Address1 : WideString                  //
 ) : Integer;                                   //


function execute_057_receipt_PrintClientInfo_07 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
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


function execute_049_receipt_Sale_Un //
 ( myFP: TCFD_BGR;                   //
   const TextRow1 : WideString;      //
   const TextRow2 : WideString;      //
   const TaxGroup : WideString;      //
   const SinglePrice : WideString;   //
   const Quantity : WideString;      //
   const Measure : WideString        //
 ) : Integer;                        //


function execute_049_receipt_Sale_TextRow1Un //
 ( myFP: TCFD_BGR;                           //
   const TextRow1 : WideString;              //
   const TaxGroup : WideString;              //
   const SinglePrice : WideString;           //
   const Quantity : WideString;              //
   const Measure : WideString                //
 ) : Integer;                                //


function execute_049_receipt_Sale_TextRow2Un //
 ( myFP: TCFD_BGR;                           //
   const TextRow2 : WideString;              //
   const TaxGroup : WideString;              //
   const SinglePrice : WideString;           //
   const Quantity : WideString;              //
   const Measure : WideString                //
 ) : Integer;                                //


function execute_049_receipt_Sale_UnWText //
 ( myFP: TCFD_BGR;                        //
   const TaxGroup : WideString;           //
   const SinglePrice : WideString;        //
   const Quantity : WideString;           //
   const Measure : WideString             //
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
   const Quantity : WideString;                   //
   const Percent : WideString                     //
 ) : Integer;                                     //


function execute_049_receipt_Sale_UnCByPercent //
 ( myFP: TCFD_BGR;                             //
   const TextRow1 : WideString;                //
   const TextRow2 : WideString;                //
   const TaxGroup : WideString;                //
   const SinglePrice : WideString;             //
   const Quantity : WideString;                //
   const Measure : WideString;                 //
   const Percent : WideString                  //
 ) : Integer;                                  //


function execute_049_receipt_Sale_TextRow1UnCByPercent //
 ( myFP: TCFD_BGR;                                     //
   const TextRow1 : WideString;                        //
   const TaxGroup : WideString;                        //
   const SinglePrice : WideString;                     //
   const Quantity : WideString;                        //
   const Measure : WideString;                         //
   const Percent : WideString                          //
 ) : Integer;                                          //


function execute_049_receipt_Sale_TextRow2UnCByPercent //
 ( myFP: TCFD_BGR;                                     //
   const TextRow2 : WideString;                        //
   const TaxGroup : WideString;                        //
   const SinglePrice : WideString;                     //
   const Quantity : WideString;                        //
   const Measure : WideString;                         //
   const Percent : WideString                          //
 ) : Integer;                                          //


function execute_049_receipt_Sale_UnCByPercentWText //
 ( myFP: TCFD_BGR;                                  //
   const TaxGroup : WideString;                     //
   const SinglePrice : WideString;                  //
   const Quantity : WideString;                     //
   const Measure : WideString;                      //
   const Percent : WideString                       //
 ) : Integer;                                       //


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


function execute_049_receipt_Sale_UnCBySum //
 ( myFP: TCFD_BGR;                         //
   const TextRow1 : WideString;            //
   const TextRow2 : WideString;            //
   const TaxGroup : WideString;            //
   const SinglePrice : WideString;         //
   const Quantity : WideString;            //
   const Measure : WideString;             //
   const Abs : WideString                  //
 ) : Integer;                              //


function execute_049_receipt_Sale_TextRow1UnCBySum //
 ( myFP: TCFD_BGR;                                 //
   const TextRow1 : WideString;                    //
   const TaxGroup : WideString;                    //
   const SinglePrice : WideString;                 //
   const Quantity : WideString;                    //
   const Measure : WideString;                     //
   const Abs : WideString                          //
 ) : Integer;                                      //


function execute_049_receipt_Sale_TextRow2UnCBySum //
 ( myFP: TCFD_BGR;                                 //
   const TextRow2 : WideString;                    //
   const TaxGroup : WideString;                    //
   const SinglePrice : WideString;                 //
   const Quantity : WideString;                    //
   const Measure : WideString;                     //
   const Abs : WideString                          //
 ) : Integer;                                      //


function execute_049_receipt_Sale_UnCBySumWText //
 ( myFP: TCFD_BGR;                              //
   const TaxGroup : WideString;                 //
   const SinglePrice : WideString;              //
   const Quantity : WideString;                 //
   const Measure : WideString;                  //
   const Abs : WideString                       //
 ) : Integer;                                   //


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


function execute_049_receipt_DSale_Un //
 ( myFP: TCFD_BGR;                    //
   const TextRow1 : WideString;       //
   const TextRow2 : WideString;       //
   const Department : WideString;     //
   const SinglePrice : WideString;    //
   const Quantity : WideString;       //
   const Measure : WideString         //
 ) : Integer;                         //


function execute_049_receipt_DSale_TextRow1Un //
 ( myFP: TCFD_BGR;                            //
   const TextRow1 : WideString;               //
   const Department : WideString;             //
   const SinglePrice : WideString;            //
   const Quantity : WideString;               //
   const Measure : WideString                 //
 ) : Integer;                                 //


function execute_049_receipt_DSale_TextRow2Un //
 ( myFP: TCFD_BGR;                            //
   const TextRow2 : WideString;               //
   const Department : WideString;             //
   const SinglePrice : WideString;            //
   const Quantity : WideString;               //
   const Measure : WideString                 //
 ) : Integer;                                 //


function execute_049_receipt_DSale_UnWText //
 ( myFP: TCFD_BGR;                         //
   const Department : WideString;          //
   const SinglePrice : WideString;         //
   const Quantity : WideString;            //
   const Measure : WideString              //
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


function execute_049_receipt_DSale_UnCByPercent //
 ( myFP: TCFD_BGR;                              //
   const TextRow1 : WideString;                 //
   const TextRow2 : WideString;                 //
   const Department : WideString;               //
   const SinglePrice : WideString;              //
   const Quantity : WideString;                 //
   const Measure : WideString;                  //
   const Percent : WideString                   //
 ) : Integer;                                   //


function execute_049_receipt_DSale_TextRow1UnCByPercent //
 ( myFP: TCFD_BGR;                                      //
   const TextRow1 : WideString;                         //
   const Department : WideString;                       //
   const SinglePrice : WideString;                      //
   const Quantity : WideString;                         //
   const Measure : WideString;                          //
   const Percent : WideString                           //
 ) : Integer;                                           //


function execute_049_receipt_DSale_TextRow2UnCByPercent //
 ( myFP: TCFD_BGR;                                      //
   const TextRow2 : WideString;                         //
   const Department : WideString;                       //
   const SinglePrice : WideString;                      //
   const Quantity : WideString;                         //
   const Measure : WideString;                          //
   const Percent : WideString                           //
 ) : Integer;                                           //


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


function execute_049_receipt_DSale_UnCBySum //
 ( myFP: TCFD_BGR;                          //
   const TextRow1 : WideString;             //
   const TextRow2 : WideString;             //
   const Department : WideString;           //
   const SinglePrice : WideString;          //
   const Quantity : WideString;             //
   const Measure : WideString;              //
   const Abs : WideString                   //
 ) : Integer;                               //


function execute_049_receipt_DSale_TextRow1UnCBySum //
 ( myFP: TCFD_BGR;                                  //
   const TextRow1 : WideString;                     //
   const Department : WideString;                   //
   const SinglePrice : WideString;                  //
   const Quantity : WideString;                     //
   const Measure : WideString;                      //
   const Abs : WideString                           //
 ) : Integer;                                       //


function execute_049_receipt_DSale_TextRow2UnCBySum //
 ( myFP: TCFD_BGR;                                  //
   const TextRow2 : WideString;                     //
   const Department : WideString;                   //
   const SinglePrice : WideString;                  //
   const Quantity : WideString;                     //
   const Measure : WideString;                      //
   const Abs : WideString                           //
 ) : Integer;                                       //


function execute_049_receipt_DSale_UnCBySumWText //
 ( myFP: TCFD_BGR;                               //
   const Department : WideString;                //
   const SinglePrice : WideString;               //
   const Quantity : WideString;                  //
   const Measure : WideString;                   //
   const Abs : WideString                        //
 ) : Integer;                                    //


function execute_052_receipt_DisplaySale //
 ( myFP: TCFD_BGR;                       //
   const TextRow : WideString;           //
   const TaxGroup : WideString;          //
   const SinglePrice : WideString;       //
   const Quantity : WideString           //
 ) : Integer;                            //


function execute_052_receipt_DisplaySale_Un //
 ( myFP: TCFD_BGR;                          //
   const TextRow : WideString;              //
   const TaxGroup : WideString;             //
   const SinglePrice : WideString;          //
   const Quantity : WideString;             //
   const Measure : WideString               //
 ) : Integer;                               //


function execute_052_receipt_DisplaySale_CByPercent //
 ( myFP: TCFD_BGR;                                  //
   const TextRow : WideString;                      //
   const TaxGroup : WideString;                     //
   const SinglePrice : WideString;                  //
   const Quantity : WideString;                     //
   const Percent : WideString                       //
 ) : Integer;                                       //


function execute_052_receipt_DisplaySale_UnCByPercent //
 ( myFP: TCFD_BGR;                                    //
   const TextRow : WideString;                        //
   const TaxGroup : WideString;                       //
   const SinglePrice : WideString;                    //
   const Quantity : WideString;                       //
   const Measure : WideString;                        //
   const Percent : WideString                         //
 ) : Integer;                                         //


function execute_052_receipt_DisplaySale_CBySum //
 ( myFP: TCFD_BGR;                              //
   const TextRow : WideString;                  //
   const TaxGroup : WideString;                 //
   const SinglePrice : WideString;              //
   const Quantity : WideString;                 //
   const Abs : WideString                       //
 ) : Integer;                                   //


function execute_052_receipt_DisplaySale_UnCBySum //
 ( myFP: TCFD_BGR;                                //
   const TextRow : WideString;                    //
   const TaxGroup : WideString;                   //
   const SinglePrice : WideString;                //
   const Quantity : WideString;                   //
   const Measure : WideString;                    //
   const Abs : WideString                         //
 ) : Integer;                                     //


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


function execute_052_receipt_DisplayDSale_Un //
 ( myFP: TCFD_BGR;                           //
   const TextRow : WideString;               //
   const Department : WideString;            //
   const SinglePrice : WideString;           //
   const Quantity : WideString;              //
   const Measure : WideString                //
 ) : Integer;                                //


function execute_052_receipt_DisplayDSale_CByPercent //
 ( myFP: TCFD_BGR;                                   //
   const TextRow : WideString;                       //
   const Department : WideString;                    //
   const SinglePrice : WideString;                   //
   const Quantity : WideString;                      //
   const Percent : WideString                        //
 ) : Integer;                                        //


function execute_052_receipt_DisplayDSale_UnCByPercent //
 ( myFP: TCFD_BGR;                                     //
   const TextRow : WideString;                         //
   const Department : WideString;                      //
   const SinglePrice : WideString;                     //
   const Quantity : WideString;                        //
   const Measure : WideString;                         //
   const Percent : WideString                          //
 ) : Integer;                                          //


function execute_052_receipt_DisplayDSale_CBySum //
 ( myFP: TCFD_BGR;                               //
   const TextRow : WideString;                   //
   const Department : WideString;                //
   const SinglePrice : WideString;               //
   const Quantity : WideString;                  //
   const Abs : WideString                        //
 ) : Integer;                                    //


function execute_052_receipt_DisplayDSale_UnCBySum //
 ( myFP: TCFD_BGR;                                 //
   const TextRow : WideString;                     //
   const Department : WideString;                  //
   const SinglePrice : WideString;                 //
   const Quantity : WideString;                    //
   const Measure : WideString;                     //
   const Abs : WideString                          //
 ) : Integer;                                      //


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


function execute_058_receipt_PLUSale_Un //
 ( myFP: TCFD_BGR;                      //
   const Target_PLU : WideString;       //
   const Quantity : WideString;         //
   const Measure : WideString           //
 ) : Integer;                           //


function execute_058_receipt_PLUSale_UnCByPercent //
 ( myFP: TCFD_BGR;                                //
   const Target_PLU : WideString;                 //
   const Quantity : WideString;                   //
   const Measure : WideString;                    //
   const Percent : WideString                     //
 ) : Integer;                                     //


function execute_058_receipt_PLUSale_UnCBySum //
 ( myFP: TCFD_BGR;                            //
   const Target_PLU : WideString;             //
   const Quantity : WideString;               //
   const Measure : WideString;                //
   const Abs : WideString                     //
 ) : Integer;                                 //


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


function execute_058_receipt_PLUDep_Sale_Un //
 ( myFP: TCFD_BGR;                          //
   const Target_PLU : WideString;           //
   const Department : WideString;           //
   const Quantity : WideString;             //
   const Measure : WideString               //
 ) : Integer;                               //


function execute_058_receipt_PLUDep_Sale_UnCByPercent //
 ( myFP: TCFD_BGR;                                    //
   const Target_PLU : WideString;                     //
   const Department : WideString;                     //
   const Quantity : WideString;                       //
   const Measure : WideString;                        //
   const Percent : WideString                         //
 ) : Integer;                                         //


function execute_058_receipt_PLUDep_Sale_UnCBySum //
 ( myFP: TCFD_BGR;                                //
   const Target_PLU : WideString;                 //
   const Department : WideString;                 //
   const Quantity : WideString;                   //
   const Measure : WideString;                    //
   const Abs : WideString                         //
 ) : Integer;                                     //


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


function execute_058_receipt_DisplayPLUSale_Un //
 ( myFP: TCFD_BGR;                             //
   const DChar : WideString;                   //
   const Target_PLU : WideString;              //
   const Quantity : WideString;                //
   const Measure : WideString                  //
 ) : Integer;                                  //


function execute_058_receipt_DisplayPLUSale_UnCByPercent //
 ( myFP: TCFD_BGR;                                       //
   const DChar : WideString;                             //
   const Target_PLU : WideString;                        //
   const Quantity : WideString;                          //
   const Measure : WideString;                           //
   const Percent : WideString                            //
 ) : Integer;                                            //


function execute_058_receipt_DisplayPLUSale_UnCBySum //
 ( myFP: TCFD_BGR;                                   //
   const DChar : WideString;                         //
   const Target_PLU : WideString;                    //
   const Quantity : WideString;                      //
   const Measure : WideString;                       //
   const Abs : WideString                            //
 ) : Integer;                                        //


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


function execute_058_receipt_DisplayDepPLU_SaleUn //
 ( myFP: TCFD_BGR;                                //
   const DChar : WideString;                      //
   const Target_PLU : WideString;                 //
   const Department : WideString;                 //
   const Quantity : WideString;                   //
   const Measure : WideString                     //
 ) : Integer;                                     //


function execute_058_receipt_DisplayDepPLU_SaleUn_CByPercent //
 ( myFP: TCFD_BGR;                                           //
   const DChar : WideString;                                 //
   const Target_PLU : WideString;                            //
   const Department : WideString;                            //
   const Quantity : WideString;                              //
   const Measure : WideString;                               //
   const Percent : WideString                                //
 ) : Integer;                                                //


function execute_058_receipt_DisplayDepPLU_SaleUn_CBySum //
 ( myFP: TCFD_BGR;                                       //
   const DChar : WideString;                             //
   const Target_PLU : WideString;                        //
   const Department : WideString;                        //
   const Quantity : WideString;                          //
   const Measure : WideString;                           //
   const Abs : WideString                                //
 ) : Integer;                                            //


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


function execute_044_receipt_Paper_Feed //
 ( myFP: TCFD_BGR;                      //
   const LinesCount : WideString        //
 ) : Integer;                           //


function execute_045_receipt_Paper_Cut
 ( myFP: TCFD_BGR
 ) : Integer; //


function execute_054_receipt_Fiscal_Text //
 ( myFP: TCFD_BGR;                       //
   const InputText : WideString          //
 ) : Integer;                            //


function execute_054_receipt_PFiscalText_01 //
 ( myFP: TCFD_BGR;                          //
   const Font : WideString;                 //
   const Flags : WideString;                //
   const InputText : WideString             //
 ) : Integer;                               //


function execute_054_receipt_PFiscalText_02 //
 ( myFP: TCFD_BGR;                          //
   const Font : WideString;                 //
   const InputText : WideString             //
 ) : Integer;                               //


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


function execute_084_receipt_Print_Barcode_01 //
 ( myFP: TCFD_BGR;                            //
   const BarcodeType : WideString;            //
   const Alignment : WideString;              //
   const BarcodeData : WideString             //
 ) : Integer;                                 //


function execute_084_receipt_Print_Barcode_02 //
 ( myFP: TCFD_BGR;                            //
   const BarcodeType : WideString;            //
   const Alignment : WideString;              //
   const BarcodeData : WideString             //
 ) : Integer;                                 //


function execute_092_receipt_Separating_Line //
 ( myFP: TCFD_BGR;                           //
   const LineType : WideString               //
 ) : Integer;                                //


function execute_092_receipt_Separating_LineW //
 ( myFP: TCFD_BGR;                            //
   const LineType : WideString;               //
   const Linemask : WideString                //
 ) : Integer;                                 //


function execute_103_receipt_Current_Info //
 ( myFP: TCFD_BGR;                        //
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
   var InvNumber : WideString             //
 ) : Integer;                             //


function execute_106_receipt_Drawer_KickOut //
 ( myFP: TCFD_BGR;                          //
   const mSec : WideString                  //
 ) : Integer;                               //


function execute_109_receipt_Print_Duplicate //
 ( myFP: TCFD_BGR;                           //
   const Count : WideString                  //
 ) : Integer;                                //


function execute_034_report_Service_Contracts //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   var fAnswer : WideString                   //
 ) : Integer;                                 //


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


function execute_069_report_DailyClosure_02 //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const WithoutClearOpInfo : WideString;   //
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


function execute_073_report_FMByNumRange_SHA1 //
 ( myFP: TCFD_BGR;                            //
   const StartNumber : WideString;            //
   const EndNumber : WideString               //
 ) : Integer;                                 //


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


function execute_094_report_FMByDateRange_SHA1 //
 ( myFP: TCFD_BGR;                             //
   const FromDate : WideString;                //
   const ToDate : WideString                   //
 ) : Integer;                                  //


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


function execute_108_report_ExtDailyClosure_02 //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const WithoutClearOpInfo : WideString;      //
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


function execute_117_report_DailyClosureByDepartments_02 //
 ( myFP: TCFD_BGR;                                       //
   const Option : WideString;                            //
   const WithoutClearOpInfo : WideString;                //
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


function execute_118_report_DailyClosureByDepartmentsAndItems_02 //
 ( myFP: TCFD_BGR;                                               //
   const Option : WideString;                                    //
   const WithoutClearOpInfo : WideString;                        //
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


function execute_036_config_SetLAN    //
 ( myFP: TCFD_BGR;                    //
   const IPAddress : WideString;      //
   const SubnetMask : WideString;     //
   const PortNumber : WideString;     //
   const DefaultGateway : WideString; //
   const DHCP : WideString;           //
   const MACAddress : WideString;     //
   var fAnswer : WideString           //
 ) : Integer;                         //


function execute_041_config_Set_Switches //
 ( myFP: TCFD_BGR;                       //
   const Switches : WideString;          //
   var ErrorCode : WideString            //
 ) : Integer;                            //


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


function execute_043_config_Set_BarcodeHeight //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Value : WideString                   //
 ) : Integer;                                 //


function execute_043_config_Set_AutoCutting //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const Off_On : WideString                //
 ) : Integer;                               //


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


function execute_043_config_Set_FontSize //
 ( myFP: TCFD_BGR;                       //
   const Option : WideString;            //
   const Value : WideString              //
 ) : Integer;                            //


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


function execute_043_config_enable_PrintSuppression //
 ( myFP: TCFD_BGR;                                  //
   const Option : WideString;                       //
   const On : WideString;                           //
   const Lines : WideString;                        //
   const Seconds : WideString                       //
 ) : Integer;                                       //


function execute_043_config_disable_PrintSuppression //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   const Off : WideString                            //
 ) : Integer;                                        //


function execute_043_config_Set_ExtraSpace //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const Value : WideString                //
 ) : Integer;                              //


function execute_043_config_Set_SIM //
 ( myFP: TCFD_BGR;                  //
   const Option : WideString;       //
   const IndexValue : WideString    //
 ) : Integer;                       //


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


function execute_043_config_Set_WarningTimeRange //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const WarnTimeRec : WideString;               //
   const WarnTimeGInfo : WideString              //
 ) : Integer;                                    //


function execute_043_config_Set_FeedButton //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const Off_On : WideString               //
 ) : Integer;                              //


function execute_043_config_Set_OptionalErrorText //
 ( myFP: TCFD_BGR;                                //
   const Option : WideString;                     //
   const Off_On : WideString                      //
 ) : Integer;                                     //


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


function execute_075_config_Restore_PrintSuppression //
 ( myFP: TCFD_BGR;                                   //
   const RestoreOption : WideString                  //
 ) : Integer;                                        //


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


function execute_034_info_Service_Contracts //
 ( myFP: TCFD_BGR;                          //
   var fAnswer : WideString                 //
 ) : Integer;                               //


function execute_036_info_Get_LANSettings //
 ( myFP: TCFD_BGR;                        //
   var IPAddress : WideString;            //
   var SubnetMask : WideString;           //
   var PortNumber : WideString;           //
   var DefaultGateway : WideString;       //
   var DHCP : WideString;                 //
   var MACAddress : WideString            //
 ) : Integer;                             //


function execute_043_info_Get_PrintOption //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   const TargetOption : WideString;       //
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


function execute_064_info_Get_LastFiscRecord_01 //
 ( myFP: TCFD_BGR;                              //
   var ErrorCode : WideString;                  //
   var LastFRecordNumber : WideString;          //
   var TaxA : WideString;                       //
   var TaxB : WideString;                       //
   var TaxC : WideString;                       //
   var TaxD : WideString;                       //
   var TaxE : WideString;                       //
   var TaxF : WideString;                       //
   var TaxG : WideString;                       //
   var TaxH : WideString;                       //
   var Date : WideString                        //
 ) : Integer;                                   //


function execute_065_info_Get_AdditionalDailyInfo_01 //
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


function execute_070_info_Get_CashIn_CashOut //
 ( myFP: TCFD_BGR;                           //
   var ErrorCode : WideString;               //
   var CashSum : WideString;                 //
   var ServIn : WideString;                  //
   var ServOut : WideString                  //
 ) : Integer;                                //


function execute_071_info_Print_Diagnostic_0
 ( myFP: TCFD_BGR
 ) : Integer; //


function execute_074_info_Get_StatusBytes //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var StatusBytes : WideString           //
 ) : Integer;                             //


function execute_074_info_Get_NotPrintedRowsCount //
 ( myFP: TCFD_BGR;                                //
   const Option : WideString;                     //
   var NLines : WideString                        //
 ) : Integer;                                     //


function execute_074_info_Get_NRADocuments     //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   var LastPrintDoc : WideString;              //
   var NLastSentDoc : WideString;              //
   var DTLastSentDoc : WideString;             //
   var MinFromLastSuccessSent : WideString;    //
   var NFirstNotSentDoc : WideString;          //
   var DTFirstNotSentDoc : WideString;         //
   var MinFromFirstNotSuccessSent : WideString //
 ) : Integer;                                  //


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


function execute_081_info_Get_VoltageAndTemperature //
 ( myFP: TCFD_BGR;                                  //
   const Voltage : WideString;                      //
   const Temperature : WideString                   //
 ) : Integer;                                       //


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


function execute_088_info_Get_DepartmentInfo //
 ( myFP: TCFD_BGR;                           //
   const DepartmentNumber : WideString;      //
   var OutputCode : WideString;              //
   var TaxGroup : WideString;                //
   var RecSales : WideString;                //
   var RecSum : WideString;                  //
   var TotSales : WideString;                //
   var TotSum : WideString;                  //
   var Line1 : WideString;                   //
   var Line2 : WideString                    //
 ) : Integer;                                //


function execute_090_info_Get_DiagnosticInfo //
 ( myFP: TCFD_BGR;                           //
   var DeviceName : WideString;              //
   var Firmware : WideString;                //
   var CheckSum : WideString;                //
   var Switches : WideString;                //
   var SerialNumber : WideString;            //
   var FiscalMemoryNumber : WideString       //
 ) : Integer;                                //


function execute_093_info_Get_DailyCorrections //
 ( myFP: TCFD_BGR;                             //
   var Count_Discounts : WideString;           //
   var Sum_Discounts : WideString;             //
   var Count_Surcharges : WideString;          //
   var Sum_Surcharges : WideString             //
 ) : Integer;                                  //


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
   var InvNum : WideString                       //
 ) : Integer;                                    //


function execute_110_info_Get_AdditionalDailyInfo_02 //
 ( myFP: TCFD_BGR;                                   //
   var Cash : WideString;                            //
   var Credit : WideString;                          //
   var Debit : WideString;                           //
   var Cheque : WideString;                          //
   var Payment_01 : WideString;                      //
   var Payment_02 : WideString;                      //
   var Payment_03 : WideString;                      //
   var Payment_04 : WideString;                      //
   var Closure : WideString;                         //
   var Next_FReceiptNumber : WideString              //
 ) : Integer;                                        //


function execute_110_info_Get_AdditionalDailyInfo_03 //
 ( myFP: TCFD_BGR;                                   //
   var Cash : WideString;                            //
   var Credit : WideString;                          //
   var Debit : WideString;                           //
   var Cheque : WideString;                          //
   var Payment_01 : WideString;                      //
   var Payment_02 : WideString;                      //
   var Payment_03 : WideString;                      //
   var Payment_04 : WideString;                      //
   var Closure : WideString;                         //
   var Next_FReceiptNumber : WideString;             //
   var Payment_05 : WideString;                      //
   var Payment_06 : WideString;                      //
   var Payment_07 : WideString;                      //
   var Payment_08 : WideString;                      //
   var Payment_09 : WideString;                      //
   var Payment_10 : WideString;                      //
   var Payment_11 : WideString                       //
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


function execute_114_info_Get_RAMResetDateTime //
 ( myFP: TCFD_BGR;                             //
   const Closure1 : WideString;                //
   const Option : WideString;                  //
   var ErrorCode : WideString;                 //
   var DateTime : WideString                   //
 ) : Integer;                                  //


function execute_114_info_Get_AdditionalPayments //
 ( myFP: TCFD_BGR;                               //
   const Closure1 : WideString;                  //
   const Option : WideString;                    //
   const Closure2 : WideString;                  //
   var ErrorCode : WideString;                   //
   var CashPayment_Sum : WideString;             //
   var DebitCardPayment_Sum : WideString;        //
   var CreditCardPayment_Sum : WideString;       //
   var CheckPayment_Sum : WideString;            //
   var Payment01_Sum : WideString;               //
   var Payment02_Sum : WideString;               //
   var Payment03_Sum : WideString;               //
   var Payment04_Sum : WideString;               //
   var Payment05_Sum : WideString;               //
   var Payment06_Sum : WideString;               //
   var Payment07_Sum : WideString;               //
   var Payment08_Sum : WideString;               //
   var Payment09_Sum : WideString;               //
   var Payment10_Sum : WideString;               //
   var Payment11_Sum : WideString                //
 ) : Integer;                                    //


function execute_114_info_Get_Corrections //
 ( myFP: TCFD_BGR;                        //
   const Closure1 : WideString;           //
   const Option : WideString;             //
   const Closure2 : WideString;           //
   var ErrorCode : WideString;            //
   var Discounts_Count : WideString;      //
   var Discounts_Sum : WideString;        //
   var Surcharges_Count : WideString;     //
   var Surcharges_Sum : WideString;       //
   var Voided_Count : WideString;         //
   var Voided_Sum : WideString;           //
   var Canceled_Count : WideString;       //
   var Canceled_Sum : WideString          //
 ) : Integer;                             //


function execute_114_info_Get_CashInCashOut //
 ( myFP: TCFD_BGR;                          //
   const Closure1 : WideString;             //
   const Option : WideString;               //
   const Closure2 : WideString;             //
   var ErrorCode : WideString;              //
   var CashIn_Count : WideString;           //
   var CashIn_Sum : WideString;             //
   var CashOut_Count : WideString;          //
   var CashOut_Sum : WideString             //
 ) : Integer;                               //


function execute_114_info_Get_Turnover //
 ( myFP: TCFD_BGR;                     //
   const Closure1 : WideString;        //
   const Option : WideString;          //
   var ErrorCode : WideString;         //
   var Turnover_Sum : WideString;      //
   var Turnover_VATSum : WideString    //
 ) : Integer;                          //


function execute_119_klen_Print_Validation //
 ( myFP: TCFD_BGR;                         //
   const Subcommand_01 : WideString;       //
   const Subcommand_02 : WideString        //
 ) : Integer;                              //


function execute_119_klen_Print_SHA1 //
 ( myFP: TCFD_BGR;                   //
   const Subcommand_01 : WideString; //
   const Subcommand_02 : WideString  //
 ) : Integer;                        //


function execute_119_klen_Get_KLENInfo_ZReport //
 ( myFP: TCFD_BGR;                             //
   const Subcommand_01 : WideString;           //
   const Subcommand_02 : WideString;           //
   const ZReportNumber : WideString;           //
   var ErrorCode : WideString;                 //
   var FDocNumber : WideString;                //
   var DateTime : WideString;                  //
   var ZReportSHA1 : WideString                //
 ) : Integer;                                  //


function execute_119_klen_Get_ZReportInfo //
 ( myFP: TCFD_BGR;                        //
   const Subcommand_01 : WideString;      //
   const Subcommand_02 : WideString;      //
   const ZReportNumber : WideString;      //
   var ErrorCode : WideString;            //
   var DocumentsCount : WideString;       //
   var BytesCount : WideString;           //
   var SHA1_KLEN : WideString;            //
   var SHA1_Calculated : WideString       //
 ) : Integer;                             //


function execute_119_klen_Get_Info        //
 ( myFP: TCFD_BGR;                        //
   const Subcommand_01 : WideString;      //
   const Subcommand_02 : WideString;      //
   var ErrorCode : WideString;            //
   var Size_Total : WideString;           //
   var Size_Used : WideString;            //
   var First_ZReportNumber : WideString;  //
   var Last_ZReportNumber : WideString;   //
   var First_DocumentNumber : WideString; //
   var Last_DocumentNumber : WideString   //
 ) : Integer;                             //


function execute_119_klen_Find_Document //
 ( myFP: TCFD_BGR;                      //
   const Subcommand_01 : WideString;    //
   const DocumentType : WideString;     //
   const DocumentNumber : WideString;   //
   var fAnswer : WideString             //
 ) : Integer;                           //


function execute_119_klen_Set_DocsRange //
 ( myFP: TCFD_BGR;                      //
   const Subcommand_01 : WideString;    //
   const DocumentType : WideString;     //
   const StartNumber : WideString;      //
   const EndNumber : WideString;        //
   var fAnswer : WideString             //
 ) : Integer;                           //


function execute_119_klen_Set_DocsRange_InZReport_01 //
 ( myFP: TCFD_BGR;                                   //
   const Subcommand_01 : WideString;                 //
   const DocumentType : WideString;                  //
   const ZReportNumber : WideString;                 //
   var fAnswer : WideString                          //
 ) : Integer;                                        //


function execute_119_klen_Set_DocsRange_InZReport_02 //
 ( myFP: TCFD_BGR;                                   //
   const Subcommand_01 : WideString;                 //
   const DocumentType : WideString;                  //
   const ZReportNumber : WideString;                 //
   const DocumentNumber : WideString;                //
   var fAnswer : WideString                          //
 ) : Integer;                                        //


function execute_119_klen_Set_DocsRange_InZReport //
 ( myFP: TCFD_BGR;                                //
   const Subcommand_01 : WideString;              //
   const DocumentType : WideString;               //
   const ZReportNumber : WideString;              //
   const StartNumber : WideString;                //
   const EndNumber : WideString;                  //
   var fAnswer : WideString                       //
 ) : Integer;                                     //


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


function execute_119_klen_Print_Document //
 ( myFP: TCFD_BGR;                       //
   const Subcommand_01 : WideString;     //
   const FontSize : WideString;          //
   const DocumentType : WideString;      //
   const DocumentNumber : WideString;    //
   var fAnswer : WideString              //
 ) : Integer;                            //


function execute_119_klen_Print_DocsInRange //
 ( myFP: TCFD_BGR;                          //
   const Subcommand_01 : WideString;        //
   const FontSize : WideString;             //
   const DocumentType : WideString;         //
   const StartNumber : WideString;          //
   const EndNumber : WideString;            //
   var fAnswer : WideString                 //
 ) : Integer;                               //


function execute_119_klen_Print_DocsInRange_InZReport //
 ( myFP: TCFD_BGR;                                    //
   const Subcommand_01 : WideString;                  //
   const FontSize : WideString;                       //
   const DocumentType : WideString;                   //
   const ZReportNumber : WideString;                  //
   const StartNumber : WideString;                    //
   const EndNumber : WideString;                      //
   var fAnswer : WideString                           //
 ) : Integer;                                         //


function execute_119_klen_Print_DocsFromDateToDate //
 ( myFP: TCFD_BGR;                                 //
   const Subcommand_01 : WideString;               //
   const FontSize : WideString;                    //
   const DocumentType : WideString;                //
   const From_DateTime : WideString;               //
   const To_DateTime : WideString;                 //
   var fAnswer : WideString                        //
 ) : Integer;                                      //


function execute_119_klen_SInfo_W_ByNumber //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const StartNumber : WideString;         //
   var DataField_01 : WideString;          //
   var DataField_02 : WideString;          //
   var DataField_03 : WideString;          //
   var DataField_04 : WideString;          //
   var DataField_05 : WideString;          //
   var DataField_06 : WideString;          //
   var DataField_07 : WideString;          //
   var DataField_08 : WideString;          //
   var DataField_09 : WideString;          //
   var DataField_10 : WideString;          //
   var DataField_11 : WideString;          //
   var DataField_12 : WideString;          //
   var DataField_13 : WideString;          //
   var DataField_14 : WideString;          //
   var DataField_15 : WideString;          //
   var DataField_16 : WideString;          //
   var DataField_17 : WideString           //
 ) : Integer;                              //


function execute_119_klen_SInfo_W_ByNumbersRange //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const StartNumber : WideString;               //
   const EndNumber : WideString;                 //
   var DataField_01 : WideString;                //
   var DataField_02 : WideString;                //
   var DataField_03 : WideString;                //
   var DataField_04 : WideString;                //
   var DataField_05 : WideString;                //
   var DataField_06 : WideString;                //
   var DataField_07 : WideString;                //
   var DataField_08 : WideString;                //
   var DataField_09 : WideString;                //
   var DataField_10 : WideString;                //
   var DataField_11 : WideString;                //
   var DataField_12 : WideString;                //
   var DataField_13 : WideString;                //
   var DataField_14 : WideString;                //
   var DataField_15 : WideString;                //
   var DataField_16 : WideString;                //
   var DataField_17 : WideString                 //
 ) : Integer;                                    //


function execute_119_klen_SInfo_W_ByDateRange //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Option_D : WideString;               //
   const From_DateTime : WideString;          //
   const To_DateTime : WideString;            //
   var DataField_01 : WideString;             //
   var DataField_02 : WideString;             //
   var DataField_03 : WideString;             //
   var DataField_04 : WideString;             //
   var DataField_05 : WideString;             //
   var DataField_06 : WideString;             //
   var DataField_07 : WideString;             //
   var DataField_08 : WideString;             //
   var DataField_09 : WideString;             //
   var DataField_10 : WideString;             //
   var DataField_11 : WideString;             //
   var DataField_12 : WideString;             //
   var DataField_13 : WideString;             //
   var DataField_14 : WideString;             //
   var DataField_15 : WideString;             //
   var DataField_16 : WideString;             //
   var DataField_17 : WideString              //
 ) : Integer;                                 //


function execute_119_klen_SInfo_W_GetNext //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var DataField_01 : WideString;         //
   var DataField_02 : WideString;         //
   var DataField_03 : WideString;         //
   var DataField_04 : WideString;         //
   var DataField_05 : WideString;         //
   var DataField_06 : WideString;         //
   var DataField_07 : WideString;         //
   var DataField_08 : WideString;         //
   var DataField_09 : WideString;         //
   var DataField_10 : WideString;         //
   var DataField_11 : WideString;         //
   var DataField_12 : WideString;         //
   var DataField_13 : WideString;         //
   var DataField_14 : WideString;         //
   var DataField_15 : WideString;         //
   var DataField_16 : WideString;         //
   var DataField_17 : WideString          //
 ) : Integer;                             //


function execute_119_klen_SInfo_Y_ByNumber //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const StartNumber : WideString;         //
   var DataField_01 : WideString;          //
   var DataField_02 : WideString;          //
   var DataField_03 : WideString;          //
   var DataField_04 : WideString;          //
   var DataField_05 : WideString;          //
   var DataField_06 : WideString;          //
   var DataField_07 : WideString;          //
   var DataField_08 : WideString;          //
   var DataField_09 : WideString;          //
   var DataField_10 : WideString;          //
   var DataField_11 : WideString;          //
   var DataField_12 : WideString;          //
   var DataField_13 : WideString;          //
   var DataField_14 : WideString;          //
   var DataField_15 : WideString;          //
   var DataField_16 : WideString;          //
   var DataField_17 : WideString           //
 ) : Integer;                              //


function execute_119_klen_SInfo_Y_ByNumbersRange //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const StartNumber : WideString;               //
   const EndNumber : WideString;                 //
   var DataField_01 : WideString;                //
   var DataField_02 : WideString;                //
   var DataField_03 : WideString;                //
   var DataField_04 : WideString;                //
   var DataField_05 : WideString;                //
   var DataField_06 : WideString;                //
   var DataField_07 : WideString;                //
   var DataField_08 : WideString;                //
   var DataField_09 : WideString;                //
   var DataField_10 : WideString;                //
   var DataField_11 : WideString;                //
   var DataField_12 : WideString;                //
   var DataField_13 : WideString;                //
   var DataField_14 : WideString;                //
   var DataField_15 : WideString;                //
   var DataField_16 : WideString;                //
   var DataField_17 : WideString                 //
 ) : Integer;                                    //


function execute_119_klen_SInfo_Y_ByDateRange //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Option_D : WideString;               //
   const From_DateTime : WideString;          //
   const To_DateTime : WideString;            //
   var DataField_01 : WideString;             //
   var DataField_02 : WideString;             //
   var DataField_03 : WideString;             //
   var DataField_04 : WideString;             //
   var DataField_05 : WideString;             //
   var DataField_06 : WideString;             //
   var DataField_07 : WideString;             //
   var DataField_08 : WideString;             //
   var DataField_09 : WideString;             //
   var DataField_10 : WideString;             //
   var DataField_11 : WideString;             //
   var DataField_12 : WideString;             //
   var DataField_13 : WideString;             //
   var DataField_14 : WideString;             //
   var DataField_15 : WideString;             //
   var DataField_16 : WideString;             //
   var DataField_17 : WideString              //
 ) : Integer;                                 //


function execute_119_klen_SInfo_Y_GetNext //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var DataField_01 : WideString;         //
   var DataField_02 : WideString;         //
   var DataField_03 : WideString;         //
   var DataField_04 : WideString;         //
   var DataField_05 : WideString;         //
   var DataField_06 : WideString;         //
   var DataField_07 : WideString;         //
   var DataField_08 : WideString;         //
   var DataField_09 : WideString;         //
   var DataField_10 : WideString;         //
   var DataField_11 : WideString;         //
   var DataField_12 : WideString;         //
   var DataField_13 : WideString;         //
   var DataField_14 : WideString;         //
   var DataField_15 : WideString;         //
   var DataField_16 : WideString;         //
   var DataField_17 : WideString          //
 ) : Integer;                             //


function execute_119_klen_SInfo_V_ByNumber //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const StartNumber : WideString;         //
   var ErrorCode : WideString;             //
   var DataField_01 : WideString           //
 ) : Integer;                              //


function execute_119_klen_SInfo_V_ByNumbersRange //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const StartNumber : WideString;               //
   const EndNumber : WideString;                 //
   var DataField_01 : WideString;                //
   var DataField_02 : WideString;                //
   var DataField_03 : WideString;                //
   var DataField_04 : WideString;                //
   var DataField_05 : WideString;                //
   var DataField_06 : WideString;                //
   var DataField_07 : WideString;                //
   var DataField_08 : WideString;                //
   var DataField_09 : WideString;                //
   var DataField_10 : WideString;                //
   var DataField_11 : WideString;                //
   var DataField_12 : WideString;                //
   var DataField_13 : WideString;                //
   var DataField_14 : WideString;                //
   var DataField_15 : WideString;                //
   var DataField_16 : WideString;                //
   var DataField_17 : WideString                 //
 ) : Integer;                                    //


function execute_119_klen_SInfo_V_ByDateRange //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Option_D : WideString;               //
   const From_DateTime : WideString;          //
   const To_DateTime : WideString;            //
   var DataField_01 : WideString;             //
   var DataField_02 : WideString;             //
   var DataField_03 : WideString;             //
   var DataField_04 : WideString;             //
   var DataField_05 : WideString;             //
   var DataField_06 : WideString;             //
   var DataField_07 : WideString;             //
   var DataField_08 : WideString;             //
   var DataField_09 : WideString;             //
   var DataField_10 : WideString;             //
   var DataField_11 : WideString;             //
   var DataField_12 : WideString;             //
   var DataField_13 : WideString;             //
   var DataField_14 : WideString;             //
   var DataField_15 : WideString;             //
   var DataField_16 : WideString;             //
   var DataField_17 : WideString              //
 ) : Integer;                                 //


function execute_119_klen_SInfo_V_GetNext //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var DataField_01 : WideString;         //
   var DataField_02 : WideString;         //
   var DataField_03 : WideString;         //
   var DataField_04 : WideString;         //
   var DataField_05 : WideString;         //
   var DataField_06 : WideString;         //
   var DataField_07 : WideString;         //
   var DataField_08 : WideString;         //
   var DataField_09 : WideString;         //
   var DataField_10 : WideString;         //
   var DataField_11 : WideString;         //
   var DataField_12 : WideString;         //
   var DataField_13 : WideString;         //
   var DataField_14 : WideString;         //
   var DataField_15 : WideString;         //
   var DataField_16 : WideString;         //
   var DataField_17 : WideString          //
 ) : Integer;                             //


function execute_119_klen_SInfo_ExV_ByNumber //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   const ExOption : WideString;              //
   const StartNumber : WideString;           //
   var DataField_01 : WideString;            //
   var DataField_02 : WideString;            //
   var DataField_03 : WideString;            //
   var DataField_04 : WideString;            //
   var DataField_05 : WideString;            //
   var DataField_06 : WideString;            //
   var DataField_07 : WideString;            //
   var DataField_08 : WideString;            //
   var DataField_09 : WideString;            //
   var DataField_10 : WideString;            //
   var DataField_11 : WideString;            //
   var DataField_12 : WideString;            //
   var DataField_13 : WideString;            //
   var DataField_14 : WideString;            //
   var DataField_15 : WideString;            //
   var DataField_16 : WideString;            //
   var DataField_17 : WideString             //
 ) : Integer;                                //


function execute_119_klen_SInfo_ExV_ByNumbersRange //
 ( myFP: TCFD_BGR;                                 //
   const Option : WideString;                      //
   const ExOption : WideString;                    //
   const StartNumber : WideString;                 //
   const EndNumber : WideString;                   //
   var DataField_01 : WideString;                  //
   var DataField_02 : WideString;                  //
   var DataField_03 : WideString;                  //
   var DataField_04 : WideString;                  //
   var DataField_05 : WideString;                  //
   var DataField_06 : WideString;                  //
   var DataField_07 : WideString;                  //
   var DataField_08 : WideString;                  //
   var DataField_09 : WideString;                  //
   var DataField_10 : WideString;                  //
   var DataField_11 : WideString;                  //
   var DataField_12 : WideString;                  //
   var DataField_13 : WideString;                  //
   var DataField_14 : WideString;                  //
   var DataField_15 : WideString;                  //
   var DataField_16 : WideString;                  //
   var DataField_17 : WideString                   //
 ) : Integer;                                      //


function execute_119_klen_SInfo_ExV_ByDateRange //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   const ExOption : WideString;                 //
   const Option_D : WideString;                 //
   const From_DateTime : WideString;            //
   const To_DateTime : WideString;              //
   var DataField_01 : WideString;               //
   var DataField_02 : WideString;               //
   var DataField_03 : WideString;               //
   var DataField_04 : WideString;               //
   var DataField_05 : WideString;               //
   var DataField_06 : WideString;               //
   var DataField_07 : WideString;               //
   var DataField_08 : WideString;               //
   var DataField_09 : WideString;               //
   var DataField_10 : WideString;               //
   var DataField_11 : WideString;               //
   var DataField_12 : WideString;               //
   var DataField_13 : WideString;               //
   var DataField_14 : WideString;               //
   var DataField_15 : WideString;               //
   var DataField_16 : WideString;               //
   var DataField_17 : WideString                //
 ) : Integer;                                   //


function execute_119_klen_SInfo_ExV_GetNext //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   var DataField_01 : WideString;           //
   var DataField_02 : WideString;           //
   var DataField_03 : WideString;           //
   var DataField_04 : WideString;           //
   var DataField_05 : WideString;           //
   var DataField_06 : WideString;           //
   var DataField_07 : WideString;           //
   var DataField_08 : WideString;           //
   var DataField_09 : WideString;           //
   var DataField_10 : WideString;           //
   var DataField_11 : WideString;           //
   var DataField_12 : WideString;           //
   var DataField_13 : WideString;           //
   var DataField_14 : WideString;           //
   var DataField_15 : WideString;           //
   var DataField_16 : WideString;           //
   var DataField_17 : WideString            //
 ) : Integer;                               //


function execute_080_other_Sound_Signal //
 ( myFP: TCFD_BGR;                      //
   const SoundData : WideString         //
 ) : Integer;                           //


function execute_072_service_Fiscalization //
 ( myFP: TCFD_BGR;                         //
   const SerialNumber : WideString;        //
   var ErrorCode : WideString              //
 ) : Integer;                              //


function execute_083_service_Set_DecimalsAndTaxRates //
 ( myFP: TCFD_BGR;                                   //
   const Mutiplier : WideString;                     //
   const Decimals : WideString;                      //
   const CurrencyName : WideString;                  //
   const EnabledMask : WideString;                   //
   const TaxA : WideString;                          //
   const TaxB : WideString;                          //
   const TaxC : WideString;                          //
   const TaxD : WideString;                          //
   const TaxE : WideString;                          //
   const TaxF : WideString;                          //
   const TaxG : WideString;                          //
   const TaxH : WideString                           //
 ) : Integer;                                        //


function execute_089_service_Set_ProductionTestArea //
 ( myFP: TCFD_BGR;                                  //
   const Option : WideString;                       //
   var ErrorCode : WideString;                      //
   var FreeRecords : WideString                     //
 ) : Integer;                                       //


function execute_091_service_Set_SerialNumber //
 ( myFP: TCFD_BGR;                            //
   const SerialNumber : WideString;           //
   const FMNumber : WideString;               //
   var ErrorCode : WideString;                //
   var Country : WideString                   //
 ) : Integer;                                 //


function execute_098_service_Set_EIK //
 ( myFP: TCFD_BGR;                   //
   const EIK_Value : WideString;     //
   const EIK_Name : WideString;      //
   var ErrorCode : WideString        //
 ) : Integer;                        //


function execute_133_service_Disable_Print //
 ( myFP: TCFD_BGR;                         //
   const Disabled : WideString             //
 ) : Integer;                              //


function execute_135_service_Test_GPRS //
 ( myFP: TCFD_BGR;                     //
   const Option : WideString;          //
   var ErrorCode : WideString;         //
   var Signal : WideString;            //
   var IMEI : WideString;              //
   var IMSI : WideString;              //
   var Oper : WideString               //
 ) : Integer;                          //



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
   const TextData : WideString         //
 ) : Integer;                          //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('100_display_Show_Text', 'TextData', TextData ) <> 0 then Exit;
        myFP.execute_Command_ByName('100_display_Show_Text');
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
   const Flags : WideString;                 //
   const InputText : WideString              //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('042_receipt_PNonFiscal_Text', 'Height', Height ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('042_receipt_PNonFiscal_Text', 'Flags', Flags ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('042_receipt_PNonFiscal_Text', 'InputText', InputText ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('042_receipt_PNonFiscal_Text');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_122_receipt_NonFiscalRotated_Open //
 ( myFP: TCFD_BGR;                                 //
   var RotRec : WideString                         //
 ) : Integer;                                      //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('122_receipt_NonFiscalRotated_Open');
        myFP.get_OutputParam_ByName('122_receipt_NonFiscalRotated_Open', 'RotRec',RotRec);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_123_receipt_NonFiscalRotated_Text //
 ( myFP: TCFD_BGR;                                 //
   const InputText : WideString                    //
 ) : Integer;                                      //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('123_receipt_NonFiscalRotated_Text', 'InputText', InputText ) <> 0 then Exit;
        myFP.execute_Command_ByName('123_receipt_NonFiscalRotated_Text');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_124_receipt_NonFiscalRotated_Close //
 ( myFP: TCFD_BGR;                                  //
   var RotRec : WideString                          //
 ) : Integer;                                       //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('124_receipt_NonFiscalRotated_Close');
        myFP.get_OutputParam_ByName('124_receipt_NonFiscalRotated_Close', 'RotRec',RotRec);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A01  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A01', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A01', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A01', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A01', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A01', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A01') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A01', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A01', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A02  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A02', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A02', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A02', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A02', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A02', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A02', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A02') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A02', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A02', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A03  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A03', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A03', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A03', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A03', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A03', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A03', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A03') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A03', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A03', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A04  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A04', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A04', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A04', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A04', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A04', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A04', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A04', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A04') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A04', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A04', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A05  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A05', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A05', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A05', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A05', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A05', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A05', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A05', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A05', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A05') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A05', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A05', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A06  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A06', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A06', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A06', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A06', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A06', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A06', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A06', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A06', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A06', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A06') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A06', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A06', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A07  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A07', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A07', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A07', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A07', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A07', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A07', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A07', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A07', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A07', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A07') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A07', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A07', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A08  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A08', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A08') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A08', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A08', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A09  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A09', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A09', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A09', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A09', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A09', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A09', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A09') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A09', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A09', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A10  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A10', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A10', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A10', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A10', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A10', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A10', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A10', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A10') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A10', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A10', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A11  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A11', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A11', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A11', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A11', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A11', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A11', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A11', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A11') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A11', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A11', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A12  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A12', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A12', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A12', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A12', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A12', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A12', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A12', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A12', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A12') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A12', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A12', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A13  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A13', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A13', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A13', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A13', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A13', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A13', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A13', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A13', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A13', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A13') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A13', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A13', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A14  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A14', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A14') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A14', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A14', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A15  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A15', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A15') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A15', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A15', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_046_receipt_StornoOpen_A16  //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   const InvoiceNumber : WideString;         //
   const UNP : WideString;                   //
   const Storno_Type : WideString;           //
   const Storno_DocumentNumber : WideString; //
   const Storno_UNP : WideString;            //
   const Storno_DateTime : WideString;       //
   const Storno_FMNumber : WideString;       //
   const Storno_Reason : WideString;         //
   var AllReceiptCount : WideString;         //
   var StornoReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'InvoiceNumber', InvoiceNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'UNP', UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'Storno_Type', Storno_Type ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'Storno_DocumentNumber', Storno_DocumentNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'Storno_UNP', Storno_UNP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'Storno_DateTime', Storno_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'Storno_FMNumber', Storno_FMNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('046_receipt_StornoOpen_A16', 'Storno_Reason', Storno_Reason ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('046_receipt_StornoOpen_A16') <> 0 then Exit;
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A16', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('046_receipt_StornoOpen_A16', 'StornoReceiptCount',StornoReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_Fiscal_01_Open //
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
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_01_Open', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_01_Open', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_01_Open', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_Fiscal_01_Open') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_Fiscal_01_Open', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_Fiscal_01_Open', 'FiscalReceiptCount',FiscalReceiptCount);
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
   const TillNumber : WideString;        //
   const UNP : WideString;               //
   var AllReceiptCount : WideString;     //
   var FiscalReceiptCount : WideString   //
 ) : Integer;                            //

 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_Open', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_Open', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_Open', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_Open', 'UNP', UNP ) <> 0 then Exit;
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

function execute_048_receipt_FiscalOpen_A01 //
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
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A01', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A01', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A01', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_FiscalOpen_A01') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_A01', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_A01', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_Fiscal_02_Open //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   const UNP : WideString;                  //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_02_Open', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_02_Open', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_02_Open', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Fiscal_02_Open', 'UNP', UNP ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_Fiscal_02_Open') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_Fiscal_02_Open', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_Fiscal_02_Open', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_FiscalOpen_A03 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   const UNP : WideString;                  //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A03', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A03', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A03', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A03', 'UNP', UNP ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_FiscalOpen_A03') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_A03', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_A03', 'FiscalReceiptCount',FiscalReceiptCount);
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
   const TillNumber : WideString;         //
   const UNP : WideString;                //
   var AllReceiptCount : WideString;      //
   var FiscalReceiptCount : WideString    //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_Open', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_Open', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_Open', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_Open', 'UNP', UNP ) <> 0 then Exit;
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

function execute_048_receipt_FiscalOpen_A04 //
 ( myFP: TCFD_BGR;                          //
   const OperatorNumber : WideString;       //
   const OperatorPassword : WideString;     //
   const TillNumber : WideString;           //
   const UNP : WideString;                  //
   var AllReceiptCount : WideString;        //
   var FiscalReceiptCount : WideString      //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A04', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A04', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A04', 'TillNumber', TillNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A04', 'UNP', UNP ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_FiscalOpen_A04') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_A04', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_A04', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_Invoice_01_Open //
 ( myFP: TCFD_BGR;                           //
   const OperatorNumber : WideString;        //
   const OperatorPassword : WideString;      //
   const TillNumber : WideString;            //
   var AllReceiptCount : WideString;         //
   var FiscalReceiptCount : WideString       //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_01_Open', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_01_Open', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_Invoice_01_Open', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_Invoice_01_Open') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_Invoice_01_Open', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_Invoice_01_Open', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_048_receipt_FiscalOpen_A02 //
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
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A02', 'OperatorNumber', OperatorNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A02', 'OperatorPassword', OperatorPassword ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('048_receipt_FiscalOpen_A02', 'TillNumber', TillNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('048_receipt_FiscalOpen_A02') <> 0 then Exit;
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_A02', 'AllReceiptCount',AllReceiptCount);
        myFP.get_OutputParam_ByName('048_receipt_FiscalOpen_A02', 'FiscalReceiptCount',FiscalReceiptCount);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_01 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString                       //
 ) : Integer;                                   //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_01', 'EIKType', EIKType ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_01', 'EIK', EIK ) <> 0 then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_01');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_02 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString                //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_02', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_02', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_02', 'SellerName', SellerName ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_02');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_03 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString;               //
   const ReceiverName : WideString              //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_03', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_03', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_03', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_03', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_03');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_04 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString                //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_04', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_04', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_04', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_04', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_04', 'ClientName', ClientName ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_04');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_05 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString                     //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_05', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_05', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_05', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_05', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_05', 'ClientName', ClientName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_05', 'TaxNo', TaxNo ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_05');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_06 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
   const SellerName : WideString;               //
   const ReceiverName : WideString;             //
   const ClientName : WideString;               //
   const TaxNo : WideString;                    //
   const Address1 : WideString                  //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_06', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_06', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_06', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_06', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_06', 'ClientName', ClientName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_06', 'TaxNo', TaxNo ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_06', 'Address1', Address1 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_06');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_057_receipt_PrintClientInfo_07 //
 ( myFP: TCFD_BGR;                              //
   const EIKType : WideString;                  //
   const EIK : WideString;                      //
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
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_07', 'EIKType', EIKType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_07', 'EIK', EIK ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_07', 'SellerName', SellerName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_07', 'ReceiverName', ReceiverName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_07', 'ClientName', ClientName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_07', 'TaxNo', TaxNo ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_07', 'Address1', Address1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('057_receipt_PrintClientInfo_07', 'Address2', Address2 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('057_receipt_PrintClientInfo_07');
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

function execute_049_receipt_Sale_Un //
 ( myFP: TCFD_BGR;                   //
   const TextRow1 : WideString;      //
   const TextRow2 : WideString;      //
   const TaxGroup : WideString;      //
   const SinglePrice : WideString;   //
   const Quantity : WideString;      //
   const Measure : WideString        //
 ) : Integer;                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_Un', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_Un', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_Un', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_Un', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_Un');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow1Un //
 ( myFP: TCFD_BGR;                           //
   const TextRow1 : WideString;              //
   const TaxGroup : WideString;              //
   const SinglePrice : WideString;           //
   const Quantity : WideString;              //
   const Measure : WideString                //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1Un', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1Un', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1Un', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow1Un');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow2Un //
 ( myFP: TCFD_BGR;                           //
   const TextRow2 : WideString;              //
   const TaxGroup : WideString;              //
   const SinglePrice : WideString;           //
   const Quantity : WideString;              //
   const Measure : WideString                //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2Un', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2Un', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2Un', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow2Un');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_UnWText //
 ( myFP: TCFD_BGR;                        //
   const TaxGroup : WideString;           //
   const SinglePrice : WideString;        //
   const Quantity : WideString;           //
   const Measure : WideString             //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnWText', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnWText', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnWText', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_UnWText');
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
   const Quantity : WideString;                   //
   const Percent : WideString                     //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercentWText', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercentWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_CByPercentWText', 'Quantity', Quantity ) <> 0 then Exit;
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

function execute_049_receipt_Sale_UnCByPercent //
 ( myFP: TCFD_BGR;                             //
   const TextRow1 : WideString;                //
   const TextRow2 : WideString;                //
   const TaxGroup : WideString;                //
   const SinglePrice : WideString;             //
   const Quantity : WideString;                //
   const Measure : WideString;                 //
   const Percent : WideString                  //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercent', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercent', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercent', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_UnCByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow1UnCByPercent //
 ( myFP: TCFD_BGR;                                     //
   const TextRow1 : WideString;                        //
   const TaxGroup : WideString;                        //
   const SinglePrice : WideString;                     //
   const Quantity : WideString;                        //
   const Measure : WideString;                         //
   const Percent : WideString                          //
 ) : Integer;                                          //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCByPercent', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCByPercent', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow1UnCByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow2UnCByPercent //
 ( myFP: TCFD_BGR;                                     //
   const TextRow2 : WideString;                        //
   const TaxGroup : WideString;                        //
   const SinglePrice : WideString;                     //
   const Quantity : WideString;                        //
   const Measure : WideString;                         //
   const Percent : WideString                          //
 ) : Integer;                                          //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCByPercent', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCByPercent', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow2UnCByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_UnCByPercentWText //
 ( myFP: TCFD_BGR;                                  //
   const TaxGroup : WideString;                     //
   const SinglePrice : WideString;                  //
   const Quantity : WideString;                     //
   const Measure : WideString;                      //
   const Percent : WideString                       //
 ) : Integer;                                       //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercentWText', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercentWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercentWText', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercentWText', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCByPercentWText', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_UnCByPercentWText');
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

function execute_049_receipt_Sale_UnCBySum //
 ( myFP: TCFD_BGR;                         //
   const TextRow1 : WideString;            //
   const TextRow2 : WideString;            //
   const TaxGroup : WideString;            //
   const SinglePrice : WideString;         //
   const Quantity : WideString;            //
   const Measure : WideString;             //
   const Abs : WideString                  //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySum', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySum', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_UnCBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow1UnCBySum //
 ( myFP: TCFD_BGR;                                 //
   const TextRow1 : WideString;                    //
   const TaxGroup : WideString;                    //
   const SinglePrice : WideString;                 //
   const Quantity : WideString;                    //
   const Measure : WideString;                     //
   const Abs : WideString                          //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCBySum', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCBySum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow1UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow1UnCBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_TextRow2UnCBySum //
 ( myFP: TCFD_BGR;                                 //
   const TextRow2 : WideString;                    //
   const TaxGroup : WideString;                    //
   const SinglePrice : WideString;                 //
   const Quantity : WideString;                    //
   const Measure : WideString;                     //
   const Abs : WideString                          //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCBySum', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCBySum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_TextRow2UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_TextRow2UnCBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_Sale_UnCBySumWText //
 ( myFP: TCFD_BGR;                              //
   const TaxGroup : WideString;                 //
   const SinglePrice : WideString;              //
   const Quantity : WideString;                 //
   const Measure : WideString;                  //
   const Abs : WideString                       //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySumWText', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySumWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySumWText', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySumWText', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_Sale_UnCBySumWText', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_Sale_UnCBySumWText');
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

function execute_049_receipt_DSale_Un //
 ( myFP: TCFD_BGR;                    //
   const TextRow1 : WideString;       //
   const TextRow2 : WideString;       //
   const Department : WideString;     //
   const SinglePrice : WideString;    //
   const Quantity : WideString;       //
   const Measure : WideString         //
 ) : Integer;                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_Un', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_Un', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_Un', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_Un', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_Un');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow1Un //
 ( myFP: TCFD_BGR;                            //
   const TextRow1 : WideString;               //
   const Department : WideString;             //
   const SinglePrice : WideString;            //
   const Quantity : WideString;               //
   const Measure : WideString                 //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1Un', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1Un', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1Un', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow1Un');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow2Un //
 ( myFP: TCFD_BGR;                            //
   const TextRow2 : WideString;               //
   const Department : WideString;             //
   const SinglePrice : WideString;            //
   const Quantity : WideString;               //
   const Measure : WideString                 //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2Un', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2Un', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2Un', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow2Un');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_UnWText //
 ( myFP: TCFD_BGR;                         //
   const Department : WideString;          //
   const SinglePrice : WideString;         //
   const Quantity : WideString;            //
   const Measure : WideString              //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnWText', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnWText', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnWText', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_UnWText');
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

function execute_049_receipt_DSale_UnCByPercent //
 ( myFP: TCFD_BGR;                              //
   const TextRow1 : WideString;                 //
   const TextRow2 : WideString;                 //
   const Department : WideString;               //
   const SinglePrice : WideString;              //
   const Quantity : WideString;                 //
   const Measure : WideString;                  //
   const Percent : WideString                   //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCByPercent', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCByPercent', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_UnCByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow1UnCByPercent //
 ( myFP: TCFD_BGR;                                      //
   const TextRow1 : WideString;                         //
   const Department : WideString;                       //
   const SinglePrice : WideString;                      //
   const Quantity : WideString;                         //
   const Measure : WideString;                          //
   const Percent : WideString                           //
 ) : Integer;                                           //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCByPercent', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow1UnCByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow2UnCByPercent //
 ( myFP: TCFD_BGR;                                      //
   const TextRow2 : WideString;                         //
   const Department : WideString;                       //
   const SinglePrice : WideString;                      //
   const Quantity : WideString;                         //
   const Measure : WideString;                          //
   const Percent : WideString                           //
 ) : Integer;                                           //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCByPercent', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow2UnCByPercent');
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

function execute_049_receipt_DSale_UnCBySum //
 ( myFP: TCFD_BGR;                          //
   const TextRow1 : WideString;             //
   const TextRow2 : WideString;             //
   const Department : WideString;           //
   const SinglePrice : WideString;          //
   const Quantity : WideString;             //
   const Measure : WideString;              //
   const Abs : WideString                   //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySum', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySum', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_UnCBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow1UnCBySum //
 ( myFP: TCFD_BGR;                                  //
   const TextRow1 : WideString;                     //
   const Department : WideString;                   //
   const SinglePrice : WideString;                  //
   const Quantity : WideString;                     //
   const Measure : WideString;                      //
   const Abs : WideString                           //
 ) : Integer;                                       //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCBySum', 'TextRow1', TextRow1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow1UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow1UnCBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_TextRow2UnCBySum //
 ( myFP: TCFD_BGR;                                  //
   const TextRow2 : WideString;                     //
   const Department : WideString;                   //
   const SinglePrice : WideString;                  //
   const Quantity : WideString;                     //
   const Measure : WideString;                      //
   const Abs : WideString                           //
 ) : Integer;                                       //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCBySum', 'TextRow2', TextRow2 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_TextRow2UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_TextRow2UnCBySum');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_049_receipt_DSale_UnCBySumWText //
 ( myFP: TCFD_BGR;                               //
   const Department : WideString;                //
   const SinglePrice : WideString;               //
   const Quantity : WideString;                  //
   const Measure : WideString;                   //
   const Abs : WideString                        //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySumWText', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySumWText', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySumWText', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySumWText', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('049_receipt_DSale_UnCBySumWText', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('049_receipt_DSale_UnCBySumWText');
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

function execute_052_receipt_DisplaySale_Un //
 ( myFP: TCFD_BGR;                          //
   const TextRow : WideString;              //
   const TaxGroup : WideString;             //
   const SinglePrice : WideString;          //
   const Quantity : WideString;             //
   const Measure : WideString               //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_Un', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_Un', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_Un', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplaySale_Un');
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

function execute_052_receipt_DisplaySale_UnCByPercent //
 ( myFP: TCFD_BGR;                                    //
   const TextRow : WideString;                        //
   const TaxGroup : WideString;                       //
   const SinglePrice : WideString;                    //
   const Quantity : WideString;                       //
   const Measure : WideString;                        //
   const Percent : WideString                         //
 ) : Integer;                                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCByPercent', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCByPercent', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplaySale_UnCByPercent');
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

function execute_052_receipt_DisplaySale_UnCBySum //
 ( myFP: TCFD_BGR;                                //
   const TextRow : WideString;                    //
   const TaxGroup : WideString;                   //
   const SinglePrice : WideString;                //
   const Quantity : WideString;                   //
   const Measure : WideString;                    //
   const Abs : WideString                         //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCBySum', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCBySum', 'TaxGroup', TaxGroup ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplaySale_UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplaySale_UnCBySum');
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

function execute_052_receipt_DisplayDSale_Un //
 ( myFP: TCFD_BGR;                           //
   const TextRow : WideString;               //
   const Department : WideString;            //
   const SinglePrice : WideString;           //
   const Quantity : WideString;              //
   const Measure : WideString                //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_Un', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_Un', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_Un', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplayDSale_Un');
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

function execute_052_receipt_DisplayDSale_UnCByPercent //
 ( myFP: TCFD_BGR;                                     //
   const TextRow : WideString;                         //
   const Department : WideString;                      //
   const SinglePrice : WideString;                     //
   const Quantity : WideString;                        //
   const Measure : WideString;                         //
   const Percent : WideString                          //
 ) : Integer;                                          //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCByPercent', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCByPercent', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplayDSale_UnCByPercent');
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

function execute_052_receipt_DisplayDSale_UnCBySum //
 ( myFP: TCFD_BGR;                                 //
   const TextRow : WideString;                     //
   const Department : WideString;                  //
   const SinglePrice : WideString;                 //
   const Quantity : WideString;                    //
   const Measure : WideString;                     //
   const Abs : WideString                          //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCBySum', 'TextRow', TextRow ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCBySum', 'SinglePrice', SinglePrice ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('052_receipt_DisplayDSale_UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('052_receipt_DisplayDSale_UnCBySum');
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

function execute_058_receipt_PLUSale_Un //
 ( myFP: TCFD_BGR;                      //
   const Target_PLU : WideString;       //
   const Quantity : WideString;         //
   const Measure : WideString           //
 ) : Integer;                           //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_Un', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUSale_Un');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLUSale_UnCByPercent //
 ( myFP: TCFD_BGR;                                //
   const Target_PLU : WideString;                 //
   const Quantity : WideString;                   //
   const Measure : WideString;                    //
   const Percent : WideString                     //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_UnCByPercent', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUSale_UnCByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLUSale_UnCBySum //
 ( myFP: TCFD_BGR;                            //
   const Target_PLU : WideString;             //
   const Quantity : WideString;               //
   const Measure : WideString;                //
   const Abs : WideString                     //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_UnCBySum', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUSale_UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUSale_UnCBySum');
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

function execute_058_receipt_PLUDep_Sale_Un //
 ( myFP: TCFD_BGR;                          //
   const Target_PLU : WideString;           //
   const Department : WideString;           //
   const Quantity : WideString;             //
   const Measure : WideString               //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_Un', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_Un', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUDep_Sale_Un');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLUDep_Sale_UnCByPercent //
 ( myFP: TCFD_BGR;                                    //
   const Target_PLU : WideString;                     //
   const Department : WideString;                     //
   const Quantity : WideString;                       //
   const Measure : WideString;                        //
   const Percent : WideString                         //
 ) : Integer;                                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCByPercent', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUDep_Sale_UnCByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_PLUDep_Sale_UnCBySum //
 ( myFP: TCFD_BGR;                                //
   const Target_PLU : WideString;                 //
   const Department : WideString;                 //
   const Quantity : WideString;                   //
   const Measure : WideString;                    //
   const Abs : WideString                         //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCBySum', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_PLUDep_Sale_UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_PLUDep_Sale_UnCBySum');
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

function execute_058_receipt_DisplayPLUSale_Un //
 ( myFP: TCFD_BGR;                             //
   const DChar : WideString;                   //
   const Target_PLU : WideString;              //
   const Quantity : WideString;                //
   const Measure : WideString                  //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_Un', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_Un', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_Un', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_Un', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayPLUSale_Un');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayPLUSale_UnCByPercent //
 ( myFP: TCFD_BGR;                                       //
   const DChar : WideString;                             //
   const Target_PLU : WideString;                        //
   const Quantity : WideString;                          //
   const Measure : WideString;                           //
   const Percent : WideString                            //
 ) : Integer;                                            //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCByPercent', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCByPercent', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayPLUSale_UnCByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayPLUSale_UnCBySum //
 ( myFP: TCFD_BGR;                                   //
   const DChar : WideString;                         //
   const Target_PLU : WideString;                    //
   const Quantity : WideString;                      //
   const Measure : WideString;                       //
   const Abs : WideString                            //
 ) : Integer;                                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCBySum', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCBySum', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayPLUSale_UnCBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayPLUSale_UnCBySum');
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

function execute_058_receipt_DisplayDepPLU_SaleUn //
 ( myFP: TCFD_BGR;                                //
   const DChar : WideString;                      //
   const Target_PLU : WideString;                 //
   const Department : WideString;                 //
   const Quantity : WideString;                   //
   const Measure : WideString                     //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn', 'Measure', Measure ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayDepPLU_SaleUn');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayDepPLU_SaleUn_CByPercent //
 ( myFP: TCFD_BGR;                                           //
   const DChar : WideString;                                 //
   const Target_PLU : WideString;                            //
   const Department : WideString;                            //
   const Quantity : WideString;                              //
   const Measure : WideString;                               //
   const Percent : WideString                                //
 ) : Integer;                                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CByPercent', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CByPercent', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CByPercent', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CByPercent', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CByPercent', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CByPercent', 'Percent', Percent ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayDepPLU_SaleUn_CByPercent');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_058_receipt_DisplayDepPLU_SaleUn_CBySum //
 ( myFP: TCFD_BGR;                                       //
   const DChar : WideString;                             //
   const Target_PLU : WideString;                        //
   const Department : WideString;                        //
   const Quantity : WideString;                          //
   const Measure : WideString;                           //
   const Abs : WideString                                //
 ) : Integer;                                            //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CBySum', 'DChar', DChar ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CBySum', 'Target_PLU', Target_PLU ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CBySum', 'Department', Department ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CBySum', 'Quantity', Quantity ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CBySum', 'Measure', Measure ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('058_receipt_DisplayDepPLU_SaleUn_CBySum', 'Abs', Abs ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('058_receipt_DisplayDepPLU_SaleUn_CBySum');
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

function execute_045_receipt_Paper_Cut
 ( myFP: TCFD_BGR
 ) : Integer; //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('045_receipt_Paper_Cut');
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

function execute_054_receipt_PFiscalText_01 //
 ( myFP: TCFD_BGR;                          //
   const Font : WideString;                 //
   const Flags : WideString;                //
   const InputText : WideString             //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('054_receipt_PFiscalText_01', 'Font', Font ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('054_receipt_PFiscalText_01', 'Flags', Flags ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('054_receipt_PFiscalText_01', 'InputText', InputText ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('054_receipt_PFiscalText_01');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_054_receipt_PFiscalText_02 //
 ( myFP: TCFD_BGR;                          //
   const Font : WideString;                 //
   const InputText : WideString             //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('054_receipt_PFiscalText_02', 'Font', Font ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('054_receipt_PFiscalText_02', 'InputText', InputText ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('054_receipt_PFiscalText_02');
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

function execute_084_receipt_Print_Barcode_01 //
 ( myFP: TCFD_BGR;                            //
   const BarcodeType : WideString;            //
   const Alignment : WideString;              //
   const BarcodeData : WideString             //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('084_receipt_Print_Barcode_01', 'BarcodeType', BarcodeType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('084_receipt_Print_Barcode_01', 'Alignment', Alignment ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('084_receipt_Print_Barcode_01', 'BarcodeData', BarcodeData ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('084_receipt_Print_Barcode_01');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_084_receipt_Print_Barcode_02 //
 ( myFP: TCFD_BGR;                            //
   const BarcodeType : WideString;            //
   const Alignment : WideString;              //
   const BarcodeData : WideString             //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('084_receipt_Print_Barcode_02', 'BarcodeType', BarcodeType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('084_receipt_Print_Barcode_02', 'Alignment', Alignment ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('084_receipt_Print_Barcode_02', 'BarcodeData', BarcodeData ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('084_receipt_Print_Barcode_02');
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

function execute_092_receipt_Separating_LineW //
 ( myFP: TCFD_BGR;                            //
   const LineType : WideString;               //
   const Linemask : WideString                //
 ) : Integer;                                 //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('092_receipt_Separating_LineW', 'LineType', LineType ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('092_receipt_Separating_LineW', 'Linemask', Linemask ) <> 0 then Exit;
        myFP.execute_Command_ByName('092_receipt_Separating_LineW');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_103_receipt_Current_Info //
 ( myFP: TCFD_BGR;                        //
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
   var InvNumber : WideString             //
 ) : Integer;                             //



 procedure set_Output;
 begin
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

function execute_034_report_Service_Contracts //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   var fAnswer : WideString                   //
 ) : Integer;                                 //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('034_report_Service_Contracts', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('034_report_Service_Contracts');
        myFP.get_OutputParam_ByName('034_report_Service_Contracts', 'fAnswer',fAnswer);
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

function execute_069_report_DailyClosure_02 //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   const WithoutClearOpInfo : WideString;   //
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
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'Closure',Closure);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'FMTotal',FMTotal);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'TotalSum_A',TotalSum_A);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'TotalSum_B',TotalSum_B);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'TotalSum_C',TotalSum_C);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'TotalSum_D',TotalSum_D);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'TotalSum_E',TotalSum_E);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'TotalSum_F',TotalSum_F);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'TotalSum_G',TotalSum_G);
   myFP.get_OutputParam_ByName('069_report_DailyClosure_02', 'TotalSum_H',TotalSum_H);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('069_report_DailyClosure_02', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('069_report_DailyClosure_02', 'WithoutClearOpInfo', WithoutClearOpInfo ) <> 0 then Exit;
        if myFP.execute_Command_ByName('069_report_DailyClosure_02') <> 0 then Exit;
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

function execute_073_report_FMByNumRange_SHA1 //
 ( myFP: TCFD_BGR;                            //
   const StartNumber : WideString;            //
   const EndNumber : WideString               //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('073_report_FMByNumRange_SHA1', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('073_report_FMByNumRange_SHA1', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('073_report_FMByNumRange_SHA1');
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

function execute_094_report_FMByDateRange_SHA1 //
 ( myFP: TCFD_BGR;                             //
   const FromDate : WideString;                //
   const ToDate : WideString                   //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('094_report_FMByDateRange_SHA1', 'FromDate', FromDate ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('094_report_FMByDateRange_SHA1', 'ToDate', ToDate ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('094_report_FMByDateRange_SHA1');
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

function execute_108_report_ExtDailyClosure_02 //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   const WithoutClearOpInfo : WideString;      //
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
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'Closure',Closure);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'FMTotal',FMTotal);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'TotalSum_A',TotalSum_A);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'TotalSum_B',TotalSum_B);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'TotalSum_C',TotalSum_C);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'TotalSum_D',TotalSum_D);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'TotalSum_E',TotalSum_E);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'TotalSum_F',TotalSum_F);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'TotalSum_G',TotalSum_G);
   myFP.get_OutputParam_ByName('108_report_ExtDailyClosure_02', 'TotalSum_H',TotalSum_H);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('108_report_ExtDailyClosure_02', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('108_report_ExtDailyClosure_02', 'WithoutClearOpInfo', WithoutClearOpInfo ) <> 0 then Exit;
        if myFP.execute_Command_ByName('108_report_ExtDailyClosure_02') <> 0 then Exit;
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

function execute_117_report_DailyClosureByDepartments_02 //
 ( myFP: TCFD_BGR;                                       //
   const Option : WideString;                            //
   const WithoutClearOpInfo : WideString;                //
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
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'Closure',Closure);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'FMTotal',FMTotal);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'TotalSum_A',TotalSum_A);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'TotalSum_B',TotalSum_B);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'TotalSum_C',TotalSum_C);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'TotalSum_D',TotalSum_D);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'TotalSum_E',TotalSum_E);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'TotalSum_F',TotalSum_F);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'TotalSum_G',TotalSum_G);
   myFP.get_OutputParam_ByName('117_report_DailyClosureByDepartments_02', 'TotalSum_H',TotalSum_H);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('117_report_DailyClosureByDepartments_02', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('117_report_DailyClosureByDepartments_02', 'WithoutClearOpInfo', WithoutClearOpInfo ) <> 0 then Exit;
        if myFP.execute_Command_ByName('117_report_DailyClosureByDepartments_02') <> 0 then Exit;
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

function execute_118_report_DailyClosureByDepartmentsAndItems_02 //
 ( myFP: TCFD_BGR;                                               //
   const Option : WideString;                                    //
   const WithoutClearOpInfo : WideString;                        //
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
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'Closure',Closure);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'FMTotal',FMTotal);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'TotalSum_A',TotalSum_A);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'TotalSum_B',TotalSum_B);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'TotalSum_C',TotalSum_C);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'TotalSum_D',TotalSum_D);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'TotalSum_E',TotalSum_E);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'TotalSum_F',TotalSum_F);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'TotalSum_G',TotalSum_G);
   myFP.get_OutputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'TotalSum_H',TotalSum_H);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('118_report_DailyClosureByDepartmentsAndItems_02', 'WithoutClearOpInfo', WithoutClearOpInfo ) <> 0 then Exit;
        if myFP.execute_Command_ByName('118_report_DailyClosureByDepartmentsAndItems_02') <> 0 then Exit;
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

function execute_036_config_SetLAN    //
 ( myFP: TCFD_BGR;                    //
   const IPAddress : WideString;      //
   const SubnetMask : WideString;     //
   const PortNumber : WideString;     //
   const DefaultGateway : WideString; //
   const DHCP : WideString;           //
   const MACAddress : WideString;     //
   var fAnswer : WideString           //
 ) : Integer;                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('036_config_SetLAN', 'IPAddress', IPAddress ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('036_config_SetLAN', 'SubnetMask', SubnetMask ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('036_config_SetLAN', 'PortNumber', PortNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('036_config_SetLAN', 'DefaultGateway', DefaultGateway ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('036_config_SetLAN', 'DHCP', DHCP ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('036_config_SetLAN', 'MACAddress', MACAddress ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('036_config_SetLAN');
        myFP.get_OutputParam_ByName('036_config_SetLAN', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_041_config_Set_Switches //
 ( myFP: TCFD_BGR;                       //
   const Switches : WideString;          //
   var ErrorCode : WideString            //
 ) : Integer;                            //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('041_config_Set_Switches', 'Switches', Switches ) <> 0 then Exit;
        myFP.execute_Command_ByName('041_config_Set_Switches');
        myFP.get_OutputParam_ByName('041_config_Set_Switches', 'ErrorCode',ErrorCode);
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

function execute_043_config_Set_BarcodeHeight //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Value : WideString                   //
 ) : Integer;                                 //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_BarcodeHeight', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_BarcodeHeight', 'Value', Value ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_BarcodeHeight');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_AutoCutting //
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
        if myFP.set_InputParam_ByName('043_config_Set_AutoCutting', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_AutoCutting', 'Off_On', Off_On ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_AutoCutting');
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

function execute_043_config_Set_FontSize //
 ( myFP: TCFD_BGR;                       //
   const Option : WideString;            //
   const Value : WideString              //
 ) : Integer;                            //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_FontSize', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_FontSize', 'Value', Value ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_FontSize');
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

function execute_043_config_enable_PrintSuppression //
 ( myFP: TCFD_BGR;                                  //
   const Option : WideString;                       //
   const On : WideString;                           //
   const Lines : WideString;                        //
   const Seconds : WideString                       //
 ) : Integer;                                       //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('043_config_enable_PrintSuppression', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('043_config_enable_PrintSuppression', 'On', On ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('043_config_enable_PrintSuppression', 'Lines', Lines ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('043_config_enable_PrintSuppression', 'Seconds', Seconds ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('043_config_enable_PrintSuppression');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_disable_PrintSuppression //
 ( myFP: TCFD_BGR;                                   //
   const Option : WideString;                        //
   const Off : WideString                            //
 ) : Integer;                                        //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_disable_PrintSuppression', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_disable_PrintSuppression', 'Off', Off ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_disable_PrintSuppression');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_ExtraSpace //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const Value : WideString                //
 ) : Integer;                              //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_ExtraSpace', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_ExtraSpace', 'Value', Value ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_ExtraSpace');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_SIM //
 ( myFP: TCFD_BGR;                  //
   const Option : WideString;       //
   const IndexValue : WideString    //
 ) : Integer;                       //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_SIM', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_SIM', 'IndexValue', IndexValue ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_SIM');
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

function execute_043_config_Set_WarningTimeRange //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const WarnTimeRec : WideString;               //
   const WarnTimeGInfo : WideString              //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('043_config_Set_WarningTimeRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('043_config_Set_WarningTimeRange', 'WarnTimeRec', WarnTimeRec ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('043_config_Set_WarningTimeRange', 'WarnTimeGInfo', WarnTimeGInfo ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('043_config_Set_WarningTimeRange');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_FeedButton //
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
        if myFP.set_InputParam_ByName('043_config_Set_FeedButton', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_FeedButton', 'Off_On', Off_On ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_FeedButton');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_043_config_Set_OptionalErrorText //
 ( myFP: TCFD_BGR;                                //
   const Option : WideString;                     //
   const Off_On : WideString                      //
 ) : Integer;                                     //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_OptionalErrorText', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_config_Set_OptionalErrorText', 'Off_On', Off_On ) <> 0 then Exit;
        myFP.execute_Command_ByName('043_config_Set_OptionalErrorText');
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

function execute_075_config_Restore_PrintSuppression //
 ( myFP: TCFD_BGR;                                   //
   const RestoreOption : WideString                  //
 ) : Integer;                                        //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('075_config_Restore_PrintSuppression', 'RestoreOption', RestoreOption ) <> 0 then Exit;
        myFP.execute_Command_ByName('075_config_Restore_PrintSuppression');
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

function execute_034_info_Service_Contracts //
 ( myFP: TCFD_BGR;                          //
   var fAnswer : WideString                 //
 ) : Integer;                               //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('034_info_Service_Contracts');
        myFP.get_OutputParam_ByName('034_info_Service_Contracts', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_036_info_Get_LANSettings //
 ( myFP: TCFD_BGR;                        //
   var IPAddress : WideString;            //
   var SubnetMask : WideString;           //
   var PortNumber : WideString;           //
   var DefaultGateway : WideString;       //
   var DHCP : WideString;                 //
   var MACAddress : WideString            //
 ) : Integer;                             //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('036_info_Get_LANSettings', 'IPAddress',IPAddress);
   myFP.get_OutputParam_ByName('036_info_Get_LANSettings', 'SubnetMask',SubnetMask);
   myFP.get_OutputParam_ByName('036_info_Get_LANSettings', 'PortNumber',PortNumber);
   myFP.get_OutputParam_ByName('036_info_Get_LANSettings', 'DefaultGateway',DefaultGateway);
   myFP.get_OutputParam_ByName('036_info_Get_LANSettings', 'DHCP',DHCP);
   myFP.get_OutputParam_ByName('036_info_Get_LANSettings', 'MACAddress',MACAddress);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('036_info_Get_LANSettings') <> 0 then Exit;
        set_Output;
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
   const TargetOption : WideString;       //
   var fAnswer : WideString               //
 ) : Integer;                             //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('043_info_Get_PrintOption', 'Option', Option ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('043_info_Get_PrintOption', 'TargetOption', TargetOption ) <> 0 then Exit;
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

function execute_064_info_Get_LastFiscRecord_01 //
 ( myFP: TCFD_BGR;                              //
   var ErrorCode : WideString;                  //
   var LastFRecordNumber : WideString;          //
   var TaxA : WideString;                       //
   var TaxB : WideString;                       //
   var TaxC : WideString;                       //
   var TaxD : WideString;                       //
   var TaxE : WideString;                       //
   var TaxF : WideString;                       //
   var TaxG : WideString;                       //
   var TaxH : WideString;                       //
   var Date : WideString                        //
 ) : Integer;                                   //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'LastFRecordNumber',LastFRecordNumber);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'TaxA',TaxA);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'TaxB',TaxB);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'TaxC',TaxC);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'TaxD',TaxD);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'TaxE',TaxE);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'TaxF',TaxF);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'TaxG',TaxG);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'TaxH',TaxH);
   myFP.get_OutputParam_ByName('064_info_Get_LastFiscRecord_01', 'Date',Date);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('064_info_Get_LastFiscRecord_01') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_065_info_Get_AdditionalDailyInfo_01 //
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
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_01', 'SumA',SumA);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_01', 'SumB',SumB);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_01', 'SumC',SumC);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_01', 'SumD',SumD);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_01', 'SumE',SumE);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_01', 'SumF',SumF);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_01', 'SumG',SumG);
   myFP.get_OutputParam_ByName('065_info_Get_AdditionalDailyInfo_01', 'SumH',SumH);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('065_info_Get_AdditionalDailyInfo_01', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('065_info_Get_AdditionalDailyInfo_01') <> 0 then Exit;
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

function execute_071_info_Print_Diagnostic_0
 ( myFP: TCFD_BGR
 ) : Integer; //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        myFP.execute_Command_ByName('071_info_Print_Diagnostic_0');
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

function execute_074_info_Get_NotPrintedRowsCount //
 ( myFP: TCFD_BGR;                                //
   const Option : WideString;                     //
   var NLines : WideString                        //
 ) : Integer;                                     //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('074_info_Get_NotPrintedRowsCount', 'Option', Option ) <> 0 then Exit;
        myFP.execute_Command_ByName('074_info_Get_NotPrintedRowsCount');
        myFP.get_OutputParam_ByName('074_info_Get_NotPrintedRowsCount', 'NLines',NLines);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_074_info_Get_NRADocuments     //
 ( myFP: TCFD_BGR;                             //
   const Option : WideString;                  //
   var LastPrintDoc : WideString;              //
   var NLastSentDoc : WideString;              //
   var DTLastSentDoc : WideString;             //
   var MinFromLastSuccessSent : WideString;    //
   var NFirstNotSentDoc : WideString;          //
   var DTFirstNotSentDoc : WideString;         //
   var MinFromFirstNotSuccessSent : WideString //
 ) : Integer;                                  //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('074_info_Get_NRADocuments', 'LastPrintDoc',LastPrintDoc);
   myFP.get_OutputParam_ByName('074_info_Get_NRADocuments', 'NLastSentDoc',NLastSentDoc);
   myFP.get_OutputParam_ByName('074_info_Get_NRADocuments', 'DTLastSentDoc',DTLastSentDoc);
   myFP.get_OutputParam_ByName('074_info_Get_NRADocuments', 'MinFromLastSuccessSent',MinFromLastSuccessSent);
   myFP.get_OutputParam_ByName('074_info_Get_NRADocuments', 'NFirstNotSentDoc',NFirstNotSentDoc);
   myFP.get_OutputParam_ByName('074_info_Get_NRADocuments', 'DTFirstNotSentDoc',DTFirstNotSentDoc);
   myFP.get_OutputParam_ByName('074_info_Get_NRADocuments', 'MinFromFirstNotSuccessSent',MinFromFirstNotSuccessSent);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('074_info_Get_NRADocuments', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('074_info_Get_NRADocuments') <> 0 then Exit;
        set_Output;
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

function execute_081_info_Get_VoltageAndTemperature //
 ( myFP: TCFD_BGR;                                  //
   const Voltage : WideString;                      //
   const Temperature : WideString                   //
 ) : Integer;                                       //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('081_info_Get_VoltageAndTemperature', 'Voltage', Voltage ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('081_info_Get_VoltageAndTemperature', 'Temperature', Temperature ) <> 0 then Exit;
        myFP.execute_Command_ByName('081_info_Get_VoltageAndTemperature');
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

function execute_088_info_Get_DepartmentInfo //
 ( myFP: TCFD_BGR;                           //
   const DepartmentNumber : WideString;      //
   var OutputCode : WideString;              //
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
   myFP.get_OutputParam_ByName('088_info_Get_DepartmentInfo', 'OutputCode',OutputCode);
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

function execute_093_info_Get_DailyCorrections //
 ( myFP: TCFD_BGR;                             //
   var Count_Discounts : WideString;           //
   var Sum_Discounts : WideString;             //
   var Count_Surcharges : WideString;          //
   var Sum_Surcharges : WideString             //
 ) : Integer;                                  //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('093_info_Get_DailyCorrections', 'Count_Discounts',Count_Discounts);
   myFP.get_OutputParam_ByName('093_info_Get_DailyCorrections', 'Sum_Discounts',Sum_Discounts);
   myFP.get_OutputParam_ByName('093_info_Get_DailyCorrections', 'Count_Surcharges',Count_Surcharges);
   myFP.get_OutputParam_ByName('093_info_Get_DailyCorrections', 'Sum_Surcharges',Sum_Surcharges);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('093_info_Get_DailyCorrections') <> 0 then Exit;
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
   var InvNum : WideString                       //
 ) : Integer;                                    //



 procedure set_Output;
 begin
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

function execute_110_info_Get_AdditionalDailyInfo_02 //
 ( myFP: TCFD_BGR;                                   //
   var Cash : WideString;                            //
   var Credit : WideString;                          //
   var Debit : WideString;                           //
   var Cheque : WideString;                          //
   var Payment_01 : WideString;                      //
   var Payment_02 : WideString;                      //
   var Payment_03 : WideString;                      //
   var Payment_04 : WideString;                      //
   var Closure : WideString;                         //
   var Next_FReceiptNumber : WideString              //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Cash',Cash);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Credit',Credit);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Debit',Debit);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Cheque',Cheque);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Payment_01',Payment_01);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Payment_02',Payment_02);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Payment_03',Payment_03);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Payment_04',Payment_04);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Closure',Closure);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_02', 'Next_FReceiptNumber',Next_FReceiptNumber);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('110_info_Get_AdditionalDailyInfo_02') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_110_info_Get_AdditionalDailyInfo_03 //
 ( myFP: TCFD_BGR;                                   //
   var Cash : WideString;                            //
   var Credit : WideString;                          //
   var Debit : WideString;                           //
   var Cheque : WideString;                          //
   var Payment_01 : WideString;                      //
   var Payment_02 : WideString;                      //
   var Payment_03 : WideString;                      //
   var Payment_04 : WideString;                      //
   var Closure : WideString;                         //
   var Next_FReceiptNumber : WideString;             //
   var Payment_05 : WideString;                      //
   var Payment_06 : WideString;                      //
   var Payment_07 : WideString;                      //
   var Payment_08 : WideString;                      //
   var Payment_09 : WideString;                      //
   var Payment_10 : WideString;                      //
   var Payment_11 : WideString                       //
 ) : Integer;                                        //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Cash',Cash);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Credit',Credit);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Debit',Debit);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Cheque',Cheque);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_01',Payment_01);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_02',Payment_02);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_03',Payment_03);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_04',Payment_04);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Closure',Closure);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Next_FReceiptNumber',Next_FReceiptNumber);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_05',Payment_05);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_06',Payment_06);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_07',Payment_07);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_08',Payment_08);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_09',Payment_09);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_10',Payment_10);
   myFP.get_OutputParam_ByName('110_info_Get_AdditionalDailyInfo_03', 'Payment_11',Payment_11);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.execute_Command_ByName('110_info_Get_AdditionalDailyInfo_03') <> 0 then Exit;
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

function execute_114_info_Get_RAMResetDateTime //
 ( myFP: TCFD_BGR;                             //
   const Closure1 : WideString;                //
   const Option : WideString;                  //
   var ErrorCode : WideString;                 //
   var DateTime : WideString                   //
 ) : Integer;                                  //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_RAMResetDateTime', 'Closure1', Closure1 ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_RAMResetDateTime', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('114_info_Get_RAMResetDateTime') <> 0 then Exit;
        myFP.get_OutputParam_ByName('114_info_Get_RAMResetDateTime', 'ErrorCode',ErrorCode);
        myFP.get_OutputParam_ByName('114_info_Get_RAMResetDateTime', 'DateTime',DateTime);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_AdditionalPayments //
 ( myFP: TCFD_BGR;                               //
   const Closure1 : WideString;                  //
   const Option : WideString;                    //
   const Closure2 : WideString;                  //
   var ErrorCode : WideString;                   //
   var CashPayment_Sum : WideString;             //
   var DebitCardPayment_Sum : WideString;        //
   var CreditCardPayment_Sum : WideString;       //
   var CheckPayment_Sum : WideString;            //
   var Payment01_Sum : WideString;               //
   var Payment02_Sum : WideString;               //
   var Payment03_Sum : WideString;               //
   var Payment04_Sum : WideString;               //
   var Payment05_Sum : WideString;               //
   var Payment06_Sum : WideString;               //
   var Payment07_Sum : WideString;               //
   var Payment08_Sum : WideString;               //
   var Payment09_Sum : WideString;               //
   var Payment10_Sum : WideString;               //
   var Payment11_Sum : WideString                //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('114_info_Get_AdditionalPayments', 'Closure1', Closure1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_AdditionalPayments', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_AdditionalPayments', 'Closure2', Closure2 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'CashPayment_Sum',CashPayment_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'DebitCardPayment_Sum',DebitCardPayment_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'CreditCardPayment_Sum',CreditCardPayment_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'CheckPayment_Sum',CheckPayment_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment01_Sum',Payment01_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment02_Sum',Payment02_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment03_Sum',Payment03_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment04_Sum',Payment04_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment05_Sum',Payment05_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment06_Sum',Payment06_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment07_Sum',Payment07_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment08_Sum',Payment08_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment09_Sum',Payment09_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment10_Sum',Payment10_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_AdditionalPayments', 'Payment11_Sum',Payment11_Sum);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('114_info_Get_AdditionalPayments') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_Corrections //
 ( myFP: TCFD_BGR;                        //
   const Closure1 : WideString;           //
   const Option : WideString;             //
   const Closure2 : WideString;           //
   var ErrorCode : WideString;            //
   var Discounts_Count : WideString;      //
   var Discounts_Sum : WideString;        //
   var Surcharges_Count : WideString;     //
   var Surcharges_Sum : WideString;       //
   var Voided_Count : WideString;         //
   var Voided_Sum : WideString;           //
   var Canceled_Count : WideString;       //
   var Canceled_Sum : WideString          //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('114_info_Get_Corrections', 'Closure1', Closure1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_Corrections', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_Corrections', 'Closure2', Closure2 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_Corrections', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_Corrections', 'Discounts_Count',Discounts_Count);
   myFP.get_OutputParam_ByName('114_info_Get_Corrections', 'Discounts_Sum',Discounts_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_Corrections', 'Surcharges_Count',Surcharges_Count);
   myFP.get_OutputParam_ByName('114_info_Get_Corrections', 'Surcharges_Sum',Surcharges_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_Corrections', 'Voided_Count',Voided_Count);
   myFP.get_OutputParam_ByName('114_info_Get_Corrections', 'Voided_Sum',Voided_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_Corrections', 'Canceled_Count',Canceled_Count);
   myFP.get_OutputParam_ByName('114_info_Get_Corrections', 'Canceled_Sum',Canceled_Sum);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('114_info_Get_Corrections') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_CashInCashOut //
 ( myFP: TCFD_BGR;                          //
   const Closure1 : WideString;             //
   const Option : WideString;               //
   const Closure2 : WideString;             //
   var ErrorCode : WideString;              //
   var CashIn_Count : WideString;           //
   var CashIn_Sum : WideString;             //
   var CashOut_Count : WideString;          //
   var CashOut_Sum : WideString             //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('114_info_Get_CashInCashOut', 'Closure1', Closure1 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_CashInCashOut', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('114_info_Get_CashInCashOut', 'Closure2', Closure2 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_CashInCashOut', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_CashInCashOut', 'CashIn_Count',CashIn_Count);
   myFP.get_OutputParam_ByName('114_info_Get_CashInCashOut', 'CashIn_Sum',CashIn_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_CashInCashOut', 'CashOut_Count',CashOut_Count);
   myFP.get_OutputParam_ByName('114_info_Get_CashInCashOut', 'CashOut_Sum',CashOut_Sum);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('114_info_Get_CashInCashOut') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_114_info_Get_Turnover //
 ( myFP: TCFD_BGR;                     //
   const Closure1 : WideString;        //
   const Option : WideString;          //
   var ErrorCode : WideString;         //
   var Turnover_Sum : WideString;      //
   var Turnover_VATSum : WideString    //
 ) : Integer;                          //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('114_info_Get_Turnover', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('114_info_Get_Turnover', 'Turnover_Sum',Turnover_Sum);
   myFP.get_OutputParam_ByName('114_info_Get_Turnover', 'Turnover_VATSum',Turnover_VATSum);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_Turnover', 'Closure1', Closure1 ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('114_info_Get_Turnover', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('114_info_Get_Turnover') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Print_Validation //
 ( myFP: TCFD_BGR;                         //
   const Subcommand_01 : WideString;       //
   const Subcommand_02 : WideString        //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Print_Validation', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_Validation', 'Subcommand_02', Subcommand_02 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Print_Validation');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Print_SHA1 //
 ( myFP: TCFD_BGR;                   //
   const Subcommand_01 : WideString; //
   const Subcommand_02 : WideString  //
 ) : Integer;                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Print_SHA1', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_SHA1', 'Subcommand_02', Subcommand_02 ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Print_SHA1');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Get_KLENInfo_ZReport //
 ( myFP: TCFD_BGR;                             //
   const Subcommand_01 : WideString;           //
   const Subcommand_02 : WideString;           //
   const ZReportNumber : WideString;           //
   var ErrorCode : WideString;                 //
   var FDocNumber : WideString;                //
   var DateTime : WideString;                  //
   var ZReportSHA1 : WideString                //
 ) : Integer;                                  //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Get_KLENInfo_ZReport', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Get_KLENInfo_ZReport', 'Subcommand_02', Subcommand_02 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Get_KLENInfo_ZReport', 'ZReportNumber', ZReportNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_Get_KLENInfo_ZReport', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('119_klen_Get_KLENInfo_ZReport', 'FDocNumber',FDocNumber);
   myFP.get_OutputParam_ByName('119_klen_Get_KLENInfo_ZReport', 'DateTime',DateTime);
   myFP.get_OutputParam_ByName('119_klen_Get_KLENInfo_ZReport', 'ZReportSHA1',ZReportSHA1);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_Get_KLENInfo_ZReport') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Get_ZReportInfo //
 ( myFP: TCFD_BGR;                        //
   const Subcommand_01 : WideString;      //
   const Subcommand_02 : WideString;      //
   const ZReportNumber : WideString;      //
   var ErrorCode : WideString;            //
   var DocumentsCount : WideString;       //
   var BytesCount : WideString;           //
   var SHA1_KLEN : WideString;            //
   var SHA1_Calculated : WideString       //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Get_ZReportInfo', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Get_ZReportInfo', 'Subcommand_02', Subcommand_02 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Get_ZReportInfo', 'ZReportNumber', ZReportNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_Get_ZReportInfo', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('119_klen_Get_ZReportInfo', 'DocumentsCount',DocumentsCount);
   myFP.get_OutputParam_ByName('119_klen_Get_ZReportInfo', 'BytesCount',BytesCount);
   myFP.get_OutputParam_ByName('119_klen_Get_ZReportInfo', 'SHA1_KLEN',SHA1_KLEN);
   myFP.get_OutputParam_ByName('119_klen_Get_ZReportInfo', 'SHA1_Calculated',SHA1_Calculated);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_Get_ZReportInfo') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Get_Info        //
 ( myFP: TCFD_BGR;                        //
   const Subcommand_01 : WideString;      //
   const Subcommand_02 : WideString;      //
   var ErrorCode : WideString;            //
   var Size_Total : WideString;           //
   var Size_Used : WideString;            //
   var First_ZReportNumber : WideString;  //
   var Last_ZReportNumber : WideString;   //
   var First_DocumentNumber : WideString; //
   var Last_DocumentNumber : WideString   //
 ) : Integer;                             //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Get_Info', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Get_Info', 'Subcommand_02', Subcommand_02 ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_Get_Info', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('119_klen_Get_Info', 'Size_Total',Size_Total);
   myFP.get_OutputParam_ByName('119_klen_Get_Info', 'Size_Used',Size_Used);
   myFP.get_OutputParam_ByName('119_klen_Get_Info', 'First_ZReportNumber',First_ZReportNumber);
   myFP.get_OutputParam_ByName('119_klen_Get_Info', 'Last_ZReportNumber',Last_ZReportNumber);
   myFP.get_OutputParam_ByName('119_klen_Get_Info', 'First_DocumentNumber',First_DocumentNumber);
   myFP.get_OutputParam_ByName('119_klen_Get_Info', 'Last_DocumentNumber',Last_DocumentNumber);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_Get_Info') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Find_Document //
 ( myFP: TCFD_BGR;                      //
   const Subcommand_01 : WideString;    //
   const DocumentType : WideString;     //
   const DocumentNumber : WideString;   //
   var fAnswer : WideString             //
 ) : Integer;                           //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Find_Document', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Find_Document', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Find_Document', 'DocumentNumber', DocumentNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Find_Document');
        myFP.get_OutputParam_ByName('119_klen_Find_Document', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Set_DocsRange //
 ( myFP: TCFD_BGR;                      //
   const Subcommand_01 : WideString;    //
   const DocumentType : WideString;     //
   const StartNumber : WideString;      //
   const EndNumber : WideString;        //
   var fAnswer : WideString             //
 ) : Integer;                           //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Set_DocsRange');
        myFP.get_OutputParam_ByName('119_klen_Set_DocsRange', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Set_DocsRange_InZReport_01 //
 ( myFP: TCFD_BGR;                                   //
   const Subcommand_01 : WideString;                 //
   const DocumentType : WideString;                  //
   const ZReportNumber : WideString;                 //
   var fAnswer : WideString                          //
 ) : Integer;                                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport_01', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport_01', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport_01', 'ZReportNumber', ZReportNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Set_DocsRange_InZReport_01');
        myFP.get_OutputParam_ByName('119_klen_Set_DocsRange_InZReport_01', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Set_DocsRange_InZReport_02 //
 ( myFP: TCFD_BGR;                                   //
   const Subcommand_01 : WideString;                 //
   const DocumentType : WideString;                  //
   const ZReportNumber : WideString;                 //
   const DocumentNumber : WideString;                //
   var fAnswer : WideString                          //
 ) : Integer;                                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport_02', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport_02', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport_02', 'ZReportNumber', ZReportNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport_02', 'DocumentNumber', DocumentNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Set_DocsRange_InZReport_02');
        myFP.get_OutputParam_ByName('119_klen_Set_DocsRange_InZReport_02', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Set_DocsRange_InZReport //
 ( myFP: TCFD_BGR;                                //
   const Subcommand_01 : WideString;              //
   const DocumentType : WideString;               //
   const ZReportNumber : WideString;              //
   const StartNumber : WideString;                //
   const EndNumber : WideString;                  //
   var fAnswer : WideString                       //
 ) : Integer;                                     //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport', 'ZReportNumber', ZReportNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Set_DocsRange_InZReport', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Set_DocsRange_InZReport');
        myFP.get_OutputParam_ByName('119_klen_Set_DocsRange_InZReport', 'fAnswer',fAnswer);
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

function execute_119_klen_Print_Document //
 ( myFP: TCFD_BGR;                       //
   const Subcommand_01 : WideString;     //
   const FontSize : WideString;          //
   const DocumentType : WideString;      //
   const DocumentNumber : WideString;    //
   var fAnswer : WideString              //
 ) : Integer;                            //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Print_Document', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_Document', 'FontSize', FontSize ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_Document', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_Document', 'DocumentNumber', DocumentNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Print_Document');
        myFP.get_OutputParam_ByName('119_klen_Print_Document', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Print_DocsInRange //
 ( myFP: TCFD_BGR;                          //
   const Subcommand_01 : WideString;        //
   const FontSize : WideString;             //
   const DocumentType : WideString;         //
   const StartNumber : WideString;          //
   const EndNumber : WideString;            //
   var fAnswer : WideString                 //
 ) : Integer;                               //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange', 'FontSize', FontSize ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Print_DocsInRange');
        myFP.get_OutputParam_ByName('119_klen_Print_DocsInRange', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Print_DocsInRange_InZReport //
 ( myFP: TCFD_BGR;                                    //
   const Subcommand_01 : WideString;                  //
   const FontSize : WideString;                       //
   const DocumentType : WideString;                   //
   const ZReportNumber : WideString;                  //
   const StartNumber : WideString;                    //
   const EndNumber : WideString;                      //
   var fAnswer : WideString                           //
 ) : Integer;                                         //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange_InZReport', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange_InZReport', 'FontSize', FontSize ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange_InZReport', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange_InZReport', 'ZReportNumber', ZReportNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange_InZReport', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsInRange_InZReport', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Print_DocsInRange_InZReport');
        myFP.get_OutputParam_ByName('119_klen_Print_DocsInRange_InZReport', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_Print_DocsFromDateToDate //
 ( myFP: TCFD_BGR;                                 //
   const Subcommand_01 : WideString;               //
   const FontSize : WideString;                    //
   const DocumentType : WideString;                //
   const From_DateTime : WideString;               //
   const To_DateTime : WideString;                 //
   var fAnswer : WideString                        //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsFromDateToDate', 'Subcommand_01', Subcommand_01 ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsFromDateToDate', 'FontSize', FontSize ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsFromDateToDate', 'DocumentType', DocumentType ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsFromDateToDate', 'From_DateTime', From_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_Print_DocsFromDateToDate', 'To_DateTime', To_DateTime ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('119_klen_Print_DocsFromDateToDate');
        myFP.get_OutputParam_ByName('119_klen_Print_DocsFromDateToDate', 'fAnswer',fAnswer);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_W_ByNumber //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const StartNumber : WideString;         //
   var DataField_01 : WideString;          //
   var DataField_02 : WideString;          //
   var DataField_03 : WideString;          //
   var DataField_04 : WideString;          //
   var DataField_05 : WideString;          //
   var DataField_06 : WideString;          //
   var DataField_07 : WideString;          //
   var DataField_08 : WideString;          //
   var DataField_09 : WideString;          //
   var DataField_10 : WideString;          //
   var DataField_11 : WideString;          //
   var DataField_12 : WideString;          //
   var DataField_13 : WideString;          //
   var DataField_14 : WideString;          //
   var DataField_15 : WideString;          //
   var DataField_16 : WideString;          //
   var DataField_17 : WideString           //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_W_ByNumber', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_W_ByNumber', 'StartNumber', StartNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumber', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_W_ByNumber') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_W_ByNumbersRange //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const StartNumber : WideString;               //
   const EndNumber : WideString;                 //
   var DataField_01 : WideString;                //
   var DataField_02 : WideString;                //
   var DataField_03 : WideString;                //
   var DataField_04 : WideString;                //
   var DataField_05 : WideString;                //
   var DataField_06 : WideString;                //
   var DataField_07 : WideString;                //
   var DataField_08 : WideString;                //
   var DataField_09 : WideString;                //
   var DataField_10 : WideString;                //
   var DataField_11 : WideString;                //
   var DataField_12 : WideString;                //
   var DataField_13 : WideString;                //
   var DataField_14 : WideString;                //
   var DataField_15 : WideString;                //
   var DataField_16 : WideString;                //
   var DataField_17 : WideString                 //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByNumbersRange', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_W_ByNumbersRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_W_ByDateRange //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Option_D : WideString;               //
   const From_DateTime : WideString;          //
   const To_DateTime : WideString;            //
   var DataField_01 : WideString;             //
   var DataField_02 : WideString;             //
   var DataField_03 : WideString;             //
   var DataField_04 : WideString;             //
   var DataField_05 : WideString;             //
   var DataField_06 : WideString;             //
   var DataField_07 : WideString;             //
   var DataField_08 : WideString;             //
   var DataField_09 : WideString;             //
   var DataField_10 : WideString;             //
   var DataField_11 : WideString;             //
   var DataField_12 : WideString;             //
   var DataField_13 : WideString;             //
   var DataField_14 : WideString;             //
   var DataField_15 : WideString;             //
   var DataField_16 : WideString;             //
   var DataField_17 : WideString              //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_W_ByDateRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_W_ByDateRange', 'Option_D', Option_D ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_W_ByDateRange', 'From_DateTime', From_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_W_ByDateRange', 'To_DateTime', To_DateTime ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_ByDateRange', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_W_ByDateRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_W_GetNext //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var DataField_01 : WideString;         //
   var DataField_02 : WideString;         //
   var DataField_03 : WideString;         //
   var DataField_04 : WideString;         //
   var DataField_05 : WideString;         //
   var DataField_06 : WideString;         //
   var DataField_07 : WideString;         //
   var DataField_08 : WideString;         //
   var DataField_09 : WideString;         //
   var DataField_10 : WideString;         //
   var DataField_11 : WideString;         //
   var DataField_12 : WideString;         //
   var DataField_13 : WideString;         //
   var DataField_14 : WideString;         //
   var DataField_15 : WideString;         //
   var DataField_16 : WideString;         //
   var DataField_17 : WideString          //
 ) : Integer;                             //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_W_GetNext', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('119_klen_SInfo_W_GetNext', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_W_GetNext') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_Y_ByNumber //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const StartNumber : WideString;         //
   var DataField_01 : WideString;          //
   var DataField_02 : WideString;          //
   var DataField_03 : WideString;          //
   var DataField_04 : WideString;          //
   var DataField_05 : WideString;          //
   var DataField_06 : WideString;          //
   var DataField_07 : WideString;          //
   var DataField_08 : WideString;          //
   var DataField_09 : WideString;          //
   var DataField_10 : WideString;          //
   var DataField_11 : WideString;          //
   var DataField_12 : WideString;          //
   var DataField_13 : WideString;          //
   var DataField_14 : WideString;          //
   var DataField_15 : WideString;          //
   var DataField_16 : WideString;          //
   var DataField_17 : WideString           //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_Y_ByNumber', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_Y_ByNumber', 'StartNumber', StartNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumber', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_Y_ByNumber') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_Y_ByNumbersRange //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const StartNumber : WideString;               //
   const EndNumber : WideString;                 //
   var DataField_01 : WideString;                //
   var DataField_02 : WideString;                //
   var DataField_03 : WideString;                //
   var DataField_04 : WideString;                //
   var DataField_05 : WideString;                //
   var DataField_06 : WideString;                //
   var DataField_07 : WideString;                //
   var DataField_08 : WideString;                //
   var DataField_09 : WideString;                //
   var DataField_10 : WideString;                //
   var DataField_11 : WideString;                //
   var DataField_12 : WideString;                //
   var DataField_13 : WideString;                //
   var DataField_14 : WideString;                //
   var DataField_15 : WideString;                //
   var DataField_16 : WideString;                //
   var DataField_17 : WideString                 //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByNumbersRange', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_Y_ByNumbersRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_Y_ByDateRange //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Option_D : WideString;               //
   const From_DateTime : WideString;          //
   const To_DateTime : WideString;            //
   var DataField_01 : WideString;             //
   var DataField_02 : WideString;             //
   var DataField_03 : WideString;             //
   var DataField_04 : WideString;             //
   var DataField_05 : WideString;             //
   var DataField_06 : WideString;             //
   var DataField_07 : WideString;             //
   var DataField_08 : WideString;             //
   var DataField_09 : WideString;             //
   var DataField_10 : WideString;             //
   var DataField_11 : WideString;             //
   var DataField_12 : WideString;             //
   var DataField_13 : WideString;             //
   var DataField_14 : WideString;             //
   var DataField_15 : WideString;             //
   var DataField_16 : WideString;             //
   var DataField_17 : WideString              //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'Option_D', Option_D ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'From_DateTime', From_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'To_DateTime', To_DateTime ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_ByDateRange', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_Y_ByDateRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_Y_GetNext //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var DataField_01 : WideString;         //
   var DataField_02 : WideString;         //
   var DataField_03 : WideString;         //
   var DataField_04 : WideString;         //
   var DataField_05 : WideString;         //
   var DataField_06 : WideString;         //
   var DataField_07 : WideString;         //
   var DataField_08 : WideString;         //
   var DataField_09 : WideString;         //
   var DataField_10 : WideString;         //
   var DataField_11 : WideString;         //
   var DataField_12 : WideString;         //
   var DataField_13 : WideString;         //
   var DataField_14 : WideString;         //
   var DataField_15 : WideString;         //
   var DataField_16 : WideString;         //
   var DataField_17 : WideString          //
 ) : Integer;                             //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_Y_GetNext', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('119_klen_SInfo_Y_GetNext', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_Y_GetNext') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_V_ByNumber //
 ( myFP: TCFD_BGR;                         //
   const Option : WideString;              //
   const StartNumber : WideString;         //
   var ErrorCode : WideString;             //
   var DataField_01 : WideString           //
 ) : Integer;                              //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_V_ByNumber', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_V_ByNumber', 'StartNumber', StartNumber ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_V_ByNumber') <> 0 then Exit;
        myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumber', 'ErrorCode',ErrorCode);
        myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumber', 'DataField_01',DataField_01);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_V_ByNumbersRange //
 ( myFP: TCFD_BGR;                               //
   const Option : WideString;                    //
   const StartNumber : WideString;               //
   const EndNumber : WideString;                 //
   var DataField_01 : WideString;                //
   var DataField_02 : WideString;                //
   var DataField_03 : WideString;                //
   var DataField_04 : WideString;                //
   var DataField_05 : WideString;                //
   var DataField_06 : WideString;                //
   var DataField_07 : WideString;                //
   var DataField_08 : WideString;                //
   var DataField_09 : WideString;                //
   var DataField_10 : WideString;                //
   var DataField_11 : WideString;                //
   var DataField_12 : WideString;                //
   var DataField_13 : WideString;                //
   var DataField_14 : WideString;                //
   var DataField_15 : WideString;                //
   var DataField_16 : WideString;                //
   var DataField_17 : WideString                 //
 ) : Integer;                                    //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByNumbersRange', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_V_ByNumbersRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_V_ByDateRange //
 ( myFP: TCFD_BGR;                            //
   const Option : WideString;                 //
   const Option_D : WideString;               //
   const From_DateTime : WideString;          //
   const To_DateTime : WideString;            //
   var DataField_01 : WideString;             //
   var DataField_02 : WideString;             //
   var DataField_03 : WideString;             //
   var DataField_04 : WideString;             //
   var DataField_05 : WideString;             //
   var DataField_06 : WideString;             //
   var DataField_07 : WideString;             //
   var DataField_08 : WideString;             //
   var DataField_09 : WideString;             //
   var DataField_10 : WideString;             //
   var DataField_11 : WideString;             //
   var DataField_12 : WideString;             //
   var DataField_13 : WideString;             //
   var DataField_14 : WideString;             //
   var DataField_15 : WideString;             //
   var DataField_16 : WideString;             //
   var DataField_17 : WideString              //
 ) : Integer;                                 //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_V_ByDateRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_V_ByDateRange', 'Option_D', Option_D ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_V_ByDateRange', 'From_DateTime', From_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_V_ByDateRange', 'To_DateTime', To_DateTime ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_ByDateRange', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_V_ByDateRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_V_GetNext //
 ( myFP: TCFD_BGR;                        //
   const Option : WideString;             //
   var DataField_01 : WideString;         //
   var DataField_02 : WideString;         //
   var DataField_03 : WideString;         //
   var DataField_04 : WideString;         //
   var DataField_05 : WideString;         //
   var DataField_06 : WideString;         //
   var DataField_07 : WideString;         //
   var DataField_08 : WideString;         //
   var DataField_09 : WideString;         //
   var DataField_10 : WideString;         //
   var DataField_11 : WideString;         //
   var DataField_12 : WideString;         //
   var DataField_13 : WideString;         //
   var DataField_14 : WideString;         //
   var DataField_15 : WideString;         //
   var DataField_16 : WideString;         //
   var DataField_17 : WideString          //
 ) : Integer;                             //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_V_GetNext', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('119_klen_SInfo_V_GetNext', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_V_GetNext') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_ExV_ByNumber //
 ( myFP: TCFD_BGR;                           //
   const Option : WideString;                //
   const ExOption : WideString;              //
   const StartNumber : WideString;           //
   var DataField_01 : WideString;            //
   var DataField_02 : WideString;            //
   var DataField_03 : WideString;            //
   var DataField_04 : WideString;            //
   var DataField_05 : WideString;            //
   var DataField_06 : WideString;            //
   var DataField_07 : WideString;            //
   var DataField_08 : WideString;            //
   var DataField_09 : WideString;            //
   var DataField_10 : WideString;            //
   var DataField_11 : WideString;            //
   var DataField_12 : WideString;            //
   var DataField_13 : WideString;            //
   var DataField_14 : WideString;            //
   var DataField_15 : WideString;            //
   var DataField_16 : WideString;            //
   var DataField_17 : WideString             //
 ) : Integer;                                //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'ExOption', ExOption ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'StartNumber', StartNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumber', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_ExV_ByNumber') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_ExV_ByNumbersRange //
 ( myFP: TCFD_BGR;                                 //
   const Option : WideString;                      //
   const ExOption : WideString;                    //
   const StartNumber : WideString;                 //
   const EndNumber : WideString;                   //
   var DataField_01 : WideString;                  //
   var DataField_02 : WideString;                  //
   var DataField_03 : WideString;                  //
   var DataField_04 : WideString;                  //
   var DataField_05 : WideString;                  //
   var DataField_06 : WideString;                  //
   var DataField_07 : WideString;                  //
   var DataField_08 : WideString;                  //
   var DataField_09 : WideString;                  //
   var DataField_10 : WideString;                  //
   var DataField_11 : WideString;                  //
   var DataField_12 : WideString;                  //
   var DataField_13 : WideString;                  //
   var DataField_14 : WideString;                  //
   var DataField_15 : WideString;                  //
   var DataField_16 : WideString;                  //
   var DataField_17 : WideString                   //
 ) : Integer;                                      //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'ExOption', ExOption ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'StartNumber', StartNumber ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'EndNumber', EndNumber ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByNumbersRange', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_ExV_ByNumbersRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_ExV_ByDateRange //
 ( myFP: TCFD_BGR;                              //
   const Option : WideString;                   //
   const ExOption : WideString;                 //
   const Option_D : WideString;                 //
   const From_DateTime : WideString;            //
   const To_DateTime : WideString;              //
   var DataField_01 : WideString;               //
   var DataField_02 : WideString;               //
   var DataField_03 : WideString;               //
   var DataField_04 : WideString;               //
   var DataField_05 : WideString;               //
   var DataField_06 : WideString;               //
   var DataField_07 : WideString;               //
   var DataField_08 : WideString;               //
   var DataField_09 : WideString;               //
   var DataField_10 : WideString;               //
   var DataField_11 : WideString;               //
   var DataField_12 : WideString;               //
   var DataField_13 : WideString;               //
   var DataField_14 : WideString;               //
   var DataField_15 : WideString;               //
   var DataField_16 : WideString;               //
   var DataField_17 : WideString                //
 ) : Integer;                                   //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'Option', Option ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'ExOption', ExOption ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'Option_D', Option_D ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'From_DateTime', From_DateTime ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'To_DateTime', To_DateTime ) <> 0 then Exit;
   Result := True;
 end;

 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_ByDateRange', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_ExV_ByDateRange') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_119_klen_SInfo_ExV_GetNext //
 ( myFP: TCFD_BGR;                          //
   const Option : WideString;               //
   var DataField_01 : WideString;           //
   var DataField_02 : WideString;           //
   var DataField_03 : WideString;           //
   var DataField_04 : WideString;           //
   var DataField_05 : WideString;           //
   var DataField_06 : WideString;           //
   var DataField_07 : WideString;           //
   var DataField_08 : WideString;           //
   var DataField_09 : WideString;           //
   var DataField_10 : WideString;           //
   var DataField_11 : WideString;           //
   var DataField_12 : WideString;           //
   var DataField_13 : WideString;           //
   var DataField_14 : WideString;           //
   var DataField_15 : WideString;           //
   var DataField_16 : WideString;           //
   var DataField_17 : WideString            //
 ) : Integer;                               //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_01',DataField_01);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_02',DataField_02);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_03',DataField_03);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_04',DataField_04);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_05',DataField_05);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_06',DataField_06);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_07',DataField_07);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_08',DataField_08);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_09',DataField_09);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_10',DataField_10);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_11',DataField_11);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_12',DataField_12);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_13',DataField_13);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_14',DataField_14);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_15',DataField_15);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_16',DataField_16);
   myFP.get_OutputParam_ByName('119_klen_SInfo_ExV_GetNext', 'DataField_17',DataField_17);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('119_klen_SInfo_ExV_GetNext', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('119_klen_SInfo_ExV_GetNext') <> 0 then Exit;
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
   const SoundData : WideString         //
 ) : Integer;                           //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('080_other_Sound_Signal', 'SoundData', SoundData ) <> 0 then Exit;
        myFP.execute_Command_ByName('080_other_Sound_Signal');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_072_service_Fiscalization //
 ( myFP: TCFD_BGR;                         //
   const SerialNumber : WideString;        //
   var ErrorCode : WideString              //
 ) : Integer;                              //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('072_service_Fiscalization', 'SerialNumber', SerialNumber ) <> 0 then Exit;
        myFP.execute_Command_ByName('072_service_Fiscalization');
        myFP.get_OutputParam_ByName('072_service_Fiscalization', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_083_service_Set_DecimalsAndTaxRates //
 ( myFP: TCFD_BGR;                                   //
   const Mutiplier : WideString;                     //
   const Decimals : WideString;                      //
   const CurrencyName : WideString;                  //
   const EnabledMask : WideString;                   //
   const TaxA : WideString;                          //
   const TaxB : WideString;                          //
   const TaxC : WideString;                          //
   const TaxD : WideString;                          //
   const TaxE : WideString;                          //
   const TaxF : WideString;                          //
   const TaxG : WideString;                          //
   const TaxH : WideString                           //
 ) : Integer;                                        //



 function set_Input : Boolean;
 begin
   Result := False;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'Mutiplier', Mutiplier ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'Decimals', Decimals ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'CurrencyName', CurrencyName ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'EnabledMask', EnabledMask ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'TaxA', TaxA ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'TaxB', TaxB ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'TaxC', TaxC ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'TaxD', TaxD ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'TaxE', TaxE ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'TaxF', TaxF ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'TaxG', TaxG ) <> 0 then Exit;
   if myFP.set_InputParam_ByName('083_service_Set_DecimalsAndTaxRates', 'TaxH', TaxH ) <> 0 then Exit;
   Result := True;
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if not set_Input then Exit;
        myFP.execute_Command_ByName('083_service_Set_DecimalsAndTaxRates');
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

function execute_091_service_Set_SerialNumber //
 ( myFP: TCFD_BGR;                            //
   const SerialNumber : WideString;           //
   const FMNumber : WideString;               //
   var ErrorCode : WideString;                //
   var Country : WideString                   //
 ) : Integer;                                 //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('091_service_Set_SerialNumber', 'SerialNumber', SerialNumber ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('091_service_Set_SerialNumber', 'FMNumber', FMNumber ) <> 0 then Exit;
        if myFP.execute_Command_ByName('091_service_Set_SerialNumber') <> 0 then Exit;
        myFP.get_OutputParam_ByName('091_service_Set_SerialNumber', 'ErrorCode',ErrorCode);
        myFP.get_OutputParam_ByName('091_service_Set_SerialNumber', 'Country',Country);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_098_service_Set_EIK //
 ( myFP: TCFD_BGR;                   //
   const EIK_Value : WideString;     //
   const EIK_Name : WideString;      //
   var ErrorCode : WideString        //
 ) : Integer;                        //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('098_service_Set_EIK', 'EIK_Value', EIK_Value ) <> 0 then Exit;
        if myFP.set_InputParam_ByName('098_service_Set_EIK', 'EIK_Name', EIK_Name ) <> 0 then Exit;
        myFP.execute_Command_ByName('098_service_Set_EIK');
        myFP.get_OutputParam_ByName('098_service_Set_EIK', 'ErrorCode',ErrorCode);
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_133_service_Disable_Print //
 ( myFP: TCFD_BGR;                         //
   const Disabled : WideString             //
 ) : Integer;                              //


begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('133_service_Disable_Print', 'Disabled', Disabled ) <> 0 then Exit;
        myFP.execute_Command_ByName('133_service_Disable_Print');
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;

function execute_135_service_Test_GPRS //
 ( myFP: TCFD_BGR;                     //
   const Option : WideString;          //
   var ErrorCode : WideString;         //
   var Signal : WideString;            //
   var IMEI : WideString;              //
   var IMSI : WideString;              //
   var Oper : WideString               //
 ) : Integer;                          //



 procedure set_Output;
 begin
   myFP.get_OutputParam_ByName('135_service_Test_GPRS', 'ErrorCode',ErrorCode);
   myFP.get_OutputParam_ByName('135_service_Test_GPRS', 'Signal',Signal);
   myFP.get_OutputParam_ByName('135_service_Test_GPRS', 'IMEI',IMEI);
   myFP.get_OutputParam_ByName('135_service_Test_GPRS', 'IMSI',IMSI);
   myFP.get_OutputParam_ByName('135_service_Test_GPRS', 'Oper',Oper);
 end;

begin
  Result := -1;
  if not Assigned(myFP) then Exit;
  try
     try
        if not myFP.connected_ToDevice then Exit;
        if myFP.set_InputParam_ByName('135_service_Test_GPRS', 'Option', Option ) <> 0 then Exit;
        if myFP.execute_Command_ByName('135_service_Test_GPRS') <> 0 then Exit;
        set_Output;
     except
        On E:Exception do ShowMessage(E.Message);
     end;
  finally
     Result := myFP.lastError_Code;
  end;
end;


end.
