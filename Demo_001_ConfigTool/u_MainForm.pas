unit u_MainForm;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	Winapi.ShellAPI,
	System.SysUtils,
	System.DateUtils,
	System.Variants,
	System.Classes,
	System.Win.ComObj,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.OleServer,
	Vcl.StdCtrls,
	Vcl.ComCtrls,
	Vcl.WinXCtrls,
	Vcl.ExtCtrls,
	Vcl.Buttons,
	Vcl.AppEvnts,
	Vcl.Samples.Gauges,
	Vcl.FileCtrl,
	Vcl.ExtDlgs,
	SynHighlighterDST,
	SynEdit,
	SynCompletionProposal,
	FP3530_TLB,
	uDeviceGroup_A,
	uDeviceGroup_B,
	uDeviceGroup_C;

const
	caption_None                                   = '.....';
	Hex_Digits                                     = 16;
	Hex_Digit: array [0 .. Hex_Digits - 1] of Char = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f');
	en_Message_NoDriver                            = 'The program can not detect the driver. ' + sLineBreak + 'Please install "FP3530 - COMServer" or call the support team! ';

type
	TAfterCase = (             //
	  ac_AfterStart_Program,   // After start of the program
	  ac_AfterStart_Server,    //
	  ac_AfterOpenConnection,  // After open connection to the device
	  ac_AfterCloseConnection, // After close connection to the device
	  ac_AfterStopServer,      //
	  ac_AfterSettingsChange   // After changes from other client application
	  );

	TOldValues = record
		Active_OnAfterCloseConnection: Boolean;
		Active_OnAfterOpenConnection: Boolean;
		Active_OnAfterSettingsChange: Boolean;
		RegisterActiveObject: Boolean;
		Save_Settings_AfterOpenConnection: Boolean;
	end;

	Tfm_MainForm = class(TForm)
		pc_Main: TPageControl;
		ts_Initialisation: TTabSheet;
		ts_CustomCommand: TTabSheet;
		pnl_StatusBytes: TPanel;
		ScrollBox1: TScrollBox;
		grbx_SB_0: TGroupBox;
		chbx_S0_7: TCheckBox;
		chbx_S0_6: TCheckBox;
		chbx_S0_5: TCheckBox;
		chbx_S0_4: TCheckBox;
		chbx_S0_3: TCheckBox;
		chbx_S0_2: TCheckBox;
		chbx_S0_1: TCheckBox;
		chbx_S0_0: TCheckBox;
		grbx_SB_1: TGroupBox;
		chbx_S1_7: TCheckBox;
		chbx_S1_6: TCheckBox;
		chbx_S1_5: TCheckBox;
		chbx_S1_4: TCheckBox;
		chbx_S1_3: TCheckBox;
		chbx_S1_2: TCheckBox;
		chbx_S1_1: TCheckBox;
		chbx_S1_0: TCheckBox;
		grbx_SB_2: TGroupBox;
		chbx_S2_7: TCheckBox;
		chbx_S2_6: TCheckBox;
		chbx_S2_5: TCheckBox;
		chbx_S2_4: TCheckBox;
		chbx_S2_3: TCheckBox;
		chbx_S2_2: TCheckBox;
		chbx_S2_1: TCheckBox;
		chbx_S2_0: TCheckBox;
		grbx_SB_3: TGroupBox;
		chbx_S3_7: TCheckBox;
		chbx_S3_6: TCheckBox;
		chbx_S3_5: TCheckBox;
		chbx_S3_4: TCheckBox;
		chbx_S3_3: TCheckBox;
		chbx_S3_2: TCheckBox;
		chbx_S3_1: TCheckBox;
		chbx_S3_0: TCheckBox;
		grbx_SB_4: TGroupBox;
		chbx_S4_7: TCheckBox;
		chbx_S4_6: TCheckBox;
		chbx_S4_5: TCheckBox;
		chbx_S4_4: TCheckBox;
		chbx_S4_3: TCheckBox;
		chbx_S4_2: TCheckBox;
		chbx_S4_1: TCheckBox;
		chbx_S4_0: TCheckBox;
		grbx_SB_5: TGroupBox;
		chbx_S5_7: TCheckBox;
		chbx_S5_6: TCheckBox;
		chbx_S5_5: TCheckBox;
		chbx_S5_4: TCheckBox;
		chbx_S5_3: TCheckBox;
		chbx_S5_2: TCheckBox;
		chbx_S5_1: TCheckBox;
		chbx_S5_0: TCheckBox;
		grbx_SB_6: TGroupBox;
		chbx_S6_7: TCheckBox;
		chbx_S6_6: TCheckBox;
		chbx_S6_5: TCheckBox;
		chbx_S6_4: TCheckBox;
		chbx_S6_3: TCheckBox;
		chbx_S6_2: TCheckBox;
		chbx_S6_1: TCheckBox;
		chbx_S6_0: TCheckBox;
		grbx_SB_7: TGroupBox;
		chbx_S7_7: TCheckBox;
		chbx_S7_6: TCheckBox;
		chbx_S7_5: TCheckBox;
		chbx_S7_4: TCheckBox;
		chbx_S7_3: TCheckBox;
		chbx_S7_2: TCheckBox;
		chbx_S7_1: TCheckBox;
		chbx_S7_0: TCheckBox;
		ed_Custom_Cmd: TEdit;
		ed_Custom_Input: TEdit;
		ed_Custom_Output: TEdit;
		lb_Custom_Cmd: TLabel;
		lb_Custom_Input: TLabel;
		lb_Custom_Output: TLabel;
		btn_ExecuteCustomCommand: TButton;
		mem_AnswerList: TMemo;
		lb_AnswerList: TLabel;
		OpenDialog1: TOpenDialog;
		btn_Last_AnswerList: TButton;
		ts_SystemInfo: TTabSheet;
		btn_GetSystemInfo: TBitBtn;
		mem_SystemInfo: TMemo;
		ApplicationEvents1: TApplicationEvents;
		pnl_Progress: TPanel;
		gau_Second: TGauge;
		gau_First: TGauge;
		OpenPictureDialog1: TOpenPictureDialog;
		ts_GetCommandsList: TTabSheet;
		pnl_Pages: TPanel;
		ts_CustomScript: TTabSheet;
		pnl_Btns: TPanel;
		btn_ExecuteScrypt: TBitBtn;
		btn_ExecuteSelected: TBitBtn;
		btn_LoadScriptFromFile: TBitBtn;
		pc_ScriptContainer: TPageControl;
		ts_SimpleScript: TTabSheet;
		se_Script: TSynEdit;
		ts_HumanLog: TTabSheet;
		ts_HEXLog: TTabSheet;
		reHEXLog: TRichEdit;
		reHumanLog: TRichEdit;
		pnl_Btm: TPanel;
		mem_Log: TMemo;
		btn_DelScriptIput: TBitBtn;
		btn_DeleteOutput: TBitBtn;
		cbx_GoToPage: TComboBox;
		pnl_CommandInfo: TPanel;
		btn_ComandsList: TBitBtn;
		cbx_CommandsList: TComboBox;
		btn_GetComandInfo: TBitBtn;
		se_CmdInfo: TSynEdit;
		SynCompletionProposal1: TSynCompletionProposal;
		btn_Cancel: TBitBtn;
		btn_GenerateCode: TBitBtn;
		chbx_SortedCommandsList: TCheckBox;
		cbx_CodeType: TComboBox;
		cbx_CommandList_NameIndex: TComboBox;
		ts_Behavior: TTabSheet;
		pnl_ConnectionProperties: TPanel;
		btn_StartCOMServer: TButton;
		btn_OpenConnection: TButton;
		btn_StopConnection: TButton;
		btn_StopCOMServer: TButton;
		lb_Language_1: TLabel;
		lb_Firmware_CodePage_01: TLabel;
		lb_Firmware_CodePage_02: TLabel;
		lb_Firmware_CheckSum_01: TLabel;
		lb_Firmware_CheckSum_02: TLabel;
		lb_Firmware_Date_01: TLabel;
		lb_Firmware_Date_02: TLabel;
		lb_Firmware_Revision_01: TLabel;
		lb_Firmware_Revision_02: TLabel;
		lb_Device_Type_01: TLabel;
		lb_Device_Type_02: TLabel;
		lb_Language_2: TLabel;
		lb_DeviceConnected_1: TLabel;
		lb_DeviceConnected_2: TLabel;
		lb_LANConnected_1: TLabel;
		lb_LANConnected_2: TLabel;
		lb_ModelName_1: TLabel;
		lb_ModelName_2: TLabel;
		lb_SerialNumber_1: TLabel;
		lb_SerialNumber_2: TLabel;
		lb_FM_Number_01: TLabel;
		lb_FM_Number_02: TLabel;
		grbx_Device_TransportProtocol: TGroupBox;
		tsw_TransportType: TToggleSwitch;
		lb_COMPort: TLabel;
		ed_COMPort: TEdit;
		lb_BaudRate: TLabel;
		lb_LANPort: TLabel;
		lb_IPAddress: TLabel;
		ed_BaudRate: TEdit;
		ed_LANPort: TEdit;
		ed_IPAddress: TEdit;
		pc_Behavior: TPageControl;
		ts_RAOMode: TTabSheet;
		chbx_RegisterActiveObject: TCheckBox;
		chbx_Active_OnAfterOpenConnection: TCheckBox;
		chbx_Active_OnAfterCloseConnection: TCheckBox;
		btn_Set_RAO_Mode: TButton;
		chbx_Active_OnAfterSettingsChange: TCheckBox;
		chbx_Save_Settings_AfterOpenConnection: TCheckBox;
		ts_EventsCommands: TTabSheet;
		chbx_Active_OnBeforeScriptExecute: TCheckBox;
		chbx_Active_OnScriptRowExecute: TCheckBox;
		chbx_Active_OnAfterScriptExecute: TCheckBox;
		chbx_Active_OnSendCommand: TCheckBox;
		chbx_Active_OnWait: TCheckBox;
		chbx_Active_OnReceiveAnswer: TCheckBox;
		chbx_Active_OnStatusChange: TCheckBox;
		chbx_Active_OnError: TCheckBox;
		btn_SaveEvents_Commands: TButton;
		ts_Events_PorgressBars: TTabSheet;
		btn_SaveEvents_ProgressBars: TButton;
		chbx_Active_OnFirstProgress_Init: TCheckBox;
		chbx_Active_OnFirstProgress_Loop: TCheckBox;
		chbx_Active_OnFirstProgress_Complete: TCheckBox;
		chbx_Active_OnSecondProgress_Init: TCheckBox;
		chbx_Active_OnSecondProgress_Loop: TCheckBox;
		chbx_Active_OnSecondProgress_Complete: TCheckBox;
		TabSheet1: TTabSheet;
		lb_DriverLanguage: TLabel;
		cbx_DriverLanguage: TComboBox;
		grbx_TrackingMode: TGroupBox;
		lb_TrackingModePath: TLabel;
		lb_TrackingModeFileName: TLabel;
		Label1: TLabel;
		ed_TrackingModePath: TEdit;
		ed_TrackingModeFileName: TEdit;
		ed_TrackingModeRowLimit: TEdit;
		btn_SaveOtherSettings: TButton;
		chbx_TrackingMode: TCheckBox;
		chbx_CheckDeviceStatusOnCheckConnection: TCheckBox;
		ts_Examples_Receipt: TTabSheet;
		btn_CashIn_CashOut: TButton;
		btn_GetDateTime: TButton;
		lb_PackagedMessageType_01: TLabel;
		lb_PackagedMessageType_02: TLabel;
		lb_StatusBytesCount_01: TLabel;
		lb_StatusBytesCount_02: TLabel;
		btn_Get_CashInOut: TButton;
		ts_Storno: TTabSheet;
		btn_RefreshStornoValues: TButton;
		lb_Operator_Code: TLabel;
		ed_StOperator_Code: TEdit;
		lb_Operator_Password: TLabel;
		ed_StOperator_Password: TEdit;
		lb_Till_Number: TLabel;
		ed_StTill_Number: TEdit;
		lb_St_Reason_Type: TLabel;
		cbx_St_Reason_Type: TComboBox;
		lb_St_Doc_Number: TLabel;
		ed_St_Doc_Number: TEdit;
		lb_St_Doc_DateTime: TLabel;
		ed_St_Doc_DateTime: TEdit;
		ed_St_FM_Number: TEdit;
		lb_St_FM_Number: TLabel;
		ed_St_Doc_UNP: TEdit;
		lb_St_Doc_UNP: TLabel;
		lb_St_ByInvoice: TLabel;
		cbx_St_ByInvoice: TComboBox;
		lb_St_InvoiceNumber: TLabel;
		ed_St_InvoiceNumber: TEdit;
		lb_St_Reason: TLabel;
		ed_St_Reason: TEdit;
		lb_AllReceipt_Count: TLabel;
		lb_StReceipt_Count: TLabel;
		btn_InitStornoValues: TButton;
		lb_can_OpenStornoReceipt: TLabel;
		btn_Open_StornoReceipt: TButton;
		btn_SetDateTime: TButton;
		btn_OpenFiscalReceipt_UNP: TButton;
		ed_AllReceipt_Count_Storno: TEdit;
		ed_StReceipt_Count: TEdit;
		lb_AllReceipt_Count_FiscalReceipt: TLabel;
		ed_AllReceipt_Count_FiscalReceipt: TEdit;
		lb_FiscalReceipt_Count: TLabel;
		ed_FiscalReceipt_Count: TEdit;
		btn_Sell: TButton;
		btn_Subtotal: TButton;
		btn_Total: TButton;
		btn_Close: TButton;
		lb_SubTotal: TLabel;
		ed_SubTotal: TEdit;
		lb_TaxAValue: TLabel;
		ed_TaxAValue: TEdit;
		lb_TaxBValue: TLabel;
		ed_TaxBValue: TEdit;
		lb_TaxCValue: TLabel;
		ed_TaxCValue: TEdit;
		ed_TaxDValue: TEdit;
		lb_TaxDValue: TLabel;
		ed_TaxEValue: TEdit;
		lb_TaxEValue: TLabel;
		ed_TaxFValue: TEdit;
		lb_TaxFValue: TLabel;
		ed_TaxGValue: TEdit;
		lb_TaxGValue: TLabel;
		ed_TaxHValue: TEdit;
		lb_TaxHValue: TLabel;
		btn_CancelReceipt: TButton;
		lb_St_Current_UNP: TLabel;
		ed_St_Current_UNP: TEdit;
		ts_DeviceDependent: TTabSheet;
		ts_DeviceInDependent: TTabSheet;
		pc_DeviceIndependent: TPageControl;
		ts_FiscalOpen: TTabSheet;
		pc_DeviceDependent: TPageControl;
		lb_FR_OperatorCode: TLabel;
		lb_FR_OperatorPassword: TLabel;
		lb_FR_TillNumber: TLabel;
		ed_FR_OperatorCode: TEdit;
		ed_FR_OperatorPassword: TEdit;
		ed_FR_TillNumber: TEdit;
		lb_FR_UNP: TLabel;
		ed_FR_UNP: TEdit;
		lb_FR_ByInvoice: TLabel;
		cbx_FR_ByInvoice: TComboBox;
		lb_FR_AllReceiptCount: TLabel;
		lb_FR_FiscalReceiptCount: TLabel;
		ed_FR_AllReceiptCount: TEdit;
		ed_FR_FiscalReceiptCount: TEdit;
		btn_Init_FRValues: TButton;
		btn_Refresh_FRValues: TButton;
		lb_CanOpenFiscalReceipt: TLabel;
		btn_OpenFiscalReceipt: TButton;
		lb_Can_OpenInvoiceReceipt: TLabel;
		btn_Open_InvoiceReceipt: TButton;
		lb_GlobalCounter: TLabel;
		ed_GlobalCounter: TEdit;
		fd: TCFD_BGR;
		btn_GenerateAll: TButton;
		procedure btn_StartCOMServerClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure btn_StopCOMServerClick(Sender: TObject);
		procedure btn_OpenConnectionClick(Sender: TObject);
		procedure tsw_TransportTypeClick(Sender: TObject);
		procedure btn_StopConnectionClick(Sender: TObject);
		procedure btn_ExecuteCustomCommandClick(Sender: TObject);
		procedure btn_Last_AnswerListClick(Sender: TObject);
		procedure btn_GetSystemInfoClick(Sender: TObject);
		procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
		procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
		procedure btn_ComandsListClick(Sender: TObject);
		procedure btn_GetComandInfoClick(Sender: TObject);
		procedure get_CommandInfo;
		procedure get_InputParamsList;
		procedure get_OutputParamsList;
		procedure btn_LoadScriptFromFileClick(Sender: TObject);
		procedure btn_ExecuteScryptClick(Sender: TObject);
		procedure btn_DeleteOutputClick(Sender: TObject);
		procedure btn_DelScriptIputClick(Sender: TObject);
		procedure btn_ExecuteSelectedClick(Sender: TObject);
		procedure btn_CancelClick(Sender: TObject);
		procedure btn_GenerateCodeClick(Sender: TObject);
		procedure chbx_SortedCommandsListClick(Sender: TObject);
		procedure cbx_CommandList_NameIndexChange(Sender: TObject);
		function find_ActiveObject(theName: string): Boolean;
		procedure ApplicationEvents1SettingChange(Sender: TObject; Flag: Integer; const Section: string; var Result: Integer);
		procedure btn_Set_RAO_ModeClick(Sender: TObject);
		//
		procedure set_FormatSettings;
		procedure set_TabVisibility(afterCase: TAfterCase);
		procedure set_LabelValues(afterCase: TAfterCase);
		procedure set_ComboBoxValues(afterCase: TAfterCase);
		procedure set_CheckBoxes(afterCase: TAfterCase);
		procedure set_EditBoxes(afterCase: TAfterCase);
		procedure set_Buttons(afterCase: TAfterCase);
		procedure set_Other(afterCase: TAfterCase);
		function set_TransportProtocol: Integer;
		procedure show_DeviceModel;
		function tryTo_COMServer_Start: Boolean;
		function save_Language: Integer;
		function save_TrackingMode: Integer;
		procedure btn_SaveEvents_CommandsClick(Sender: TObject);
		procedure btn_SaveEvents_ProgressBarsClick(Sender: TObject);
		procedure btn_SaveOtherSettingsClick(Sender: TObject);
		procedure fdAfterChangeSettings(ASender: TObject; settings_Index: Integer);
		procedure fdAfterCloseConnection(Sender: TObject);
		procedure fdAfterOpenConnection(Sender: TObject);
		procedure fdAfterScriptExecute(Sender: TObject);
		procedure fdBeforeScriptExecute(Sender: TObject);
		procedure fdError(ASender: TObject; error_Code: Integer; var error_Message: WideString);
		procedure fdFirstProgress_Complete(Sender: TObject);
		procedure fdFirstProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
		procedure fdFirstProgress_Loop(ASender: TObject; value_Position: Integer);
		procedure fdReceiveAnswer(ASender: TObject; var Command, DateAndTime, repeat_Value, hex_Header, hex_Data, hex_Footer, human_Data: WideString);
		procedure fdScriptRowExecute(ASender: TObject; row_Index, error_Code: Integer; var input_Value, output_Value: WideString);
		procedure fdSecondProgress_Complete(Sender: TObject);
		procedure fdSecondProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
		procedure fdSecondProgress_Loop(ASender: TObject; value_Position: Integer);
		procedure fdSendCommand(ASender: TObject; var Command, DateAndTime, repeat_Value, hex_Header, hex_Data, hex_Footer, human_Data: WideString);
		procedure fdStatusChange(Sender: TObject);
		procedure fdWait(ASender: TObject; Value: Byte);
		procedure btn_CashIn_CashOutClick(Sender: TObject);
		procedure btn_GetDateTimeClick(Sender: TObject);
		procedure btn_Get_CashInOutClick(Sender: TObject);
		procedure btn_RefreshStornoValuesClick(Sender: TObject);
		procedure btn_InitStornoValuesClick(Sender: TObject);
		procedure btn_Open_StornoReceiptClick(Sender: TObject);
		procedure btn_SetDateTimeClick(Sender: TObject);
		procedure btn_OpenFiscalReceipt_UNPClick(Sender: TObject);
		procedure btn_SellClick(Sender: TObject);
		procedure btn_SubtotalClick(Sender: TObject);
		procedure btn_TotalClick(Sender: TObject);
		procedure btn_CloseClick(Sender: TObject);
		procedure btn_CancelReceiptClick(Sender: TObject);
		procedure ed_StOperator_CodeChange(Sender: TObject);
		procedure ed_StOperator_PasswordChange(Sender: TObject);
		procedure ed_StTill_NumberChange(Sender: TObject);
		procedure cbx_St_Reason_TypeChange(Sender: TObject);
		procedure ed_St_Doc_NumberChange(Sender: TObject);
		procedure ed_St_Doc_DateTimeChange(Sender: TObject);
		procedure ed_St_FM_NumberChange(Sender: TObject);
		procedure ed_St_Doc_UNPChange(Sender: TObject);
		procedure cbx_St_ByInvoiceChange(Sender: TObject);
		procedure ed_St_InvoiceNumberChange(Sender: TObject);
		procedure ed_St_ReasonChange(Sender: TObject);
		procedure ed_St_Current_UNPChange(Sender: TObject);
		procedure btn_Init_FRValuesClick(Sender: TObject);
		procedure btn_Refresh_FRValuesClick(Sender: TObject);
		procedure ed_FR_OperatorCodeChange(Sender: TObject);
		procedure ed_FR_OperatorPasswordChange(Sender: TObject);
		procedure ed_FR_TillNumberChange(Sender: TObject);
		procedure ed_FR_UNPChange(Sender: TObject);
		procedure cbx_FR_ByInvoiceChange(Sender: TObject);
		procedure btn_OpenFiscalReceiptClick(Sender: TObject);
		procedure btn_Open_InvoiceReceiptClick(Sender: TObject);
		procedure btn_GenerateAllClick(Sender: TObject);

	protected
		//
	private
		fWeHaveWaitEvent  : Boolean;
		fSYNCount         : Byte;
		fAppMessCount     : Byte;
		fTransportProtocol: TTransportProtocol;
		fComPort          : Integer;
		fBaudRate         : Integer;
		fLastError_Code   : Integer;
		fLastError_Message: WideString;
		fOldDudeInstance  : Variant;
		fAfterCase        : TAfterCase;
		fMyAfterCaseFlag  : Boolean;
		fCanRefreshValues : Boolean;
		fErrorCode        : WideString;
		//
		procedure ScrollBarMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
		//
		procedure SetBaudRate(const Value: Integer);
		procedure SetComPort(const Value: Integer);
		{ Private declarations }
		procedure init_StatusState;
		procedure get_StatusState;
		procedure get_StatusDescriptions;
		procedure set_GroupBoxVisibility;
		function byteToHex(B: Byte): String;
		procedure scrollToEnd(targetEditor: TRichEdit);
		procedure initForSniffer(targetLogEditor: TRichEdit);
		function set_InputParam_ByIndex(param_Index: Integer; const param_Value: string): Boolean;
		function set_InputParam_ByName(const param_Name: string; const param_Value: string): Boolean;
		function execute_Command_ByName: Boolean;
		function get_OutputParamsCount(var oCount: Integer): Boolean;
		function get_OutputParams_Names(var Value: WideString): Boolean;
		procedure enableScriptBtns(toValue: Boolean);
		procedure SetAfterCase(const Value: TAfterCase);
		function canTryToCancel: Boolean;
		procedure check_Can_OpenStornoReceipt;
		procedure check_Can_OpenFiscalReceipt;
		procedure check_Can_OpenInvoiceReceipt;
		procedure refresh_StornoProperties;
		procedure refresh_FiscalReceiptProperties;
	public
		command_Name              : string;
		param_Name                : WideString;
		error_Code                : Integer;
		property comPort          : Integer read fComPort write SetComPort;
		property baudRate         : Integer read fBaudRate write SetBaudRate;
		property lastError_Code   : Integer read fLastError_Code;
		property lastError_Message: WideString read fLastError_Message;
		property afterCase        : TAfterCase read fAfterCase write SetAfterCase;
	end;

var
	fm_MainForm: Tfm_MainForm;

implementation

{$R *.dfm}

procedure Tfm_MainForm.ApplicationEvents1SettingChange(Sender: TObject; Flag: Integer; const Section: string; var Result: Integer);
begin
	set_FormatSettings;
end;

procedure Tfm_MainForm.btn_GenerateCodeClick(Sender: TObject);
begin
	btn_GenerateCode.Enabled := False;
	try
		if cbx_CommandsList.ItemIndex < 0 then Exit;
		se_CmdInfo.Clear;
		command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
		case cbx_CodeType.ItemIndex of
			0: se_CmdInfo.Text := fd.generate_SourceCode(command_Name, Delphi);
			1: se_CmdInfo.Text := fd.generate_SourceCode(command_Name, CSharp);
		end;
	finally
		btn_GenerateCode.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_GetComandInfoClick(Sender: TObject);
begin
	if cbx_CommandsList.ItemIndex < 0 then Exit;
	command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
	get_CommandInfo;
	get_InputParamsList;
	get_OutputParamsList;
end;

procedure Tfm_MainForm.btn_GetDateTimeClick(Sender: TObject);
var
	Day      : WideString; //
	Month    : WideString; //
	Year     : WideString; //
	Hour     : WideString; //
	Minute   : WideString; //
	Second   : WideString; //
	ErrorCode: WideString; //
	DST      : WideString; //
begin
	btn_GetDateTime.Enabled := False;
	try
		case fd.device_Group of
			fd_Group_A:
				begin
					if uDeviceGroup_A.execute_062_info_Get_DateTime_01(fd, Day, Month, Year, Hour, Minute, Second) <> 0 then ShowMessage(fd.lastError_Message)
					else ShowMessage(Day + '-' + Month + '-' + Year + ' ' + Hour + ':' + Minute + ':' + Second);
				end;
			fd_Group_B:
				begin
					if uDeviceGroup_B.execute_062_info_Get_DateTime_01(fd, Day, Month, Year, Hour, Minute, Second) <> 0 then ShowMessage(fd.lastError_Message)
					else ShowMessage(Day + '-' + Month + '-' + Year + ' ' + Hour + ':' + Minute + ':' + Second);
				end;
			fd_Group_C:
				begin
					if uDeviceGroup_C.execute_062_info_Get_DateTime_01(fd, ErrorCode, Day, Month, Year, Hour, Minute, Second, DST) <> 0 then ShowMessage(fd.lastError_Message)
					else ShowMessage(Day + '-' + Month + '-' + Year + ' ' + Hour + ':' + Minute + ':' + Second + ' ' + DST);
				end;
			fd_Group_Unknown:;
		end;
	finally
		btn_GetDateTime.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_ComandsListClick(Sender: TObject);
begin
	btn_ComandsList.Enabled := False;
	btn_GetComandInfo.Enabled := False;
	se_CmdInfo.Clear;
	cbx_CommandsList.Clear;
	cbx_CommandsList.Enabled := False;
	Self.Update;
	try
		cbx_CommandsList.Items.Text := fd.get_ComandsList(cbx_CommandList_NameIndex.ItemIndex);
		if cbx_CommandsList.Items.Count > 0 then
		begin
			cbx_CommandsList.ItemIndex := 0;
			command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
			// get_CommandInfo;
			se_CmdInfo.Clear;
			se_CmdInfo.Text := cbx_CommandsList.Items.Text;
		end;
	finally
		btn_ComandsList.Enabled := True;
		btn_GetComandInfo.Enabled := True;
		cbx_CommandsList.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_CancelClick(Sender: TObject);
begin
	fd.cancel_Loop;
end;

procedure Tfm_MainForm.btn_CancelReceiptClick(Sender: TObject);
begin
	btn_Cancel.Enabled := False;
	Self.Update;
	try
		try
			case fd.device_Group of
				fd_Group_A: if uDeviceGroup_A.execute_060_receipt_Fiscal_Cancel(fd) <> 0 then ShowMessage(fd.lastError_Message);
				fd_Group_B: if uDeviceGroup_B.execute_060_receipt_Fiscal_Cancel(fd) <> 0 then ShowMessage(fd.lastError_Message);
				fd_Group_C: if uDeviceGroup_C.execute_060_receipt_Fiscal_Cancel(fd, fErrorCode) <> 0 then ShowMessage(fd.get_ErrorMessageByCode(StrToInt(fErrorCode)));
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		btn_Cancel.Enabled := canTryToCancel;
	end;
end;

procedure Tfm_MainForm.btn_CashIn_CashOutClick(Sender: TObject);
var
	tmp       : string;
	ErrorCode : WideString; //
	CashSum   : WideString; //
	ServIn    : WideString; //
	ServOut   : WideString; //
	AmountType: WideString; //
	Amount    : WideString; //
begin
	btn_CashIn_CashOut.Enabled := False;
	try
		case fd.device_Group of
			fd_Group_A:
				begin
					if uDeviceGroup_A.execute_070_receipt_CashIn_CashOut( //
					  fd,                                                 //
					  '0.01',                                             //
					  ErrorCode,                                          //
					  CashSum,                                            //
					  ServIn,                                             //
					  ServOut) <> 0 then ShowMessage(fd.lastError_Message)
					else
					begin
						tmp := 'ErrorCode: ' + ErrorCode + sLineBreak;
						tmp := tmp + 'CashSum: ' + CashSum + sLineBreak;
						tmp := tmp + 'ServIn: ' + ServIn + sLineBreak;
						tmp := tmp + 'ServOut: ' + ServOut + sLineBreak;
						ShowMessage(tmp);
					end;
				end;
			fd_Group_B:
				begin
					if uDeviceGroup_B.execute_070_receipt_CashIn_CashOut( //
					  fd,                                                 //
					  '0.01',                                             //
					  ErrorCode,                                          //
					  CashSum,                                            //
					  ServIn,                                             //
					  ServOut) <> 0 then ShowMessage(fd.lastError_Message)
					else
					begin
						tmp := 'ErrorCode: ' + ErrorCode + sLineBreak;
						tmp := tmp + 'CashSum: ' + CashSum + sLineBreak;
						tmp := tmp + 'ServIn: ' + ServIn + sLineBreak;
						tmp := tmp + 'ServOut: ' + ServOut + sLineBreak;
						ShowMessage(tmp);
					end;
				end;
			fd_Group_C:
				begin
					AmountType := '0'; //
					Amount := '0.01';
					if uDeviceGroup_C.execute_070_receipt_CashIn_CashOut( //
					  fd,                                                 //
					  AmountType,                                         //
					  Amount,                                             //
					  ErrorCode,                                          //
					  CashSum,                                            //
					  ServIn,                                             //
					  ServOut) <> 0 then ShowMessage(fd.get_ErrorMessageByCode(StrToInt(ErrorCode)))
					else
					begin
						tmp := 'ErrorCode: ' + ErrorCode + sLineBreak;
						tmp := tmp + 'CashSum: ' + CashSum + sLineBreak;
						tmp := tmp + 'ServIn: ' + ServIn + sLineBreak;
						tmp := tmp + 'ServOut: ' + ServOut + sLineBreak;
						ShowMessage(tmp);
					end;
				end;
			fd_Group_Unknown:;
		end;
	finally
		btn_CashIn_CashOut.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_CloseClick(Sender: TObject);
var
	AllReceiptCount   : WideString; //
	FiscalReceiptCount: WideString; //
	ErrorCode         : WideString; //
	tmpMessage        : string;

	procedure show_Output;
	begin
		tmpMessage := 'AllReceiptCount: ' + AllReceiptCount + sLineBreak;
		tmpMessage := tmpMessage + 'FiscalReceiptCount: ' + FiscalReceiptCount;
		ShowMessage(tmpMessage);

		ed_AllReceipt_Count_Storno.Text := fd.AllReceipt_Count.ToString;
		ed_AllReceipt_Count_FiscalReceipt.Text := fd.AllReceipt_Count.ToString;
		ed_FiscalReceipt_Count.Text := fd.FiscalReceipt_Count.ToString;
	end;

begin
	btn_Close.Enabled := False;
	try
		try
			case fd.device_Group of
				fd_Group_A:
					begin
						if uDeviceGroup_A.execute_056_receipt_Fiscal_Close(fd, AllReceiptCount, FiscalReceiptCount) <> 0 then ShowMessage(fd.lastError_Message)
						else show_Output;
					end;
				fd_Group_B:
					begin
						if uDeviceGroup_B.execute_056_receipt_Fiscal_Close(fd, AllReceiptCount, FiscalReceiptCount) <> 0 then ShowMessage(fd.lastError_Message)
						else show_Output;
					end;
				fd_Group_C:
					begin
						if uDeviceGroup_C.execute_056_receipt_Fiscal_Close( //
						  fd,                                               //
						  ErrorCode,                                        //
						  AllReceiptCount) <> 0 then ShowMessage(fd.get_ErrorMessageByCode(StrToInt(ErrorCode)))
						else
						begin
							if uDeviceGroup_C.execute_255_info_Get_nFBonDailyCount(fd, ErrorCode, FiscalReceiptCount) <> 0 then ShowMessage(fd.lastError_Message)
							else show_Output;
						end;
					end;
				fd_Group_Unknown:;
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		refresh_StornoProperties;
		refresh_FiscalReceiptProperties;
		btn_Close.Enabled := True;
		btn_CancelReceipt.Enabled := (fd.iSBit_Receipt_Nonfiscal) or (fd.iSBit_Receipt_Fiscal);
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_DeleteOutputClick(Sender: TObject);
begin
	reHEXLog.Clear;
	reHumanLog.Clear;
end;

procedure Tfm_MainForm.btn_DelScriptIputClick(Sender: TObject);
begin
	se_Script.Clear;
end;

procedure Tfm_MainForm.btn_ExecuteCustomCommandClick(Sender: TObject);
var
	cmd                    : Integer;
	inputValue, outputValue: WideString;
begin
	btn_ExecuteCustomCommand.Enabled := False;
	mem_AnswerList.Clear;
	try
		if not TryStrToInt(ed_Custom_Cmd.Text, cmd) then
		begin
			ShowMessage('Invalied value');
			Exit;
		end;
		inputValue := ed_Custom_Input.Text;
		outputValue := '';
		ed_Custom_Output.Clear;

		if fd.execute_Command(cmd, inputValue, outputValue) <> 0 then
		begin
			ShowMessage(fd.lastError_Message);
			Exit;
		end;
		mem_AnswerList.Text := fd.last_AnswerList;
	finally
		ed_Custom_Output.Text := outputValue;
		btn_ExecuteCustomCommand.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_ExecuteScryptClick(Sender: TObject);
begin
	if fd.execute_Script_V1(FP3530_TLB.DS, se_Script.Text) <> 0 then ShowMessage(fd.lastError_Message);
end;

procedure Tfm_MainForm.btn_ExecuteSelectedClick(Sender: TObject);
begin
	if fd.execute_Script_V1(FP3530_TLB.DS, se_Script.SelText) <> 0 then ShowMessage(fd.lastError_Message);
end;

procedure Tfm_MainForm.btn_GetSystemInfoClick(Sender: TObject);
var
	tmpString: string;
	tmpList  : TStringList;
	i        : Integer;
begin
	btn_GetSystemInfo.Enabled := False;
	mem_SystemInfo.Clear;
	tmpList := TStringList.Create;
	try
		tmpList.Text := fd.get_SystemInfoSearchList;
		if tmpList.Count = 0 then Exit;
		for i := 0 to tmpList.Count - 1 do
		begin
			tmpString := tmpList.Strings[i] + ':';
			tmpString := tmpString.PadRight(42, ' ') + fd.get_SystemInfo(tmpList.Strings[i]);
			mem_SystemInfo.Lines.Add(tmpString);
		end;
	finally
		if tmpList.Count > 0 then tmpList.Clear;
		tmpList.Free;
		btn_GetSystemInfo.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_Get_CashInOutClick(Sender: TObject);
var
	tmp       : WideString;
	ErrorCode : WideString; //
	CashSum   : WideString; //
	ServIn    : WideString; //
	ServOut   : WideString; //
	AmountType: WideString; //
	Amount    : WideString; //
begin
	btn_Get_CashInOut.Enabled := False;
	try
		case fd.device_Group of
			fd_Group_A:
				begin
					if uDeviceGroup_A.execute_070_info_Get_CashIn_CashOut( //
					  fd,                                                  //
					  ErrorCode,                                           //
					  CashSum,                                             //
					  ServIn,                                              //
					  ServOut) <> 0 then ShowMessage(fd.lastError_Message)
					else
					begin
						tmp := 'ErrorCode: ' + ErrorCode + sLineBreak;
						tmp := tmp + 'CashSum: ' + CashSum + sLineBreak;
						tmp := tmp + 'ServIn: ' + ServIn + sLineBreak;
						tmp := tmp + 'ServOut: ' + ServOut + sLineBreak;
						ShowMessage(tmp);
					end;
				end;
			fd_Group_B:
				begin
					if uDeviceGroup_B.execute_070_info_Get_CashIn_CashOut( //
					  fd,                                                  //
					  ErrorCode,                                           //
					  CashSum,                                             //
					  ServIn,                                              //
					  ServOut) <> 0 then ShowMessage(fd.lastError_Message)
					else
					begin
						tmp := 'ErrorCode: ' + ErrorCode + sLineBreak;
						tmp := tmp + 'CashSum: ' + CashSum + sLineBreak;
						tmp := tmp + 'ServIn: ' + ServIn + sLineBreak;
						tmp := tmp + 'ServOut: ' + ServOut + sLineBreak;
						ShowMessage(tmp);
					end;
				end;
			fd_Group_C:
				begin
					AmountType := '0';                                     //
					Amount := '0';                                         // If Amount=0,the only Answer is returned, and receipt does not print.
					if uDeviceGroup_C.execute_070_info_Get_CashIn_CashOut( //
					  fd,                                                  //
					  AmountType,                                          //
					  Amount,                                              //
					  ErrorCode,                                           //
					  CashSum,                                             //
					  ServIn,                                              //
					  ServOut) <> 0 then ShowMessage(fd.get_ErrorMessageByCode(StrToInt(ErrorCode)))
					else
					begin
						tmp := 'ErrorCode: ' + ErrorCode + sLineBreak;
						tmp := tmp + 'CashSum: ' + CashSum + sLineBreak;
						tmp := tmp + 'ServIn: ' + ServIn + sLineBreak;
						tmp := tmp + 'ServOut: ' + ServOut + sLineBreak;
						ShowMessage(tmp);
					end;
				end;
			fd_Group_Unknown:;
		end;
	finally
		btn_Get_CashInOut.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_InitStornoValuesClick(Sender: TObject);
begin
	btn_InitStornoValues.Enabled := False;
	try
		fd.init_StornoValues;
		btn_RefreshStornoValuesClick(Self);
	finally
		btn_InitStornoValues.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_Init_FRValuesClick(Sender: TObject);
begin
	btn_Init_FRValues.Enabled := False;
	try
		fd.init_FiscalReceiptValues;
		btn_Refresh_FRValuesClick(Self);
	finally
		btn_Init_FRValues.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_OpenConnectionClick(Sender: TObject);
begin
	error_Code := 0;
	btn_OpenConnection.Enabled := False;
	try
		if not fd.connected_ToDevice then
		begin
			error_Code := set_TransportProtocol;
			if error_Code <> 0 then Exit;

			error_Code := fd.open_Connection;
			if error_Code <> 0 then Exit;

		end;
		// show_DeviceModel;
	finally
		if error_Code <> 0 then
		begin
			ShowMessage(fd.lastError_Message);
			btn_OpenConnection.Enabled := True;
		end
		else
		begin
			if fd.connected_ToDevice then
				if not fd.Active_OnAfterOpenConnection then afterCase := ac_AfterOpenConnection;
		end;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_OpenFiscalReceiptClick(Sender: TObject);
begin
	btn_OpenFiscalReceipt.Enabled := False;
	try
		try
			if fd.open_FiscalReceipt <> 0 then ShowMessage(fd.lastError_Message)
			else
			begin
				ed_FR_AllReceiptCount.Text := fd.AllReceipt_Count.ToString;
				ed_FR_FiscalReceiptCount.Text := fd.FiscalReceipt_Count.ToString;
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		refresh_FiscalReceiptProperties;
	end;
end;

procedure Tfm_MainForm.btn_OpenFiscalReceipt_UNPClick(Sender: TObject);
var
	output            : WideString;
	OperatorNumber    : String;     //
	OperatorPassword  : String;     //
	TillNumber        : String;     //
	UNP               : String;     //
	ErrorCode         : WideString; //
	AllReceiptCount   : WideString; //
	FiscalReceiptCount: WideString; //
	Variable_Value    : WideString; //
	theLastPart       : Integer;
	tmpMessage        : string;

	procedure show_Output;
	begin
		tmpMessage := 'AllReceiptCount: ' + AllReceiptCount + sLineBreak;
		tmpMessage := tmpMessage + 'FiscalReceiptCount: ' + FiscalReceiptCount;
		ShowMessage(tmpMessage);

		ed_AllReceipt_Count_Storno.Text := fd.AllReceipt_Count.ToString;
		ed_AllReceipt_Count_FiscalReceipt.Text := fd.AllReceipt_Count.ToString;
		ed_FiscalReceipt_Count.Text := fd.FiscalReceipt_Count.ToString;
	end;

begin
	btn_OpenFiscalReceipt_UNP.Enabled := False;
	try
		try
			tmpMessage := 'This is a demo sale with an usage of the default values.' + sLineBreak;
			tmpMessage := tmpMessage + 'Maybe some values must be changed.';
			ShowMessage(tmpMessage);

			fd.init_OperatorValues;
			OperatorNumber := fd.Operator_Code.ToString;
			OperatorPassword := fd.Operator_Password;
			TillNumber := fd.Till_Number.ToString;

			case fd.device_Group of
				fd_Group_A:
					begin
						if fd.execute_Command(48, '', output) <> 0 then
						begin
							ShowMessage(fd.lastError_Message);
							Exit;
						end;
						if not TryStrToInt(output, theLastPart) then theLastPart := 0;
						inc(theLastPart);
						UNP := fd.device_Number_Serial + '-' + OperatorNumber.PadLeft(4, '0') + '-' + theLastPart.ToString.PadLeft(7, '0');

						if uDeviceGroup_A.execute_048_receipt_Fiscal_Open(fd, //
						  OperatorNumber,                                        //
						  OperatorPassword,                                      //
						  TillNumber,                                            //
						  UNP,                                                   //
						  AllReceiptCount,                                       //
						  FiscalReceiptCount) <> 0 then ShowMessage(fd.lastError_Message)
						else show_Output;
					end;
				fd_Group_B:
					begin
						if fd.execute_Command(48, '', output) <> 0 then
						begin
							ShowMessage(fd.lastError_Message);
							Exit;
						end;
						if not TryStrToInt(output, theLastPart) then theLastPart := 0;
						inc(theLastPart);
						UNP := fd.device_Number_Serial + '-' + OperatorNumber.PadLeft(4, '0') + '-' + theLastPart.ToString.PadLeft(7, '0');

						if uDeviceGroup_B.execute_048_receipt_Fiscal_Open(fd, //
						  OperatorNumber,                                     //
						  OperatorPassword,                                   //
						  UNP,                                                //
						  TillNumber,                                         //
						  AllReceiptCount,                                    //
						  FiscalReceiptCount) <> 0 then ShowMessage(fd.lastError_Message)
						else show_Output;
					end;
				fd_Group_C:
					begin
						if uDeviceGroup_C.execute_255_info_Get_UNP(fd, ErrorCode, Variable_Value) <> 0 then ShowMessage(fd.get_ErrorMessageByCode(StrToInt(ErrorCode)))
						else
						begin
							if Variable_Value = '' then theLastPart := 0
							else
								if not TryStrToInt(copy(Variable_Value, 15, length(Variable_Value)), theLastPart) then theLastPart := 0;
							inc(theLastPart);
						end;

						UNP := fd.device_Number_Serial + '-' + OperatorNumber.PadLeft(4, '0') + '-' + theLastPart.ToString.PadLeft(7, '0');

						if uDeviceGroup_C.execute_048_receipt_Fiscal_Open(fd, //
						  OperatorNumber,                                        //
						  OperatorPassword,                                      //
						  UNP,                                                   //
						  TillNumber,                                            //
						  ErrorCode,                                             //
						  AllReceiptCount) <> 0 then ShowMessage(fd.get_ErrorMessageByCode(StrToInt(ErrorCode)))
						else
						begin
							if uDeviceGroup_C.execute_255_info_Get_nFBonDailyCount(fd, ErrorCode, FiscalReceiptCount) <> 0 then ShowMessage(fd.lastError_Message)
							else show_Output;
						end;

					end;
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		btn_OpenFiscalReceipt_UNP.Enabled := True;
		btn_CancelReceipt.Enabled := canTryToCancel;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_Open_InvoiceReceiptClick(Sender: TObject);
begin
	btn_Open_InvoiceReceipt.Enabled := False;
	try
		try
			if fd.open_InvoiceReceipt <> 0 then ShowMessage(fd.lastError_Message)
			else
			begin
				ed_FR_AllReceiptCount.Text := fd.AllReceipt_Count.ToString;
				ed_FR_FiscalReceiptCount.Text := fd.FiscalReceipt_Count.ToString;
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		refresh_FiscalReceiptProperties;
	end;
end;

procedure Tfm_MainForm.btn_Open_StornoReceiptClick(Sender: TObject);
begin
	btn_Open_StornoReceipt.Enabled := False;
	try
		try
			if fd.open_StornoReceipt <> 0 then ShowMessage(fd.lastError_Message)
			else
			begin
				ed_AllReceipt_Count_Storno.Text := fd.AllReceipt_Count.ToString;
				ed_StReceipt_Count.Text := fd.StReceipt_Count.ToString;
				refresh_StornoProperties;
				refresh_FiscalReceiptProperties;
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		btn_Open_StornoReceipt.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_StartCOMServerClick(Sender: TObject);
begin
	btn_StartCOMServer.Enabled := False;
	if not tryTo_COMServer_Start then
	begin
		ShowMessage(en_Message_NoDriver);
		btn_StartCOMServer.Enabled := True;
		Exit;
	end;
	try
		try
			afterCase := ac_AfterStart_Server;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		if fd.connected_ToDevice then afterCase := ac_AfterOpenConnection;
	end;
end;

procedure Tfm_MainForm.btn_StopCOMServerClick(Sender: TObject);
begin
	btn_StopCOMServer.Enabled := False;
	try
		try
			fd.Disconnect;
		except
			btn_StopCOMServer.Enabled := True;
		end;
	finally
		afterCase := ac_AfterStopServer;
	end;
end;

procedure Tfm_MainForm.btn_StopConnectionClick(Sender: TObject);
begin
	error_Code := fd.close_Connection;
	if error_Code <> 0 then ShowMessage(fd.lastError_Message);
	if not fd.Active_OnAfterCloseConnection then afterCase := ac_AfterCloseConnection;
end;

procedure Tfm_MainForm.btn_SubtotalClick(Sender: TObject);
var
	ToPrint       : WideString; //
	ToDisplay     : WideString; //
	Discount_Type : WideString; //
	Discount_Value: WideString; //
	ErrorCode     : WideString; //
	SlipNumber    : WideString; //
	Subtotal      : WideString; //
	SumTaxGroupA  : WideString; //
	SumTaxGroupB  : WideString; //
	SumTaxGroupC  : WideString; //
	SumTaxGroupD  : WideString; //
	SumTaxGroupE  : WideString; //
	SumTaxGroupF  : WideString; //
	SumTaxGroupG  : WideString; //
	SumTaxGroupH  : WideString; //
begin
	btn_Subtotal.Enabled := False;
	try
		try
			case fd.device_Group of
				fd_Group_A:
					begin
						ToPrint := '1';
						ToDisplay := '0';
						if uDeviceGroup_A.execute_051_receipt_Subtotal(fd, ToPrint, ToDisplay, //
						  Subtotal,                                                            //
						  SumTaxGroupA,                                                        //
						  SumTaxGroupB,                                                        //
						  SumTaxGroupC,                                                        //
						  SumTaxGroupD,                                                        //
						  SumTaxGroupE,                                                        //
						  SumTaxGroupF,                                                        //
						  SumTaxGroupG,                                                        //
						  SumTaxGroupH                                                         //
						  ) <> 0 then ShowMessage(fd.lastError_Message)
						else
						begin
							ed_SubTotal.Text := Subtotal;
							ed_TaxAValue.Text := SumTaxGroupA;
							ed_TaxBValue.Text := SumTaxGroupB;
							ed_TaxCValue.Text := SumTaxGroupC;
							ed_TaxDValue.Text := SumTaxGroupD;
							ed_TaxEValue.Text := SumTaxGroupE;
							ed_TaxFValue.Text := SumTaxGroupF;
							ed_TaxGValue.Text := SumTaxGroupG;
							ed_TaxHValue.Text := SumTaxGroupH;
						end;
					end;
				fd_Group_B:
					begin
						ToPrint := '1';
						ToDisplay := '0';
						if uDeviceGroup_B.execute_051_receipt_Subtotal(fd, ToPrint, ToDisplay, //
						  Subtotal,                                                            //
						  SumTaxGroupA,                                                        //
						  SumTaxGroupB,                                                        //
						  SumTaxGroupC,                                                        //
						  SumTaxGroupD,                                                        //
						  SumTaxGroupE,                                                        //
						  SumTaxGroupF,                                                        //
						  SumTaxGroupG,                                                        //
						  SumTaxGroupH                                                         //
						  ) <> 0 then ShowMessage(fd.lastError_Message)
						else
						begin
							ed_SubTotal.Text := Subtotal;
							ed_TaxAValue.Text := SumTaxGroupA;
							ed_TaxBValue.Text := SumTaxGroupB;
							ed_TaxCValue.Text := SumTaxGroupC;
							ed_TaxDValue.Text := SumTaxGroupD;
							ed_TaxEValue.Text := SumTaxGroupE;
							ed_TaxFValue.Text := SumTaxGroupF;
							ed_TaxGValue.Text := SumTaxGroupG;
							ed_TaxHValue.Text := SumTaxGroupH;
						end;
					end;
				fd_Group_C:
					begin
						ToPrint := '1';
						ToDisplay := '0';
						Discount_Type := '';                            // '0' or empty - no discount;
						Discount_Value := '';                           //
						ErrorCode := '';                                //
						SlipNumber := '';                               //
						if uDeviceGroup_C.execute_051_receipt_Subtotal( //
						  fd,                                           //
						  ToPrint,                                      //
						  ToDisplay,                                    //
						  Discount_Type,                                //
						  Discount_Value,                               //
						  ErrorCode,                                    //
						  SlipNumber,                                   //
						  Subtotal,                                     //
						  SumTaxGroupA,                                 //
						  SumTaxGroupB,                                 //
						  SumTaxGroupC,                                 //
						  SumTaxGroupD,                                 //
						  SumTaxGroupE,                                 //
						  SumTaxGroupF,                                 //
						  SumTaxGroupG,                                 //
						  SumTaxGroupH                                  //
						  ) <> 0 then ShowMessage(fd.get_ErrorMessageByCode(StrToInt(ErrorCode)))
						else
						begin
							ed_SubTotal.Text := Subtotal;
							ed_TaxAValue.Text := SumTaxGroupA;
							ed_TaxBValue.Text := SumTaxGroupB;
							ed_TaxCValue.Text := SumTaxGroupC;
							ed_TaxDValue.Text := SumTaxGroupD;
							ed_TaxEValue.Text := SumTaxGroupE;
							ed_TaxFValue.Text := SumTaxGroupF;
							ed_TaxGValue.Text := SumTaxGroupG;
							ed_TaxHValue.Text := SumTaxGroupH;
						end;
					end;
				fd_Group_Unknown:;
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		btn_Subtotal.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_TotalClick(Sender: TObject);
var
	fOutput        : WideString;
	TextRow1       : WideString; //
	TextRow2       : WideString; //
	PaidMode       : WideString; //
	InputAmount    : WideString; //
	deviceCode     : WideString; //
	outputAmount   : WideString; //
	PinPad_PaidMode: WideString; //
	ErrorCode      : WideString; //
	AnswerField_01 : WideString; //
	AnswerField_02 : WideString; //
	tmpMessage     : string;
	tmpList        : TStringList;

begin
	btn_Total.Enabled := False;
	tmpList := TStringList.Create;
	try
		try
			case fd.device_Group of
				fd_Group_A:
					begin
						TextRow1 := 'Примерен текст - ред 1';
						TextRow2 := 'Примерен текст - ред 2';
						PaidMode := 'P';
						if fd.execute_Command(51, '00', fOutput) <> 0 then // Get current sum with subtotal
						begin
							ShowMessage(fd.lastError_Message);
							Exit;
						end;
						tmpList.Text := fd.last_AnswerList;
						if tmpList.Count <> 9 then Exit;
						InputAmount := FloatToStrF((StrToInt(tmpList.Strings[0]) / 100), ffFixed, 18, 2);

						if uDeviceGroup_A.execute_053_receipt_Total_PAmount(fd, //
						  TextRow1,                                             //
						  TextRow2,                                             //
						  PaidMode,                                             //
						  InputAmount,                                          //
						  deviceCode,                                           //
						  outputAmount                                          //
						  ) <> 0 then ShowMessage(fd.lastError_Message);
					end;
				fd_Group_B:
					begin
						TextRow1 := 'Примерен текст - ред 1';
						TextRow2 := 'Примерен текст - ред 2';
						PaidMode := 'P';
						if fd.execute_Command(51, '00', fOutput) <> 0 then // Get current sum with subtotal
						begin
							ShowMessage(fd.lastError_Message);
							Exit;
						end;
						tmpList.Text := fd.last_AnswerList;
						if tmpList.Count <> 9 then Exit;
						InputAmount := FloatToStrF((StrToInt(tmpList.Strings[0]) / 100), ffFixed, 18, 2);
						if uDeviceGroup_B.execute_053_receipt_Total_PAmount(fd, //
						  TextRow1,                                             //
						  TextRow2,                                             //
						  PaidMode,                                             //
						  InputAmount,                                          //
						  deviceCode,                                           //
						  outputAmount                                          //
						  ) <> 0 then ShowMessage(fd.lastError_Message);
					end;
				fd_Group_C:
					begin
						PaidMode := '0';       // Cash
						PinPad_PaidMode := ''; //
						ErrorCode := '';       //
						AnswerField_01 := '';  //
						AnswerField_02 := '';  //

						if fd.execute_Command(51, '0\t0\t\t\t', fOutput) <> 0 then // Get current sum with subtotal
						begin
							ShowMessage(fd.lastError_Message);
							Exit;
						end;
						tmpList.Text := fd.last_AnswerList;
						if tmpList.Count <> 11 then Exit;
						InputAmount := tmpList.Strings[2];
						if uDeviceGroup_C.execute_053_receipt_Total(fd, //
						  PaidMode,                                     //
						  InputAmount,                                  //
						  PinPad_PaidMode,                              //
						  ErrorCode,                                    //
						  AnswerField_01,                               //
						  AnswerField_02                                //
						  ) <> 0 then ShowMessage(fd.get_ErrorMessageByCode(StrToInt(ErrorCode)));
					end;
				fd_Group_Unknown:;
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		tmpList.Free;
		btn_Total.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_GenerateAllClick(Sender: TObject);
var
	i, j           : Integer;
	generatedSource: string;
	tmpList        : TStringList;
begin
	btn_GenerateAll.Enabled := False;
	btn_GenerateCode.Enabled := False;
	btn_GetComandInfo.Enabled := False;
	btn_ComandsList.Enabled := False;
	chbx_SortedCommandsList.Enabled := False;
	cbx_CommandList_NameIndex.Enabled := False;
	cbx_CodeType.Enabled := False;
	cbx_CommandsList.Enabled := False;
	se_CmdInfo.Enabled := False;
	se_CmdInfo.Clear;
	Self.Update;

	tmpList := TStringList.Create;
	try

		cbx_CommandsList.Clear;
		Self.Update;
		cbx_CommandsList.Items.Text := fd.get_ComandsList(cbx_CommandList_NameIndex.ItemIndex);
		cbx_CommandsList.ItemIndex := 0;
		for i := 0 to cbx_CommandsList.Items.Count - 1 do
		begin
			cbx_CommandsList.ItemIndex := i;
			command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
			tmpList.Clear;
			if (cbx_CodeType.ItemIndex = 0) then tmpList.Text := fd.generate_SourceCode(command_Name, Delphi)
			else tmpList.Text := fd.generate_SourceCode(command_Name, CSharp);
			for j := 0 to tmpList.Count - 1 do se_CmdInfo.Lines.Add(tmpList.Strings[j]);
			se_CmdInfo.Lines.Add('');
		end;
	finally
		tmpList.Free;
		cbx_CommandsList.ItemIndex := 0;

		se_CmdInfo.Enabled := True;
		btn_GenerateCode.Enabled := True;
		btn_GetComandInfo.Enabled := True;
		btn_ComandsList.Enabled := True;
		chbx_SortedCommandsList.Enabled := True;
		cbx_CommandList_NameIndex.Enabled := True;
		cbx_CodeType.Enabled := True;
		cbx_CommandsList.Enabled := True;
		btn_GenerateAll.Enabled := True;
		Self.Update;
	end;

end;

procedure Tfm_MainForm.btn_RefreshStornoValuesClick(Sender: TObject);
begin
	btn_RefreshStornoValues.Enabled := False;
	try
		try
			refresh_StornoProperties;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		btn_RefreshStornoValues.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_Refresh_FRValuesClick(Sender: TObject);
begin
	btn_Refresh_FRValues.Enabled := False;
	try
		try
			refresh_FiscalReceiptProperties;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		btn_Refresh_FRValues.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_SaveEvents_CommandsClick(Sender: TObject);
var
	tmpResult: Integer;
begin
	tmpResult := -1;
	btn_SaveEvents_Commands.Enabled := False;
	Self.Update;
	try
		try
			fMyAfterCaseFlag := True;

			tmpResult := fd.set_ScriptEvents(            //
			  chbx_Active_OnBeforeScriptExecute.Checked, //
			  chbx_Active_OnScriptRowExecute.Checked,    //
			  chbx_Active_OnAfterScriptExecute.Checked,  //
			  True);                                     //
			if tmpResult <> 0 then Exit;

			tmpResult := fd.set_CommunicationEvents( //
			  chbx_Active_OnSendCommand.Checked,     //
			  chbx_Active_OnWait.Checked,            //
			  chbx_Active_OnReceiveAnswer.Checked,   //
			  chbx_Active_OnStatusChange.Checked,    //
			  chbx_Active_OnError.Checked,           //
			  True);                                 //
			if tmpResult <> 0 then Exit;
		except
			On E: Exception do
			begin
				tmpResult := -1;
				ShowMessage(E.Message);
			end;
		end;
	finally
		if tmpResult <> 0 then ShowMessage(fd.lastError_Message);
		btn_SaveEvents_Commands.Enabled := True;
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_SaveEvents_ProgressBarsClick(Sender: TObject);
var
	tmpResult: Integer;
begin
	tmpResult := -1;
	btn_SaveEvents_ProgressBars.Enabled := False;
	Self.Update;
	try
		fMyAfterCaseFlag := True;

		tmpResult := fd.set_FirstProgressEvents(        //
		  chbx_Active_OnFirstProgress_Init.Checked,     //
		  chbx_Active_OnFirstProgress_Loop.Checked,     //
		  chbx_Active_OnFirstProgress_Complete.Checked, //
		  True);                                        //
		if tmpResult <> 0 then Exit;

		tmpResult := fd.set_SecondProgressEvents(        //
		  chbx_Active_OnSecondProgress_Init.Checked,     //
		  chbx_Active_OnSecondProgress_Loop.Checked,     //
		  chbx_Active_OnSecondProgress_Complete.Checked, //
		  True);                                         //
	finally
		if tmpResult <> 0 then ShowMessage(fd.lastError_Message);
		btn_SaveEvents_ProgressBars.Enabled := True;
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_SaveOtherSettingsClick(Sender: TObject);
var
	tmpResult: Integer;
begin
	tmpResult := -1;
	btn_SaveOtherSettings.Enabled := False;
	Self.Update;
	try
		try
			fMyAfterCaseFlag := True;

			tmpResult := save_Language;
			if tmpResult <> 0 then Exit;

			tmpResult := save_TrackingMode;
			if tmpResult <> 0 then Exit;
		except
			On E: Exception do
			begin
				tmpResult := -1;
				ShowMessage(E.Message);
			end;
		end;
	finally
		if tmpResult <> 0 then ShowMessage(fd.lastError_Message);
		btn_SaveOtherSettings.Enabled := True;
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_SellClick(Sender: TObject);
var
	TextRow1      : WideString; //
	TextRow2      : WideString; //
	TaxGroup      : WideString; //
	SinglePrice   : WideString; //
	Quantity      : WideString; //
	Discount_Type : WideString; //
	Discount_Value: WideString; //
	Department    : WideString; //
	ErrorCode     : WideString; //
	SlipNumber    : WideString; //
begin
	btn_Sell.Enabled := False;
	Self.Update;
	try
		try
			case fd.device_Group of
				fd_Group_A:
					begin
						TextRow1 := 'Примерна продажба - ред 1';
						TextRow2 := 'Примерна продажба - ред 2';
						TaxGroup := 'Б';
						SinglePrice := '0.01';
						Quantity := '1.000';

						if uDeviceGroup_A.execute_049_receipt_Sale( //
						  fd,                                       //
						  TextRow1,                                 //
						  TextRow2,                                 //
						  TaxGroup,                                 //
						  SinglePrice,                              //
						  Quantity) <> 0 then ShowMessage(fd.lastError_Message);
					end;
				fd_Group_B:
					begin
						TextRow1 := 'Примерен текст - ред 1';
						TextRow2 := 'Примерен текст - ред 2';
						TaxGroup := 'Б';
						SinglePrice := '0.01';
						Quantity := '1.000';

						if uDeviceGroup_B.execute_049_receipt_Sale( //
						  fd,                                       //
						  TextRow1,                                 //
						  TextRow2,                                 //
						  TaxGroup,                                 //
						  SinglePrice,                              //
						  Quantity) <> 0 then ShowMessage(fd.lastError_Message);
					end;
				fd_Group_C:
					begin
						TextRow1 := 'Примерен текст - ред 1';       //
						TaxGroup := '2';                            // 'Б'
						SinglePrice := '0.01';                      //
						Quantity := '1.000';                        //
						Discount_Type := '0';                       // '0' or empty - no discount;
						Discount_Value := '';                       //
						Department := '0';                          // '0' - Without department
						ErrorCode := '';                            //
						SlipNumber := '';                           //
						if uDeviceGroup_C.execute_049_receipt_Sale( //
						  fd,                                       //
						  TextRow1,                                 //
						  TaxGroup,                                 //
						  SinglePrice,                              //
						  Quantity,                                 //
						  Discount_Type,                            //
						  Discount_Value,                           //
						  Department,                               //
						  ErrorCode,                                //
						  SlipNumber) <> 0 then ShowMessage(fd.get_ErrorMessageByCode(StrToInt(ErrorCode)));
					end;
				fd_Group_Unknown:;
			end;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		btn_Sell.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.btn_SetDateTimeClick(Sender: TObject);
var
	DT         : WideString;
	Day        : Word; //
	Month      : Word; //
	Year       : Word; //
	Hour       : Word; //
	Minute     : Word; //
	Second     : Word; //
	MilliSecond: Word; //
begin
	btn_SetDateTime.Enabled := False;
	try
		System.DateUtils.DecodeDateTime(Now, Year, Month, Day, Hour, Minute, Second, MilliSecond);
		if Year > 2000 then Dec(Year, 2000);
		DT := '';
		DT := DT + Day.ToString.PadLeft(2, '0') + '-';
		DT := DT + Month.ToString.PadLeft(2, '0') + '-';
		DT := DT + Year.ToString.PadLeft(2, '0') + ' ';
		DT := DT + Hour.ToString.PadLeft(2, '0') + ':';
		DT := DT + Minute.ToString.PadLeft(2, '0') + ':';
		DT := DT + Second.ToString.PadLeft(2, '0');

		case fd.device_Group of
			fd_Group_A:
				begin
					ShowMessage('Input string: ' + DT);
					if uDeviceGroup_A.execute_061_config_Set_DateTime(fd, DT) <> 0 then ShowMessage(fd.lastError_Message)
					else ShowMessage('Command executed successfully.');
				end;
			fd_Group_B:
				begin
					ShowMessage('Input string: ' + DT);
					if uDeviceGroup_B.execute_061_config_Set_DateTime(fd, DT) <> 0 then ShowMessage(fd.lastError_Message)
					else ShowMessage('Command executed successfully.');
				end;
			fd_Group_C:
				begin
					if fd.itIs_SummerDT then DT := DT + ' ' + 'DST';
					ShowMessage('Input string: ' + DT);
					if uDeviceGroup_B.execute_061_config_Set_DateTime(fd, DT) <> 0 then ShowMessage(fd.lastError_Message)
					else ShowMessage('Command executed successfully.');
				end;
			fd_Group_Unknown:;
		end;

	finally
		btn_SetDateTime.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_Set_RAO_ModeClick(Sender: TObject);
var
	tmpResult : Integer;
	tmpMessage: string;
	OldValues : TOldValues;
	tmpBoolean: Boolean;
begin
	btn_Set_RAO_Mode.Enabled := False;
	fMyAfterCaseFlag := True;
	Self.Update;
	tmpResult := -1;
	try
		OldValues.Active_OnAfterCloseConnection := fd.Active_OnAfterCloseConnection;
		OldValues.Active_OnAfterOpenConnection := fd.Active_OnAfterOpenConnection;
		OldValues.Active_OnAfterSettingsChange := fd.Active_OnAfterSettingsChange;
		OldValues.RegisterActiveObject := fd.register_ActiveObject_OnStart;
		OldValues.Save_Settings_AfterOpenConnection := fd.save_SettingsAfterOpenConnection;

		fd.checkDeviceStatusOnCheckConnection := chbx_CheckDeviceStatusOnCheckConnection.Checked;

		tmpResult := fd.set_BehaviorOnOpenClose(          //
		  chbx_RegisterActiveObject.Checked,              //
		  chbx_Save_Settings_AfterOpenConnection.Checked, //
		  chbx_Active_OnAfterOpenConnection.Checked,      //
		  chbx_Active_OnAfterCloseConnection.Checked,     //
		  chbx_Active_OnAfterSettingsChange.Checked       //
		  );                                              //
	finally
		if tmpResult <> 0 then ShowMessage(fd.lastError_Message);
		tmpBoolean := (OldValues.Active_OnAfterCloseConnection <> chbx_Active_OnAfterCloseConnection.Checked);
		tmpBoolean := tmpBoolean or (OldValues.Active_OnAfterOpenConnection <> chbx_Active_OnAfterOpenConnection.Checked);
		tmpBoolean := tmpBoolean or (OldValues.Active_OnAfterSettingsChange <> chbx_Active_OnAfterSettingsChange.Checked);
		tmpBoolean := tmpBoolean or (OldValues.RegisterActiveObject <> chbx_RegisterActiveObject.Checked);
		tmpBoolean := tmpBoolean or (OldValues.Save_Settings_AfterOpenConnection <> chbx_Save_Settings_AfterOpenConnection.Checked);

		if tmpBoolean then
		begin
			tmpMessage := 'Important!' + sLineBreak + sLineBreak;
			tmpMessage := tmpMessage + ' 1. Changing of the "Register ActiveX Object on start"';
			tmpMessage := tmpMessage + ' will change the behavior of the COM server after the';
			tmpMessage := tmpMessage + ' restart of the COM server.' + sLineBreak + sLineBreak;

			tmpMessage := tmpMessage + ' 2. Please switch off the connection to the COM server';
			tmpMessage := tmpMessage + ' for all currently connected client applications (including';
			tmpMessage := tmpMessage + ' this application) !' + sLineBreak + sLineBreak;

			tmpMessage := tmpMessage + ' 3. If all client applications are switched off from the COM';
			tmpMessage := tmpMessage + ' server and the tray icon of the "DUDE" is still visible:' + sLineBreak;
			tmpMessage := tmpMessage + '  - please switch off the "DUDE" manually from the popup menu;' + sLineBreak;
			tmpMessage := tmpMessage + '  - you can start to use the "DUDE" with all new settings.' + sLineBreak + sLineBreak;

			tmpMessage := tmpMessage + ' 4. If you use "Register Activex Object on start":' + sLineBreak;
			tmpMessage := tmpMessage + '  - the instance and connection to the device will be "shared"';
			tmpMessage := tmpMessage + ' between all connected client applications;' + sLineBreak;
			tmpMessage := tmpMessage + '  - the software must be designed for such behavior;' + sLineBreak + sLineBreak;

			tmpMessage := tmpMessage + ' 5. If you don''t know anything for this settings and for this behavior mode:' + sLineBreak;
			tmpMessage := tmpMessage + '   - please call to the support team;' + sLineBreak;
			tmpMessage := tmpMessage + '   - please call to the manufacturers of your client application;' + sLineBreak;
			ShowMessage(tmpMessage);
		end;
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
		btn_Set_RAO_Mode.Enabled := True;
		Self.Update;
	end;
end;

function Tfm_MainForm.byteToHex(B: Byte): String;
begin
	Result := Hex_Digit[B div Hex_Digits] + Hex_Digit[B mod Hex_Digits]
end;

function Tfm_MainForm.canTryToCancel: Boolean;
begin
	Result := False;
	try
		Result := (fd.iSBit_Receipt_Nonfiscal) or (fd.iSBit_Receipt_Fiscal);
	except
		On E: Exception do ShowMessage(E.Message);
	end;
end;

procedure Tfm_MainForm.cbx_CommandList_NameIndexChange(Sender: TObject);
begin
	cbx_CommandsList.Sorted := chbx_SortedCommandsList.Checked;
	se_CmdInfo.Clear;
	cbx_CommandsList.Clear;
	cbx_CommandsList.Enabled := False;
	Self.Update;

	cbx_CommandsList.Items.Text := fd.get_ComandsList(cbx_CommandList_NameIndex.ItemIndex);
	if cbx_CommandsList.Items.Count > 0 then
	begin
		cbx_CommandsList.ItemIndex := 0;
		command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
		get_CommandInfo;
	end;

	Self.Update;
end;

procedure Tfm_MainForm.cbx_FR_ByInvoiceChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.FR_Invoice := cbx_FR_ByInvoice.ItemIndex;
	check_Can_OpenFiscalReceipt;
	check_Can_OpenInvoiceReceipt;
end;

procedure Tfm_MainForm.cbx_St_ByInvoiceChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.St_ByInvoice := cbx_St_ByInvoice.ItemIndex;
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.cbx_St_Reason_TypeChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.St_Reason_Type := cbx_St_Reason_Type.ItemIndex;
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.chbx_SortedCommandsListClick(Sender: TObject);
begin
	chbx_SortedCommandsList.Checked := not cbx_CommandsList.Sorted;
	cbx_CommandsList.Sorted := chbx_SortedCommandsList.Checked;
	se_CmdInfo.Clear;
	cbx_CommandsList.Clear;
	cbx_CommandsList.Enabled := False;
	Self.Update;
	cbx_CommandsList.Items.Text := fd.get_ComandsList(cbx_CommandList_NameIndex.ItemIndex);
	if cbx_CommandsList.Items.Count > 0 then
	begin
		cbx_CommandsList.ItemIndex := 0;
		command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
		get_CommandInfo;
	end;

	Self.Update;
end;

procedure Tfm_MainForm.check_Can_OpenInvoiceReceipt;
begin
	if fd.can_OpenInvoiceReceipt then
	begin
		lb_Can_OpenInvoiceReceipt.Font.Color := clGreen;
		btn_Open_InvoiceReceipt.Enabled := True;
	end
	else
	begin
		lb_Can_OpenInvoiceReceipt.Font.Color := clRed;
		btn_Open_InvoiceReceipt.Enabled := False;
	end;
	Self.Update;
end;

procedure Tfm_MainForm.check_Can_OpenFiscalReceipt;
begin
	if fd.can_OpenFiscalReceipt then
	begin
		lb_CanOpenFiscalReceipt.Font.Color := clGreen;
		btn_OpenFiscalReceipt.Enabled := True;
	end
	else
	begin
		lb_CanOpenFiscalReceipt.Font.Color := clRed;
		btn_OpenFiscalReceipt.Enabled := False;
	end;
	Self.Update;
end;

procedure Tfm_MainForm.check_Can_OpenStornoReceipt;
begin
	if fd.can_OpenStornoReceipt then
	begin
		lb_can_OpenStornoReceipt.Font.Color := clGreen;
		btn_Open_StornoReceipt.Enabled := True;
	end
	else
	begin
		lb_can_OpenStornoReceipt.Font.Color := clRed;
		btn_Open_StornoReceipt.Enabled := False;
	end;
	Self.Update;
end;

procedure Tfm_MainForm.btn_Last_AnswerListClick(Sender: TObject);
var
	tmpList: TStringList;
	i      : Integer;
begin
	btn_Last_AnswerList.Enabled := False;
	mem_AnswerList.Clear;
	tmpList := TStringList.Create;
	try
		tmpList.Text := fd.last_AnswerList;
		if tmpList.Count = 0 then ShowMessage('There no data into a last answer list.')
		else
			for i := 0 to tmpList.Count - 1 do mem_AnswerList.Lines.Add('[' + i.ToString + '] = ' + tmpList.Strings[i]);
	finally
		tmpList.Free;
		btn_Last_AnswerList.Enabled := True;
	end;
end;

procedure Tfm_MainForm.btn_LoadScriptFromFileClick(Sender: TObject);
var
	iniDir: string;
begin
	iniDir := ExtractFileDir(Application.ExeName);
	if iniDir[length(iniDir)] <> PathDelim then iniDir := iniDir + PathDelim;
	iniDir := iniDir + 'Scripturi de test\';

	if System.SysUtils.DirectoryExists(iniDir) then OpenDialog1.InitialDir := iniDir;
	if OpenDialog1.Execute(fm_MainForm.Handle) then
	begin
		se_Script.Clear;
		se_Script.Lines.LoadFromFile(OpenDialog1.FileName);
	end;
end;

function Tfm_MainForm.execute_Command_ByName: Boolean;
begin
	Result := False;
	if not fd.connected_ToDevice then Exit;
	try
		try
			Result := (fd.execute_Command_ByName(command_Name) = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(fd.lastError_Message);
	end;
end;

procedure Tfm_MainForm.fdAfterChangeSettings(ASender: TObject; settings_Index: Integer);
var
	tmpMessage: string;
begin
	if fMyAfterCaseFlag then Exit;
	try
		// Event raised if:
		// - the server save settings after successful connection to the device;
		// - in "RAO mode" : if other client application change settings;

		tmpMessage := '[' + DateTimeToStr(Now) + ']: ';
		case settings_Index of
			0: tmpMessage := tmpMessage + 'Set_TrackingMode_FileName';
			1: tmpMessage := tmpMessage + 'Set_TrackingMode';
			2: tmpMessage := tmpMessage + 'Set_Download_Path';
			3: tmpMessage := tmpMessage + 'Set_TrackingMode_Path';
			4: tmpMessage := tmpMessage + 'Set_TrackingMode_RowLimit';
			5: tmpMessage := tmpMessage + 'Set_TransportType';
			6: tmpMessage := tmpMessage + 'Set_Language';
			7: tmpMessage := tmpMessage + 'Set_Read_TimeOutValue';
			8: tmpMessage := tmpMessage + 'Set_Exit_ByReadTimeOutIsOn';
			9: tmpMessage := tmpMessage + 'Set_RS232';
			10: tmpMessage := tmpMessage + 'Set_RS232_Timeouts';
			11: tmpMessage := tmpMessage + 'Set_TCPIP';
			12: tmpMessage := tmpMessage + 'Set_DateRange_EndValue';
			13: tmpMessage := tmpMessage + 'Set_DateRange_StartValue';
			14: tmpMessage := tmpMessage + 'Set_RS232_OnOpen_Set_DCB';
			15: tmpMessage := tmpMessage + 'Set_RS232_OnOpen_Set_DTR_ToFalse';
			16: tmpMessage := tmpMessage + 'Set_RS232_OnOpen_Set_RTS_ToFalse';
			17: tmpMessage := tmpMessage + 'Set_zRange_EndValue';
			18: tmpMessage := tmpMessage + 'Set_zRange_StartValue';
			19: tmpMessage := tmpMessage + 'Set_ScriptEvents';
			20: tmpMessage := tmpMessage + 'Set_FirstProgressEvents';
			21: tmpMessage := tmpMessage + 'Set_SecondProgressEvents';
			22: tmpMessage := tmpMessage + 'Set_CommunicationEvents';
			23: tmpMessage := tmpMessage + 'Set_DocumentNumber_StartValue';
			24: tmpMessage := tmpMessage + 'Set_DocumentNumber_EndValue';
			25: tmpMessage := tmpMessage + 'Set_JEDocumentType';
			26: tmpMessage := tmpMessage + 'Set_OpenCloseEvents';
		end;
		mem_Log.Lines.Add(tmpMessage);
		// your code
	finally
		afterCase := ac_AfterSettingsChange;
	end;
end;

procedure Tfm_MainForm.fdAfterCloseConnection(Sender: TObject);
begin
	afterCase := ac_AfterCloseConnection;
end;

procedure Tfm_MainForm.fdAfterOpenConnection(Sender: TObject);
begin
	afterCase := ac_AfterOpenConnection;
end;

procedure Tfm_MainForm.fdAfterScriptExecute(Sender: TObject);
begin
	enableScriptBtns(True);
end;

procedure Tfm_MainForm.fdBeforeScriptExecute(Sender: TObject);
begin
	enableScriptBtns(False);
	try
		scrollToEnd(reHumanLog);
		initForSniffer(reHumanLog);
		scrollToEnd(reHEXLog);
		initForSniffer(reHEXLog);
		case cbx_GoToPage.ItemIndex of
			0: pc_ScriptContainer.ActivePage := ts_HumanLog;
			1: pc_ScriptContainer.ActivePage := ts_HEXLog;
		else pc_ScriptContainer.ActivePage := ts_SimpleScript;
		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.fdError(ASender: TObject; error_Code: Integer; var error_Message: WideString);
begin
	mem_Log.Lines.Add('[' + DateTimeToStr(Now) + '] ErrCode[' + error_Code.ToString + ']: ' + error_Message);
	get_StatusState;
end;

procedure Tfm_MainForm.fdFirstProgress_Complete(Sender: TObject);
begin
	gau_First.Progress := 0;
	gau_First.Update;
end;

procedure Tfm_MainForm.fdFirstProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
begin
	gau_First.Progress := value_Position;
	gau_First.MinValue := value_Minimum;
	gau_First.MaxValue := value_Maximum;
	pnl_Progress.Visible := True;
end;

procedure Tfm_MainForm.fdFirstProgress_Loop(ASender: TObject; value_Position: Integer);
begin
	gau_First.Progress := value_Position;
	Application.ProcessMessages;
end;

procedure Tfm_MainForm.fdReceiveAnswer(ASender: TObject; var Command, DateAndTime, repeat_Value, hex_Header, hex_Data, hex_Footer, human_Data: WideString);

	procedure handle_dhtText;
	begin
		try
			try
				reHumanLog.SelAttributes.Color := $000080FF;
				reHumanLog.SelText := '[Answer ]';
				reHumanLog.SelAttributes.Color := clBlack;
				reHumanLog.SelText := ';';
				reHumanLog.SelAttributes.Color := clGreen;
				reHumanLog.SelText := '[' + DateAndTime + ']';
				reHumanLog.SelAttributes.Color := clBlack;
				reHumanLog.SelText := ';[' + repeat_Value + '];';
				reHumanLog.SelAttributes.Color := $00FF8080;
				reHumanLog.SelText := '[Command = ' + Command + ']' + #9;
				reHumanLog.SelAttributes.Color := $000080FF;
				reHumanLog.SelText := human_Data;
			except
				On E: Exception do mem_Log.Lines.Add(E.Message);
			end;

		finally
			scrollToEnd(reHumanLog);
			initForSniffer(reHumanLog);
			Self.Update;
		end;
	end;

	procedure handle_dhtHex;
	begin
		try
			try
				reHEXLog.SelAttributes.Color := $000080FF;
				reHEXLog.SelText := '[Answer ]';
				reHEXLog.SelAttributes.Color := clBlack;
				reHEXLog.SelText := ';';
				reHEXLog.SelAttributes.Color := clGreen;
				reHEXLog.SelText := '[' + DateAndTime + ']';
				reHEXLog.SelAttributes.Color := clBlack;
				reHEXLog.SelText := ';[' + repeat_Value + '];';
				reHEXLog.SelAttributes.Color := $00FF8080;
				reHEXLog.SelText := '[Command = ' + Command + ']' + #9;
				reHEXLog.SelAttributes.Color := clBlue;
				reHEXLog.SelText := hex_Header;
				reHEXLog.SelAttributes.Color := $000080FF;
				reHEXLog.SelText := hex_Data;
				reHEXLog.SelAttributes.Color := clBlue;
				reHEXLog.SelText := hex_Footer;
			except
				On E: Exception do mem_Log.Lines.Add(E.Message);
			end;
		finally
			scrollToEnd(reHEXLog);
			initForSniffer(reHEXLog);
			Self.Update;
		end;
	end;

begin
	if fWeHaveWaitEvent then
	begin
		initForSniffer(reHEXLog);
		fWeHaveWaitEvent := False;
	end;
	handle_dhtText;
	handle_dhtHex;
end;

procedure Tfm_MainForm.fdScriptRowExecute(ASender: TObject; row_Index, error_Code: Integer; var input_Value, output_Value: WideString);
var
	tmp: string;
begin
	if error_Code <> 0 then
	begin
		tmp := '';
		tmp := tmp + ' row         [' + row_Index.ToString + '] ' + sLineBreak;
		tmp := tmp + ' error code  [' + error_Code.ToString + ']' + sLineBreak;
		tmp := tmp + ' input value [' + input_Value + ']' + sLineBreak;
		tmp := tmp + ' output value[' + output_Value + ']';
		mem_Log.Lines.Add(tmp);
	end;
end;

procedure Tfm_MainForm.fdSecondProgress_Complete(Sender: TObject);
begin
	gau_Second.Progress := 0;
	gau_Second.Update;
end;

procedure Tfm_MainForm.fdSecondProgress_Init(ASender: TObject; value_Minimum, value_Maximum, value_Position: Integer);
begin
	gau_Second.Progress := value_Position;
	gau_Second.MinValue := value_Minimum;
	gau_Second.MaxValue := value_Maximum;
	pnl_Progress.Visible := True;
end;

procedure Tfm_MainForm.fdSecondProgress_Loop(ASender: TObject; value_Position: Integer);
begin
	gau_Second.Progress := value_Position;
	Application.ProcessMessages;
end;

procedure Tfm_MainForm.fdSendCommand(ASender: TObject; var Command, DateAndTime, repeat_Value, hex_Header, hex_Data, hex_Footer, human_Data: WideString);

	procedure handle_dhtText;
	begin
		try
			try
				reHumanLog.SelAttributes.Color := clBlue;
				reHumanLog.SelText := '[Request]';
				reHumanLog.SelAttributes.Color := clBlack;
				reHumanLog.SelText := ';';
				reHumanLog.SelAttributes.Color := clGreen;
				reHumanLog.SelText := '[' + DateAndTime + ']';
				reHumanLog.SelAttributes.Color := clBlack;
				reHumanLog.SelText := ';[' + repeat_Value + '];';
				reHumanLog.SelAttributes.Color := $00FF8080;
				reHumanLog.SelText := '[Command = ' + Command + ']' + #9;
				reHumanLog.SelAttributes.Color := $000080FF;
				reHumanLog.SelText := human_Data;
			except
				On E: Exception do mem_Log.Lines.Add(E.Message);
			end;

		finally
			scrollToEnd(reHumanLog);
			initForSniffer(reHumanLog);
			Self.Update;
		end;
	end;

	procedure handle_dhtHex;
	begin
		try
			try
				reHEXLog.SelAttributes.Color := clBlue; // $000080FF;
				reHEXLog.SelText := '[Request]';
				reHEXLog.SelAttributes.Color := clBlack;
				reHEXLog.SelText := ';';
				reHEXLog.SelAttributes.Color := clGreen;
				reHEXLog.SelText := '[' + DateAndTime + ']';
				reHEXLog.SelAttributes.Color := clBlack;
				reHEXLog.SelText := ';[' + repeat_Value + '];';
				reHEXLog.SelAttributes.Color := $00FF8080;
				reHEXLog.SelText := '[Command = ' + Command + ']' + #9;
				reHEXLog.SelAttributes.Color := clBlue;
				reHEXLog.SelText := hex_Header;
				reHEXLog.SelAttributes.Color := $000080FF;
				reHEXLog.SelText := hex_Data;
				reHEXLog.SelAttributes.Color := clBlue;
				reHEXLog.SelText := hex_Footer;
			except
				On E: Exception do mem_Log.Lines.Add(E.Message);
			end;
		finally
			scrollToEnd(reHEXLog);
			initForSniffer(reHEXLog);
			Self.Update;
		end;
	end;

begin
	handle_dhtText;
	handle_dhtHex;
end;

procedure Tfm_MainForm.fdStatusChange(Sender: TObject);
begin
	get_StatusState;
end;

procedure Tfm_MainForm.fdWait(ASender: TObject; Value: Byte);
begin
	if fSYNCount >= 16 then
	begin
		fSYNCount := 0;
		reHEXLog.SelStart := reHEXLog.GetTextLen;
		reHEXLog.SelText := sLineBreak; // #13#10;
		reHEXLog.SelStart := reHEXLog.GetTextLen;
		if fAppMessCount >= 5 then
		begin
			fAppMessCount := 0;
			reHEXLog.SelStart := reHEXLog.GetTextLen;
			reHEXLog.SelText := sLineBreak;
			reHEXLog.SelStart := reHEXLog.GetTextLen;
			Application.ProcessMessages;
		end
		else inc(fAppMessCount);
	end;
	reHEXLog.SelAttributes.Color := $00FF8080;
	reHEXLog.SelText := ' ' + byteToHex(Value);
	fWeHaveWaitEvent := True;
	Self.Update;
	inc(fSYNCount);
end;

function Tfm_MainForm.find_ActiveObject(theName: string): Boolean;
begin
	Result := False;
	try
		try
			fOldDudeInstance := GetActiveOleObject(theName);
			Result := True;
		except
			Result := False;
		end;
	finally
		if Result then ShowMessage('An old instance of "fd.CFD DUDE" is found!');
	end;
end;

procedure Tfm_MainForm.FormCreate(Sender: TObject);
var
	HL: TSynDSTSyn;
begin
	fWeHaveWaitEvent := False;
	fTransportProtocol := ctc_RS232;
	fComPort := 1;
	fLastError_Code := 0;
	fLastError_Message := '';
	fMyAfterCaseFlag := False;

	set_FormatSettings;

	afterCase := ac_AfterStart_Program;

	// ********************************
	HL := TSynDSTSyn.Create(fm_MainForm);
	se_Script.Highlighter := HL;
	// se_Script.ClearAll;
	// ***************************************
end;

procedure Tfm_MainForm.FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
	tmpBValue: Boolean;
begin
	MousePos := ScreenToClient(MousePos);
	tmpBValue := (MousePos.X > (pnl_StatusBytes.Left + ScrollBox1.Left));
	tmpBValue := tmpBValue and (MousePos.Y > ScrollBox1.Top);
	tmpBValue := tmpBValue and (MousePos.X < (pnl_StatusBytes.Left + ScrollBox1.Left + ScrollBox1.Width));
	tmpBValue := tmpBValue and (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height);
	If tmpBValue then ScrollBox1.Perform(WM_VSCROLL, 1, 0);
end;

procedure Tfm_MainForm.FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
	tmpBValue: Boolean;
begin
	MousePos := ScreenToClient(MousePos);
	tmpBValue := (MousePos.X > (pnl_StatusBytes.Left + ScrollBox1.Left));
	tmpBValue := tmpBValue and (MousePos.Y > ScrollBox1.Top);
	tmpBValue := tmpBValue and (MousePos.X < (pnl_StatusBytes.Left + ScrollBox1.Left + ScrollBox1.Width));
	tmpBValue := tmpBValue and (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height);
	If tmpBValue then ScrollBox1.Perform(WM_VSCROLL, 0, 0);
end;

procedure Tfm_MainForm.get_CommandInfo;
var
	tmpS: WideString;
begin
	btn_ComandsList.Enabled := False;
	btn_GetComandInfo.Enabled := False;
	cbx_CommandsList.Enabled := False;
	try
		se_CmdInfo.Clear;
		if fd.get_CommandInfo(command_Name, tmpS) = 0 then se_CmdInfo.Text := tmpS;
	finally
		se_CmdInfo.SelStart := 0;
		btn_ComandsList.Enabled := True;
		btn_GetComandInfo.Enabled := True;
		cbx_CommandsList.Enabled := True;
		Self.Update;
	end;
end;

procedure Tfm_MainForm.get_InputParamsList;
var
	tmpList    : TStringList;
	InputParams: WideString;
	i          : Integer;
begin
	if fd.get_InputParams_Names(command_Name, InputParams) <> 0 then Exit;
	tmpList := TStringList.Create;
	try
		se_CmdInfo.Lines.Add('');
		se_CmdInfo.Lines.Add('Input params list:');
		tmpList.Text := InputParams;
		for i := 0 to tmpList.Count - 1 do se_CmdInfo.Lines.Add(tmpList.Strings[i]);
	finally
		tmpList.Clear;
		tmpList.Free;
	end;
end;

function Tfm_MainForm.get_OutputParamsCount(var oCount: Integer): Boolean;
begin
	Result := False;
	oCount := -1;
	try
		try
			if not fd.connected_ToDevice then Exit;
			Result := (fd.get_OutputParams_Count(command_Name, oCount) = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(fd.lastError_Message);
	end;
end;

procedure Tfm_MainForm.get_OutputParamsList;
var
	tmpList     : TStringList;
	outputParams: WideString;
	i           : Integer;
begin
	if fd.get_OutputParams_Names(command_Name, outputParams) <> 0 then Exit;
	tmpList := TStringList.Create;
	try
		se_CmdInfo.Lines.Add('');
		se_CmdInfo.Lines.Add('Output params list:');
		tmpList.Text := outputParams;
		for i := 0 to tmpList.Count - 1 do se_CmdInfo.Lines.Add(tmpList.Strings[i]);
	finally
		tmpList.Clear;
		tmpList.Free;
	end;
end;

function Tfm_MainForm.get_OutputParams_Names(var Value: WideString): Boolean;
begin
	Result := False;
	Value := '';
	try
		try
			if not fd.connected_ToDevice then Exit;
			Result := (fd.get_OutputParams_Names(command_Name, Value) = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(fd.lastError_Message);
	end;
end;

procedure Tfm_MainForm.ed_FR_OperatorCodeChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.Operator_Code := StrToInt(ed_FR_OperatorCode.Text);
	check_Can_OpenFiscalReceipt;
	check_Can_OpenInvoiceReceipt;
end;

procedure Tfm_MainForm.ed_FR_OperatorPasswordChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.Operator_Password := Trim(ed_FR_OperatorPassword.Text);
	check_Can_OpenFiscalReceipt;
	check_Can_OpenInvoiceReceipt;
end;

procedure Tfm_MainForm.ed_FR_TillNumberChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.Till_Number := StrToInt(ed_FR_TillNumber.Text);
	check_Can_OpenFiscalReceipt;
	check_Can_OpenInvoiceReceipt;
end;

procedure Tfm_MainForm.ed_FR_UNPChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.FR_UNP := Trim(ed_FR_UNP.Text);
	check_Can_OpenFiscalReceipt;
	check_Can_OpenInvoiceReceipt;
end;

procedure Tfm_MainForm.ed_StOperator_CodeChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.Operator_Code := StrToInt(ed_StOperator_Code.Text);
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.ed_StOperator_PasswordChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.Operator_Password := ed_StOperator_Password.Text;
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.ed_St_Current_UNPChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.St_Current_UNP := ed_St_Current_UNP.Text;
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.ed_St_Doc_DateTimeChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.St_Doc_DateTime := ed_St_Doc_DateTime.Text;
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.ed_St_Doc_NumberChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.St_Doc_Number := StrToInt(ed_St_Doc_Number.Text);
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.ed_St_Doc_UNPChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.St_Doc_UNP := ed_St_Doc_UNP.Text;
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.ed_St_FM_NumberChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.St_FM_Number := ed_St_FM_Number.Text;
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.ed_St_InvoiceNumberChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.St_InvoiceNumber := ed_St_InvoiceNumber.Text;
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.ed_St_ReasonChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.St_Reason := ed_St_Reason.Text;
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.ed_StTill_NumberChange(Sender: TObject);
begin
	if fCanRefreshValues then fd.Till_Number := StrToInt(ed_StTill_Number.Text);
	check_Can_OpenStornoReceipt;
end;

procedure Tfm_MainForm.enableScriptBtns(toValue: Boolean);
begin
	btn_ExecuteScrypt.Enabled := toValue;
	btn_ExecuteSelected.Enabled := toValue;
	btn_DelScriptIput.Enabled := toValue;
	btn_DeleteOutput.Enabled := toValue;
	btn_Cancel.Enabled := not toValue;
	Self.Update;
end;

procedure Tfm_MainForm.get_StatusDescriptions;
var
	i, j          : Integer;
	aComponent    : TComponent;
	tmpDescription: string;
	tmpCheckForErr: Boolean;
	sBytesCount   : Integer;
begin
	sBytesCount := fd.count_StatusBytes;
	for i := 0 to sBytesCount - 1 do
	begin
		for j := 0 to 7 do
		begin
			tmpDescription := fd.get_SBit_Description(i, j);
			tmpCheckForErr := fd.get_SBit_ErrorChecking(i, j);
			aComponent := fm_MainForm.FindComponent('chbx_S' + i.ToString + '_' + j.ToString);
			if Assigned(aComponent) then
				if aComponent is TCheckBox then
				begin
					TCheckBox(aComponent).Caption := tmpDescription;
					if tmpCheckForErr then TCheckBox(aComponent).Font.Style := [fsBold]
					else TCheckBox(aComponent).Font.Style := [];
				end;
		end;
	end;
end;

procedure Tfm_MainForm.get_StatusState;
var
	i, j       : Integer;
	aComponent : TComponent;
	tmpState   : Boolean;
	sBytesCount: Integer;
begin
	sBytesCount := fd.count_StatusBytes;
	for i := 0 to sBytesCount - 1 do
		for j := 0 to 7 do
		begin
			tmpState := fd.get_SBit_State(i, j);
			aComponent := fm_MainForm.FindComponent('chbx_S' + i.ToString + '_' + j.ToString);
			if Assigned(aComponent) then
				if aComponent is TCheckBox then
				begin
					TCheckBox(aComponent).Checked := tmpState;
				end;
		end;
end;

procedure Tfm_MainForm.ScrollBarMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
	i: Integer;
begin
	Handled := PtInRect(ScrollBox1.ClientRect, ScrollBox1.ScreenToClient(MousePos));
	if Handled then
		for i := 1 to Mouse.WheelScrollLines do
			try
				if WheelDelta > 0 then ScrollBox1.Perform(WM_VSCROLL, SB_LINEUP, 0)
				else ScrollBox1.Perform(WM_VSCROLL, SB_LINEDOWN, 0);
			finally
				ScrollBox1.Perform(WM_VSCROLL, SB_ENDSCROLL, 0);
			end;
end;

procedure Tfm_MainForm.scrollToEnd(targetEditor: TRichEdit);
var
	isSelectionHidden: Boolean;
begin
	with targetEditor do
	begin
		SelStart := Perform(EM_LINEINDEX, Lines.Count - 1, 0); // Set caret at end
		SelLength := 0;
		isSelectionHidden := HideSelection;
		try
			HideSelection := False;
			Perform(EM_SCROLLCARET, 0, 0); // Scroll to caret
		finally
			HideSelection := isSelectionHidden;
		end;
	end;
end;

procedure Tfm_MainForm.SetAfterCase(const Value: TAfterCase);
begin
	fCanRefreshValues := False;

	fAfterCase := Value;

	set_Other(Value);
	set_CheckBoxes(Value);
	set_LabelValues(Value);
	set_EditBoxes(Value);
	set_ComboBoxValues(Value);
	set_TabVisibility(Value);
	set_Buttons(Value);
end;

procedure Tfm_MainForm.SetBaudRate(const Value: Integer);
begin
	fBaudRate := Value;
end;

procedure Tfm_MainForm.set_CheckBoxes(afterCase: TAfterCase);
begin
	try
		case afterCase of
			ac_AfterStopServer, ac_AfterStart_Program:
				begin
					chbx_Active_OnBeforeScriptExecute.Checked := False;
					chbx_Active_OnScriptRowExecute.Checked := False;
					chbx_Active_OnAfterScriptExecute.Checked := False;
					chbx_Active_OnSendCommand.Checked := False;
					chbx_Active_OnWait.Checked := False;
					chbx_Active_OnReceiveAnswer.Checked := False;
					chbx_Active_OnStatusChange.Checked := False;
					chbx_Active_OnError.Checked := False;
					chbx_Active_OnFirstProgress_Init.Checked := False;
					chbx_Active_OnFirstProgress_Loop.Checked := False;
					chbx_Active_OnFirstProgress_Complete.Checked := False;
					chbx_Active_OnSecondProgress_Init.Checked := False;
					chbx_Active_OnSecondProgress_Loop.Checked := False;
					chbx_Active_OnSecondProgress_Complete.Checked := False;
					chbx_TrackingMode.Checked := False;
					chbx_Active_OnAfterOpenConnection.Checked := False;
					chbx_Active_OnAfterCloseConnection.Checked := False;
					chbx_RegisterActiveObject.Checked := False;
					chbx_Save_Settings_AfterOpenConnection.Checked := False;
					chbx_Active_OnAfterSettingsChange.Checked := False;
					chbx_CheckDeviceStatusOnCheckConnection.Checked := False;
				end;
			ac_AfterSettingsChange:
				begin
					chbx_Active_OnBeforeScriptExecute.Checked := fd.Active_OnBeforeScriptExecute;
					chbx_Active_OnScriptRowExecute.Checked := fd.Active_OnScriptRowExecute;
					chbx_Active_OnAfterScriptExecute.Checked := fd.Active_OnAfterScriptExecute;
					chbx_Active_OnSendCommand.Checked := fd.active_OnSendCommand;
					chbx_Active_OnWait.Checked := fd.active_OnWait;
					chbx_Active_OnReceiveAnswer.Checked := fd.active_OnReceiveAnswer;
					chbx_Active_OnStatusChange.Checked := fd.active_OnStatusChange;
					chbx_Active_OnError.Checked := fd.active_OnError;
					chbx_Active_OnFirstProgress_Init.Checked := fd.active_OnFirstProgress_Init;
					chbx_Active_OnFirstProgress_Loop.Checked := fd.active_OnFirstProgress_Loop;
					chbx_Active_OnFirstProgress_Complete.Checked := fd.active_OnFirstProgress_Complete;
					chbx_Active_OnSecondProgress_Init.Checked := fd.active_OnSecondProgress_Init;
					chbx_Active_OnSecondProgress_Loop.Checked := fd.active_OnSecondProgress_Loop;
					chbx_Active_OnSecondProgress_Complete.Checked := fd.active_OnSecondProgress_Complete;
					chbx_Active_OnAfterOpenConnection.Checked := fd.Active_OnAfterOpenConnection;
					chbx_Active_OnAfterCloseConnection.Checked := fd.Active_OnAfterCloseConnection;
					chbx_RegisterActiveObject.Checked := fd.register_ActiveObject_OnStart;
					chbx_Save_Settings_AfterOpenConnection.Checked := fd.save_SettingsAfterOpenConnection;
					chbx_TrackingMode.Checked := fd.trackingMode;
					chbx_Active_OnAfterSettingsChange.Checked := fd.Active_OnAfterSettingsChange;
					chbx_CheckDeviceStatusOnCheckConnection.Checked := fd.checkDeviceStatusOnCheckConnection;

					if fd.connected_ToDevice then
					begin
						get_StatusDescriptions;
						get_StatusState;
					end;
				end;
			ac_AfterStart_Server:
				begin
					chbx_Active_OnBeforeScriptExecute.Checked := fd.Active_OnBeforeScriptExecute;
					chbx_Active_OnScriptRowExecute.Checked := fd.Active_OnScriptRowExecute;
					chbx_Active_OnAfterScriptExecute.Checked := fd.Active_OnAfterScriptExecute;
					chbx_Active_OnSendCommand.Checked := fd.active_OnSendCommand;
					chbx_Active_OnWait.Checked := fd.active_OnWait;
					chbx_Active_OnReceiveAnswer.Checked := fd.active_OnReceiveAnswer;
					chbx_Active_OnStatusChange.Checked := fd.active_OnStatusChange;
					chbx_Active_OnError.Checked := fd.active_OnError;
					chbx_Active_OnFirstProgress_Init.Checked := fd.active_OnFirstProgress_Init;
					chbx_Active_OnFirstProgress_Loop.Checked := fd.active_OnFirstProgress_Loop;
					chbx_Active_OnFirstProgress_Complete.Checked := fd.active_OnFirstProgress_Complete;
					chbx_Active_OnSecondProgress_Init.Checked := fd.active_OnSecondProgress_Init;
					chbx_Active_OnSecondProgress_Loop.Checked := fd.active_OnSecondProgress_Loop;
					chbx_Active_OnSecondProgress_Complete.Checked := fd.active_OnSecondProgress_Complete;
					chbx_Active_OnAfterOpenConnection.Checked := fd.Active_OnAfterOpenConnection;
					chbx_Active_OnAfterCloseConnection.Checked := fd.Active_OnAfterCloseConnection;
					chbx_RegisterActiveObject.Checked := fd.register_ActiveObject_OnStart;
					chbx_Save_Settings_AfterOpenConnection.Checked := fd.save_SettingsAfterOpenConnection;
					chbx_TrackingMode.Checked := fd.trackingMode;
					chbx_Active_OnAfterSettingsChange.Checked := fd.Active_OnAfterSettingsChange;
					chbx_CheckDeviceStatusOnCheckConnection.Checked := fd.checkDeviceStatusOnCheckConnection;
				end;
			ac_AfterOpenConnection:
				begin
					init_StatusState;
					get_StatusDescriptions;
					get_StatusState;
					set_GroupBoxVisibility;
					fd.init_OperatorValues;
					fd.init_StornoValues;

					refresh_StornoProperties;
					refresh_FiscalReceiptProperties;
					fCanRefreshValues := True;
				end;
			ac_AfterCloseConnection:
				begin
					init_StatusState;
					set_GroupBoxVisibility;
				end;
		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_ComboBoxValues(afterCase: TAfterCase);
begin
	try
		case afterCase of
			ac_AfterStopServer, ac_AfterStart_Program:
				begin
					cbx_DriverLanguage.Enabled := False;
					cbx_DriverLanguage.ItemIndex := -1;
					cbx_CommandsList.ItemIndex := -1;
					if afterCase = ac_AfterStart_Program then
					begin
						cbx_CommandList_NameIndex.ItemIndex := 0;
						cbx_GoToPage.ItemIndex := 0;
						cbx_CodeType.ItemIndex := 0;
					end;
				end;
			ac_AfterSettingsChange:
				begin
					cbx_DriverLanguage.Enabled := True;
					case fd.language of
						FP3530_TLB.English: cbx_DriverLanguage.ItemIndex := cbx_DriverLanguage.Items.IndexOf('English');
						FP3530_TLB.Bulgarian: cbx_DriverLanguage.ItemIndex := cbx_DriverLanguage.Items.IndexOf('Bulgarian');
					end;
				end;
			ac_AfterStart_Server:
				begin
					cbx_DriverLanguage.Enabled := True;
					case fd.language of
						FP3530_TLB.English: cbx_DriverLanguage.ItemIndex := cbx_DriverLanguage.Items.IndexOf('English');
						FP3530_TLB.Bulgarian: cbx_DriverLanguage.ItemIndex := cbx_DriverLanguage.Items.IndexOf('Bulgarian');
					end;
				end;
			ac_AfterOpenConnection:
				begin
					cbx_CommandsList.Items.Text := fd.get_ComandsList(cbx_CommandList_NameIndex.ItemIndex);
					if cbx_CommandsList.Items.Count > 0 then
					begin
						cbx_CommandsList.ItemIndex := 0;
						command_Name := cbx_CommandsList.Items.Strings[cbx_CommandsList.ItemIndex];
						get_CommandInfo;
					end;
				end;
			ac_AfterCloseConnection:
				begin
					//
				end;

		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_EditBoxes(afterCase: TAfterCase);
begin
	try
		case afterCase of
			ac_AfterStart_Program:
				begin
					ed_TrackingModePath.Text := '';
					ed_TrackingModeFileName.Text := '';
					ed_TrackingModeRowLimit.Text := '0';

					ed_LANPort.Enabled := False;   //
					ed_IPAddress.Enabled := False; //
					ed_COMPort.Enabled := False;   //
					ed_BaudRate.Enabled := False;  //
				end;
			ac_AfterSettingsChange, ac_AfterStart_Server:
				begin
					ed_COMPort.Text := fd.rs232_ComPort.ToString;
					ed_BaudRate.Text := fd.rs232_BaudRate.ToString;
					ed_LANPort.Text := fd.tcpip_Port.ToString;
					ed_IPAddress.Text := fd.tcpip_Address;

					ed_TrackingModePath.Text := fd.trackingMode_Path;
					ed_TrackingModeFileName.Text := fd.trackingMode_FileName;
					ed_TrackingModeRowLimit.Text := fd.trackingMode_RowLimit.ToString;

					ed_LANPort.Enabled := (tsw_TransportType.State <> tssOff);   //
					ed_IPAddress.Enabled := (tsw_TransportType.State <> tssOff); //
					ed_COMPort.Enabled := (tsw_TransportType.State = tssOff);    //
					ed_BaudRate.Enabled := (tsw_TransportType.State = tssOff);   //
				end;
			ac_AfterOpenConnection:
				begin
					ed_LANPort.Enabled := False;
					ed_IPAddress.Enabled := False;
					ed_COMPort.Enabled := False;
					ed_BaudRate.Enabled := False;
				end;
			ac_AfterCloseConnection:
				begin
					ed_LANPort.Enabled := (tsw_TransportType.State <> tssOff);   //
					ed_IPAddress.Enabled := (tsw_TransportType.State <> tssOff); //
					ed_COMPort.Enabled := (tsw_TransportType.State = tssOff);    //
					ed_BaudRate.Enabled := (tsw_TransportType.State = tssOff);   //
				end;
			ac_AfterStopServer:
				begin
					ed_LANPort.Enabled := False;
					ed_IPAddress.Enabled := False;
					ed_COMPort.Enabled := False;
					ed_BaudRate.Enabled := False;
				end;

		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_FormatSettings;
begin
	FormatSettings.DateSeparator := '.';
	FormatSettings.TimeSeparator := ':';
	FormatSettings.DecimalSeparator := '.';
	FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
	FormatSettings.ShortTimeFormat := 'hh:mm:ss:zzz';
	FormatSettings.LongDateFormat := 'dd.mm.yyyy';
	FormatSettings.LongTimeFormat := 'hh:mm:ss:zzz';
end;

procedure Tfm_MainForm.set_GroupBoxVisibility;
var
	i          : Integer;
	aComponent : TComponent;
	sBytesCount: Integer;
begin
	if fd.connected_ToDevice then sBytesCount := fd.count_StatusBytes
	else sBytesCount := 8;
	for i := 0 to 7 do
	begin
		aComponent := fm_MainForm.FindComponent('grbx_SB_' + i.ToString);
		if Assigned(aComponent) then
			if aComponent is TGroupBox then
			begin
				if (i <= sBytesCount - 1) then TGroupBox(aComponent).Visible := True
				else TGroupBox(aComponent).Visible := False;
			end;
	end;
end;

procedure Tfm_MainForm.SetComPort(const Value: Integer);
begin
	fComPort := Value;
end;

procedure Tfm_MainForm.set_Buttons(afterCase: TAfterCase);
var
	bv: Boolean;
begin
	try
		case afterCase of
			ac_AfterStopServer, ac_AfterStart_Program:
				begin
					btn_StartCOMServer.Enabled := True;
					btn_StopCOMServer.Enabled := False;
					btn_OpenConnection.Enabled := False;
					btn_StopConnection.Enabled := False;
				end;
			ac_AfterOpenConnection, ac_AfterStart_Server, ac_AfterCloseConnection:
				begin
					btn_StartCOMServer.Enabled := False;
					btn_StopCOMServer.Enabled := True;
					btn_GetSystemInfo.Enabled := True;

					btn_LoadScriptFromFile.Enabled := True;
					btn_DelScriptIput.Enabled := True;
					btn_DeleteOutput.Enabled := True;
					btn_ComandsList.Enabled := True;
					btn_GetComandInfo.Enabled := True;
					btn_GenerateCode.Enabled := True;

					bv := fd.connected_ToDevice;
					btn_OpenConnection.Enabled := (not bv);
					btn_StopConnection.Enabled := bv;
					btn_ExecuteCustomCommand.Enabled := bv;
					btn_Last_AnswerList.Enabled := bv;
					btn_ExecuteScrypt.Enabled := bv;
					btn_ExecuteSelected.Enabled := bv;
				end;
			ac_AfterSettingsChange:;
		end;
	finally
		Self.Update;
	end;
end;

function Tfm_MainForm.set_InputParam_ByIndex(param_Index: Integer; const param_Value: string): Boolean;
begin
	Result := False;
	if not fd.connected_ToDevice then Exit;
	try
		try
			Result := (fd.set_InputParam_ByIndex(command_Name, 0, '1') = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(fd.lastError_Message);
	end;
end;

function Tfm_MainForm.set_InputParam_ByName(const param_Name, param_Value: string): Boolean;
begin
	Result := False;
	if not fd.connected_ToDevice then Exit;
	try
		try
			Result := (fd.set_InputParam_ByName(command_Name, param_Name, param_Value) = 0);
		except
			Result := False;
		end;
	finally
		if not Result then ShowMessage(fd.lastError_Message);
	end;
end;

procedure Tfm_MainForm.set_LabelValues(afterCase: TAfterCase);

	procedure init_LabelCaptions;
	begin
		lb_Language_2.Caption := caption_None;
		lb_DeviceConnected_2.Caption := caption_None;
		lb_LANConnected_2.Caption := caption_None;
		lb_Device_Type_02.Caption := caption_None;
		lb_ModelName_2.Caption := caption_None;
		lb_SerialNumber_2.Caption := caption_None;
		lb_FM_Number_02.Caption := caption_None;
		lb_Firmware_Revision_02.Caption := caption_None;
		lb_Firmware_Date_02.Caption := caption_None;
		lb_Firmware_CheckSum_02.Caption := caption_None;
		lb_Firmware_CodePage_02.Caption := caption_None;
		lb_PackagedMessageType_02.Caption := caption_None;
		lb_StatusBytesCount_02.Caption := caption_None;
		lb_DeviceConnected_2.Caption := 'Not connected';
	end;

	procedure change_SomeLabels(enableToValue: Boolean);
	begin
		lb_LANPort.Enabled := enableToValue;
		lb_IPAddress.Enabled := enableToValue;
		lb_COMPort.Enabled := enableToValue;
		lb_BaudRate.Enabled := enableToValue;
		case afterCase of
			ac_AfterStart_Program:;
			ac_AfterStart_Server:;
			ac_AfterOpenConnection:;
			ac_AfterCloseConnection:
				begin
					lb_LANPort.Enabled := not enableToValue;
					lb_IPAddress.Enabled := not enableToValue;
				end;
			ac_AfterStopServer:;
			ac_AfterSettingsChange:;
		end;
	end;

begin
	try
		case afterCase of
			ac_AfterStopServer:
				begin
					init_LabelCaptions;
					change_SomeLabels(False);
				end;
			ac_AfterStart_Program:
				begin
					init_LabelCaptions;
					change_SomeLabels(False);
				end;
			ac_AfterCloseConnection:
				begin
					init_LabelCaptions;
					change_SomeLabels(tsw_TransportType.State = tssOff);
				end;
			ac_AfterOpenConnection:
				begin
					lb_ModelName_2.Caption := fd.device_Model_Name;
					lb_SerialNumber_2.Caption := fd.device_Number_Serial;
					lb_FM_Number_02.Caption := fd.device_Number_FMemory;
					lb_Firmware_Revision_02.Caption := fd.device_Firmware_Revision;
					lb_Firmware_Date_02.Caption := fd.device_Firmware_Date;
					lb_Firmware_CheckSum_02.Caption := fd.device_Firmware_CheckSum;
					lb_Firmware_CodePage_02.Caption := fd.codePage.ToString;
					case fd.type_PackagedMessage of
						pmt_Unknown: lb_PackagedMessageType_02.Caption := caption_None;
						pmt_01: lb_PackagedMessageType_02.Caption := '01';
						pmt_02: lb_PackagedMessageType_02.Caption := '02';
					end;
					lb_StatusBytesCount_02.Caption := fd.count_StatusBytes.ToString;

					change_SomeLabels(False);

					lb_DeviceConnected_2.Caption := 'Connected';
					case fd.device_Type of
						dtc_FiscalPrinter: lb_Device_Type_02.Caption := 'Fiscal printer';
						dtc_ECR: lb_Device_Type_02.Caption := 'Cash register';
					end;

					if fd.connected_ToLAN then lb_LANConnected_2.Caption := 'Available'
					else lb_LANConnected_2.Caption := 'Not available';
				end;
			ac_AfterStart_Server:
				begin
					init_LabelCaptions;

					case fd.language of
						FP3530_TLB.English: lb_Language_2.Caption := 'English';
						FP3530_TLB.Bulgarian: lb_Language_2.Caption := 'Bulgarian';
					end;

					if fd.connected_ToLAN then lb_LANConnected_2.Caption := 'Available'
					else lb_LANConnected_2.Caption := 'Not available';

					lb_LANPort.Enabled := (tsw_TransportType.State <> tssOff);   //
					lb_IPAddress.Enabled := (tsw_TransportType.State <> tssOff); //
					lb_COMPort.Enabled := (tsw_TransportType.State = tssOff);    //
					lb_BaudRate.Enabled := (tsw_TransportType.State = tssOff);   //

				end;

			ac_AfterSettingsChange:
				begin
					case fd.language of
						FP3530_TLB.English: lb_Language_2.Caption := 'English';
						FP3530_TLB.Bulgarian: lb_Language_2.Caption := 'Bulgarian';
					end;
					if fd.connected_ToLAN then lb_LANConnected_2.Caption := 'Available'
					else lb_LANConnected_2.Caption := 'Not available';

					lb_LANPort.Enabled := (tsw_TransportType.State <> tssOff);   //
					lb_IPAddress.Enabled := (tsw_TransportType.State <> tssOff); //
					lb_COMPort.Enabled := (tsw_TransportType.State = tssOff);    //
					lb_BaudRate.Enabled := (tsw_TransportType.State = tssOff);   //
				end;
		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_Other(afterCase: TAfterCase);
begin
	try
		case afterCase of
			ac_AfterStart_Program:
				begin
					pnl_Btm.Visible := False;
					pnl_StatusBytes.Visible := False;
					tsw_TransportType.Enabled := False;
					reHumanLog.Clear;
					reHEXLog.Clear;
					pc_Behavior.ActivePage := ts_RAOMode;
				end;
			ac_AfterStopServer:
				begin
					pnl_Btm.Visible := False;
					pnl_StatusBytes.Visible := False;
					tsw_TransportType.Enabled := False;
					reHumanLog.Clear;
					reHEXLog.Clear;
				end;
			ac_AfterCloseConnection:
				begin
					pnl_Btm.Visible := True;
					pnl_StatusBytes.Visible := False;
					tsw_TransportType.Enabled := True;
					case fd.protocol_TransportType of
						ctc_RS232: tsw_TransportType.State := tssOff;
						ctc_TCPIP: tsw_TransportType.State := tssOn;
					end;
				end;
			ac_AfterStart_Server:
				begin
					pnl_Btm.Visible := True;
					pnl_StatusBytes.Visible := False;
					tsw_TransportType.Enabled := True;
					case fd.protocol_TransportType of
						ctc_RS232: tsw_TransportType.State := tssOff;
						ctc_TCPIP: tsw_TransportType.State := tssOn;
					end;
				end;
			ac_AfterSettingsChange:
				begin
					tsw_TransportType.Enabled := not fd.connected_ToDevice;
					pnl_StatusBytes.Visible := True;
					pnl_Btm.Visible := True;
					get_StatusDescriptions;
					get_StatusState;
				end;
			ac_AfterOpenConnection:
				begin
					tsw_TransportType.Enabled := False;
					pnl_Btm.Visible := True;
					reHumanLog.Clear;
					reHEXLog.Clear;
					get_StatusDescriptions;
					get_StatusState;
					pnl_StatusBytes.Visible := True;
				end;
		end;
	finally
		Self.Update;
	end;
end;

procedure Tfm_MainForm.set_TabVisibility(afterCase: TAfterCase);
var
	i: Integer;
begin
	try
		case afterCase of
			ac_AfterStopServer, ac_AfterStart_Program:
				begin
					for i := pc_Main.PageCount - 1 downto 0 do pc_Main.Pages[i].TabVisible := False;
					pc_Main.ActivePage := ts_Initialisation;
					pnl_StatusBytes.Visible := False;
					btn_OpenConnection.Enabled := False;
					btn_StopConnection.Enabled := False;
					if afterCase = ac_AfterStart_Program then pc_ScriptContainer.ActivePage := ts_SimpleScript;
				end;
			ac_AfterStart_Server:
				begin
					for i := pc_Main.PageCount - 1 downto 0 do pc_Main.Pages[i].TabVisible := False;
					ts_SystemInfo.TabVisible := True;
					ts_Behavior.TabVisible := True;
					ts_Initialisation.TabVisible := True;
					pc_Main.ActivePage := ts_Initialisation;
				end;
			ac_AfterOpenConnection:
				begin
					for i := pc_Main.PageCount - 1 downto 0 do pc_Main.Pages[i].TabVisible := True;
					ts_GetCommandsList.TabVisible := True;
					pc_Main.ActivePage := ts_Initialisation;
				end;
			ac_AfterCloseConnection:
				begin
					for i := pc_Main.PageCount - 1 downto 0 do pc_Main.Pages[i].TabVisible := False;
					ts_SystemInfo.TabVisible := True;
					ts_Behavior.TabVisible := True;
					ts_Initialisation.TabVisible := True;
					pc_Main.ActivePage := ts_Initialisation;
				end;
		end;
	finally
		Self.Update;
	end;
end;

function Tfm_MainForm.set_TransportProtocol: Integer;
var
	lanPort: Word;
begin
	Result := -1;
	fMyAfterCaseFlag := True;
	try
		try
			case fTransportProtocol of
				ctc_RS232:
					begin
						Result := fd.set_TransportType(ctc_RS232);
						if Result <> 0 then Exit;

						Result := fd.set_RS232(StrToInt(ed_COMPort.Text), StrToInt(ed_BaudRate.Text));
						if Result <> 0 then Exit;
					end;
				ctc_TCPIP:
					begin
						// Result := fd.set_TransportType(ctc_TCPIP);
						Result := fd.set_TransportType(2);
						if Result <> 0 then Exit;

						lanPort := StrToInt(ed_LANPort.Text);
						Result := fd.set_TCPIP(ed_IPAddress.Text, lanPort);
						if Result <> 0 then Exit;
					end;
			end;
			Result := 0;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		fMyAfterCaseFlag := False;
		afterCase := ac_AfterSettingsChange;
	end;
end;

procedure Tfm_MainForm.show_DeviceModel;
begin
	case fd.device_Model of
		mc_Unknown: ShowMessage('Unknown model');
		mc_DP_05: ShowMessage('Device model: "DP-05"');
		mc_DP_15: ShowMessage('Device model: "DP-15"');
		mc_DP_25: ShowMessage('Device model: "DP-25"');
		mc_DP_35: ShowMessage('Device model: "DP-35"');
		mc_DP_150: ShowMessage('Device model: "DP-150"');
		mc_WP_50: ShowMessage('Device model: "WP-50"');
		mc_FP_650: ShowMessage('Device model: "FP-650"');
		mc_FP_800: ShowMessage('Device model: "FP-800"');
		mc_FP_2000: ShowMessage('Device model: "FMP-2000"');
		mc_SK_21F: ShowMessage('Device model: "SK-21F"');
		mc_SK_31F: ShowMessage('Device model: "SK-31F"');
	end;
end;

procedure Tfm_MainForm.initForSniffer(targetLogEditor: TRichEdit);
begin
	targetLogEditor.SelStart := targetLogEditor.GetTextLen;
	if length(targetLogEditor.Lines.Strings[targetLogEditor.Lines.Count - 1]) > 0 then
	begin
		targetLogEditor.SelText := sLineBreak; // #13#10;
		targetLogEditor.SelStart := targetLogEditor.GetTextLen;
	end;
	targetLogEditor.SelAttributes.Size := 9;
	targetLogEditor.SelAttributes.Style := [fsBold];
end;

procedure Tfm_MainForm.init_StatusState;
var
	i, j       : Integer;
	aComponent : TComponent;
	sBytesCount: Integer;
begin
	if fd.connected_ToDevice then sBytesCount := fd.count_StatusBytes
	else sBytesCount := 8;
	for i := 0 to sBytesCount - 1 do
		for j := 0 to 7 do
		begin
			aComponent := fm_MainForm.FindComponent('chbx_S' + i.ToString + '_' + j.ToString);
			if Assigned(aComponent) then
				if aComponent is TCheckBox then
				begin
					TCheckBox(aComponent).Checked := False;
					TCheckBox(aComponent).Caption := caption_None;
				end;
		end;
end;

procedure Tfm_MainForm.refresh_FiscalReceiptProperties;
begin
	ed_FR_OperatorCode.Text := fd.Operator_Code.ToString;
	ed_FR_OperatorPassword.Text := fd.Operator_Password;
	ed_FR_TillNumber.Text := fd.Till_Number.ToString;
	ed_FR_UNP.Text := fd.FR_UNP;
	cbx_FR_ByInvoice.ItemIndex := fd.FR_Invoice;
	ed_FR_AllReceiptCount.Text := fd.AllReceipt_Count.ToString;
	ed_FR_FiscalReceiptCount.Text := fd.FiscalReceipt_Count.ToString;
	check_Can_OpenFiscalReceipt;
	check_Can_OpenInvoiceReceipt;
	ed_GlobalCounter.Text := fd.GlobalCounter.ToString;
end;

procedure Tfm_MainForm.refresh_StornoProperties;
begin
	ed_StOperator_Code.Text := fd.Operator_Code.ToString;
	ed_StOperator_Password.Text := fd.Operator_Password;
	ed_StTill_Number.Text := fd.Till_Number.ToString;
	cbx_St_Reason_Type.ItemIndex := fd.St_Reason_Type;
	ed_St_Doc_Number.Text := fd.St_Doc_Number.ToString;
	ed_St_Doc_DateTime.Text := fd.St_Doc_DateTime;
	ed_St_FM_Number.Text := fd.St_FM_Number;
	ed_St_Doc_UNP.Text := fd.St_Doc_UNP;
	cbx_St_ByInvoice.ItemIndex := fd.St_ByInvoice;
	ed_St_InvoiceNumber.Text := fd.St_InvoiceNumber;
	ed_St_Reason.Text := fd.St_Reason;
	ed_St_Current_UNP.Text := fd.St_Current_UNP;
	ed_AllReceipt_Count_Storno.Text := fd.AllReceipt_Count.ToString;
	ed_StReceipt_Count.Text := fd.StReceipt_Count.ToString;
end;

function Tfm_MainForm.save_Language: Integer;
begin
	try
		case cbx_DriverLanguage.ItemIndex of
			0: fd.language := FP3530_TLB.Bulgarian;
			1: fd.language := FP3530_TLB.English;
		end;
		Result := fd.lastError_Code;
	except
		Result := -1;
	end
end;

function Tfm_MainForm.save_TrackingMode: Integer;
begin
	Result := -1;
	try
		Result := fd.set_TrackingMode(chbx_TrackingMode.Checked);
		if Result <> 0 then Exit;
		Result := fd.set_TrackingMode_Path(Trim(ed_TrackingModePath.Text));
		if Result <> 0 then Exit;
		Result := fd.set_TrackingMode_FileName(Trim(ed_TrackingModeFileName.Text));
		if Result <> 0 then Exit;
		Result := fd.set_TrackingMode_RowLimit(StrToInt(ed_TrackingModeRowLimit.Text));
	except
		Result := -1;
	end;
end;

function Tfm_MainForm.tryTo_COMServer_Start: Boolean;
begin
	try
		fd.RemoteMachineName := '';
		fd.Connect;
		Result := True;
	except
		Result := False;
	end;
end;

procedure Tfm_MainForm.tsw_TransportTypeClick(Sender: TObject);
begin
	try
		case tsw_TransportType.State of
			tssOff: fTransportProtocol := ctc_RS232;
			tssOn: fTransportProtocol := ctc_TCPIP;
		end;
		set_LabelValues(ac_AfterStart_Server);
		set_EditBoxes(ac_AfterStart_Server);
	finally
		if ed_COMPort.Visible then
			if ed_COMPort.Enabled then ed_COMPort.SetFocus;
		if ed_IPAddress.Visible then
			if ed_IPAddress.Enabled then ed_IPAddress.SetFocus;
	end;
end;

end.
