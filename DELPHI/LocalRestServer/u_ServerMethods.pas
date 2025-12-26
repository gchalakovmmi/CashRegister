unit u_ServerMethods;

interface

uses
	System.SysUtils,
	System.Classes,
	System.Json,
	Datasnap.DSServer,
	Datasnap.DSAuth,
	Vcl.OleServer,
	Data.DBXCommon,
	FP3530_TLB;

type
{$METHODINFO ON}
	TSM = class(TDataModule)
		// TSM = class(TDSServerModule)
		fd_: TCFD_BGR;
		procedure DataModuleCreate(Sender: TObject);
	private
		fCOMServer_Started: Boolean;
	public
		{ Public declarations }
		function add_Transaction(var HeaderID: string): Integer;
		function add_TrScriptItem(HeaderID: string; var ScriptID: string): Integer;
		function clear_TrScript(HeaderID: string): Integer;
		function delete_TrByHeader(HeaderID: string): Integer;
		function delete_TrByIndex(Index: Integer): Integer;
		function delete_OldTransactions: Integer;
		function execute_Command(command_Value: Integer; const inputText: string; var outputText: string): Integer;
		function execute_Transaction(HeaderID: string): Integer;
		function execute_AllTransactions(OrderType: Integer): Integer;
		function get_Array_HeadersID(var HeaderIDArray: string): Integer;
		function get_Array_ScriptsID(HeaderID: string; var ScriptIDArray: string): Integer;
		function get_Array_ErrorsID(var ErrorsIDArray: string): Integer;
		function get_HeaderItem_Value(HeaderID, VariableName: string; var VariableValue: string): Integer;
		function get_ScriptItem_Value(HeaderID, ScriptItemID, VariableName: string; var VariableValue: string): Integer;
		function get_ErrorsItem_Value(ErrorsID, VariableName: string; var VariableValue: string): Integer;
		function get_LastErrorItem_ByHeaderID(HeaderID, VariableName: string; var VariableValue: string): Integer;
		function get_SystemInfo(var SystemInfo: string): Integer;
		function set_TrScriptItem(HeaderID, ScriptItemID, VariableName: string; VariableValue: string): Integer;
		function save_LastErrors(FileName: string): Integer;
		function init_StornoValues: Integer;
		function init_FiscalReceiptValues: Integer;
		function init_OperatorValues: Integer;
		function set_Operator_Code(Operator_Code: string): Integer;
		function set_Operator_Password(Operator_Password: string): Integer;
		function set_Till_Number(TillNumber: string): Integer;
		function set_UNP(UNP: string): Integer;
		function set_FiscalReceipt_TypeFlag(FR_Invoice: Integer): Integer;
		function get_FiscalRecept_TypeFlag(var FR_Invoice: Integer): Integer;
		function set_Storno_Reason_Type(St_Reason_Type: string): Integer;
		function set_Storno_DocNumber(St_Doc_Number: string): Integer;
		function set_Storno_DocDateTime(St_DateTime: string): Integer;
		function set_Storno_FMNumber(St_FMNumber: string): Integer;
		function set_Storno_DocUNP(St_Doc_UNP: string): Integer;
		function set_Storno_ByInvoice(St_ByInvoice: string): Integer;
		function set_Storno_InvoiceNumber(St_InvoiceNumber: string): Integer;
		function set_Storno_ReasonText(St_ReasonText: string): Integer;
		function open_FiscalReceipt: Integer;
		function open_InvoiceReceipt: Integer;
		function open_StornoReceipt: Integer;
		function can_OpenStornoReceipt(var Can: string): Integer;
		function can_OpenFiscalReceipt(var Can: string): Integer;
		function can_OpenInvoiceReceipt(var Can: string): Integer;
		function get_eSBit_GeneralError_Sharp(var eSBit: Integer): Integer;
		function get_eSBit_PrintingMechanism(var eSBit: Integer): Integer;
		function get_eSBit_ClockIsNotSynchronized(var eSBit: Integer): Integer;
		function get_eSBit_CommandCodeIsInvalid(var eSBit: Integer): Integer;
		function get_eSBit_SyntaxError(var eSBit: Integer): Integer;
		function get_eSBit_CommandNotPermitted(var eSBit: Integer): Integer;
		function get_eSBit_Overflow(var eSBit: Integer): Integer;
		function get_eSBit_EJIsFull(var eSBit: Integer): Integer;
		function get_eSBit_EndOfPaper(var eSBit: Integer): Integer;
		function get_eSBit_FM_NotAccess(var eSBit: Integer): Integer;
		function get_eSBit_FM_Full(var eSBit: Integer): Integer;
		function get_eSBit_GeneralError_Star(var eSBit: Integer): Integer;
		function get_eSBit_Cover_IsOpen(var eSBit: Integer): Integer;
		function get_iSBit_No_ClientDisplay(var iSBit: Integer): Integer;
		function get_iSBit_Receipt_Nonfiscal(var iSBit: Integer): Integer;
		function get_iSBit_EJ_NearlyFull(var iSBit: Integer): Integer;
		function get_iSBit_Receipt_Fiscal(var iSBit: Integer): Integer;
		function get_iSBit_Near_PaperEnd(var iSBit: Integer): Integer;
		function get_iSBit_Number_SFM_Set(var iSBit: Integer): Integer;
		function get_iSBit_Number_Tax_Set(var iSBit: Integer): Integer;
		function get_iSBit_VAT_Set(var iSBit: Integer): Integer;
		function get_iSBit_Device_Fiscalized(var iSBit: Integer): Integer;
		function get_iSBit_FM_Formated(var iSBit: Integer): Integer;
		function get_iSBit_LessThan_50_Reports(var iSBit: Integer): Integer;
		function get_Count_StatusBytes(var StatusBytesCount: Integer): Integer;
		function get_Language(var LanguageIndex: Integer): Integer;
		function Set_Language(LanguageIndex: Integer): Integer;
		function get_Connected_ToDevice(var ConnectedToDevice: Integer): Integer;
		function get_Connected_ToLAN(var ConnectedToLAN: Integer): Integer;
		function get_LastError_Code(var LastError_Code: Integer): Integer;
		function get_LastError_Message(var LastError_Message: String): Integer;
		function get_ErrorMessageByCode(Value: Integer; var Error_Message: String): Integer;
		function get_CodePage(var CodePage: Integer): Integer;
		function get_TrackingMode(var TrackingMode: Integer): Integer;
		function get_TrackingMode_Path(var TrackingMode_Path: string): Integer;
		function get_TrackingMode_FileName(var TrackingMode_FileName: string): Integer;
		function get_TrackingMode_RowLimit(var TrackingMode_RowLimit: string): Integer;
		function set_TrackingMode_RowLimit(const Value: string): Integer;
		function set_TrackingMode_FileName(const Value: string): Integer;
		function set_TrackingMode_Path(const Value: string): Integer;
		function set_TrackingMode(Value: string): Integer;
		function get_SBit_State(byteIndex, bitIndex: Integer; var Value: Integer): Integer;
		function get_SBit_Description(byteIndex, bitIndex: Integer; var Value: string): Integer;
		function get_SBit_ErrorChecking(byteIndex, bitIndex: Integer; var Value: Integer): Integer;
		function set_SBit_ErrorChecking(byteIndex, bitIndex: Integer; Value: Integer): Integer;
		function get_device_Type(var Device_Type: Integer): Integer;
		function get_device_Number_Serial(var Number_Serial: string): Integer;
		function get_device_Number_FMemory(var Number_FMemory: string): Integer;
		function get_device_Firmware_Revision(var Firmware_Revision: string): Integer;
		function get_device_Firmware_Date(var Firmware_Date: string): Integer;
		function get_device_Firmware_CheckSum(var Firmware_CheckSum: string): Integer;
		function get_device_Model(var Device_Model: Integer): Integer;
		function get_device_Model_Name(var Model_Name: string): Integer;
		function get_device_Group(var Device_Group: Integer): Integer;
		function get_PLURange_StartValue(var PLURange_StartValue: Integer): Integer;
		function Set_PLURange_StartValue(Value: Integer): Integer;
		function get_PLURange_EndValue(var PLURange_EndValue: Integer): Integer;
		function Set_PLURange_EndValue(Value: Integer): Integer;
		function get_DateRange_EndValue(var DateRange_EndValue: string): Integer;
		function get_DateRange_StartValue(var DateRange_StartValue: string): Integer;
		function Set_DateRange_EndValue(const Value: String): Integer;
		function Set_DateRange_StartValue(const Value: String): Integer;
		function cancel_Loop: Integer;
		function get_ComandsList(Index: Integer; var ComandsList: String): Integer;
		function get_CommandInfo(const command_Name: String; var CommandInfo: String): Integer;
		function execute_Command_ByName(const command_Name: String; var DeviceAnswer: string): Integer;
		function get_InputParams_Count(const command_Name: String; var Value: Integer): Integer;
		function get_InputParams_Names(const command_Name: String; var Value: String): Integer;
		function set_InputParam_ByName(const command_Name, param_Name, param_Value: String; var ServerAnswer: String): Integer;
		function get_OutputParams_Count(const command_Name: String; var Value: Integer): Integer;
		function get_OutputParams_Names(const command_Name: String; var Value: String): Integer;
		function get_OutputParam_ByName(const command_Name, param_Name: String; var param_Value: String): Integer;
		function get_CS_Operator_Code(var Value: string): Integer;
		function get_CS_Operator_Password(var Value: String): Integer;
		function get_CS_Till_Number(var Value: string): Integer;
		function get_Storno_Reason_Type(var Value: Integer): Integer;
		function get_Storno_Doc_Number(var Value: string): Integer;
		function get_Storno_Doc_DateTime(var Value: string): Integer;
		function get_Storno_FM_Number(var Value: string): Integer;
		function get_Storno_Doc_UNP(var Value: string): Integer;
		function get_Storno_ByInvoice(var Value: Integer): Integer;
		function get_Storno_InvoiceNumber(var Value: string): Integer;
		function get_Storno_Reason(var Value: string): Integer;
		function get_AllReceipt_Count(var Value: Integer): Integer;
		function get_StornoReceipt_Count(var Value: Integer): Integer;
		function get_FiscalReceipt_Count(var Value: Integer): Integer;
		function get_GlobalCounter(var Value: Integer): Integer;
		function get_itIs_SummerDT(var Value: Integer): Integer;
		function itIs_SummerDTFor(aYear, aMonth, aDay, aHour, aMin, aSec: Integer;var Value: Integer): Integer;

	end;
{$METHODINFO OFF}

implementation

{$R *.dfm}

uses
	System.StrUtils;

function TSM.add_Transaction(var HeaderID: string): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	HeaderID := '';
	tmpOut := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Add_Transaction(tmpOut);
		except
			Result := -1;
		end;
	finally
		HeaderID := tmpOut;
	end;
end;

function TSM.add_TrScriptItem(HeaderID: string; var ScriptID: string): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	ScriptID := '';
	tmpOut := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Add_TrScriptItem(HeaderID, tmpOut);
		except
			Result := -1;
		end;
	finally
		ScriptID := tmpOut;
	end;
end;

function TSM.cancel_Loop: Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.cancel_Loop;
		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.can_OpenFiscalReceipt(var Can: string): Integer;
begin
	Result := -1;
	Can := '0';
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.can_OpenFiscalReceipt then Can := '1';
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.can_OpenInvoiceReceipt(var Can: string): Integer;
begin
	Result := -1;
	Can := '0';
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.can_OpenInvoiceReceipt then Can := '1';
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.can_OpenStornoReceipt(var Can: string): Integer;
begin
	Result := -1;
	Can := '0';
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.can_OpenStornoReceipt then Can := '1';
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.clear_TrScript(HeaderID: string): Integer;
begin
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Clear_TrScript(HeaderID);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

procedure TSM.DataModuleCreate(Sender: TObject);
begin
	fCOMServer_Started := False;
end;

function TSM.delete_OldTransactions: Integer;
begin
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Delete_OldTransactions;
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.delete_TrByHeader(HeaderID: string): Integer;
begin
	// Result := -1;
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Delete_TrByHeader(HeaderID);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.delete_TrByIndex(Index: Integer): Integer;
begin
	// Result := -1;
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Delete_TrByIndex(Index);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.execute_AllTransactions(OrderType: Integer): Integer;
begin
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Execute_AllTransactions(OrderType);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.execute_Command(command_Value: Integer; const inputText: string; var outputText: string): Integer;
var
	tmpOut: WideString;
begin
	outputText := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.execute_Command(command_Value, inputText, tmpOut);
		except
			Result := -1;
		end;
	finally
		outputText := tmpOut;
	end;
end;

function TSM.execute_Command_ByName(const command_Name: String; var DeviceAnswer: string): Integer;
begin
	Result := -1;
	DeviceAnswer := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.execute_Command_ByName(command_Name);
		DeviceAnswer := fd_.last_AnswerList;

	except
		Result := -1;
	end;
end;

function TSM.execute_Transaction(HeaderID: string): Integer;
begin
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Execute_Transaction(HeaderID);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.get_AllReceipt_Count(var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.AllReceipt_Count;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Array_ErrorsID(var ErrorsIDArray: string): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	ErrorsIDArray := '';
	tmpOut := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_get_Array_ErrorsID(tmpOut);
		except
			Result := -1;
		end;
	finally
		ErrorsIDArray := tmpOut;
	end;
end;

function TSM.get_Array_HeadersID(var HeaderIDArray: string): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	HeaderIDArray := '';
	tmpOut := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_get_Array_HeadersID(tmpOut);
		except
			Result := -1;
		end;
	finally
		HeaderIDArray := tmpOut;
	end;
end;

function TSM.get_Array_ScriptsID(HeaderID: string; var ScriptIDArray: string): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	ScriptIDArray := '';
	tmpOut := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_get_Array_ScriptsID(HeaderID, tmpOut);
		except
			Result := -1;
		end;
	finally
		ScriptIDArray := tmpOut;
	end;
end;

function TSM.get_CodePage(var CodePage: Integer): Integer;
begin
	Result := -1;
	CodePage := 1251;
	try
		fd_.Connect;
		fd_.open_Connection;

		CodePage := fd_.CodePage;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_ComandsList(Index: Integer; var ComandsList: String): Integer;
var
	tmpString: string;
	tmpList  : TStringList;
	i        : Integer;
begin
	Result := -1;
	ComandsList := '';
	tmpList := TStringList.Create;
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			tmpList.Text := fd_.get_ComandsList(Index);
			if tmpList.Count = 0 then Exit;
			ComandsList := sLineBreak;
			for i := 0 to tmpList.Count - 1 do
			begin
				tmpString := i.ToString + ':';
				tmpString := tmpString.PadRight(42, ' ') + tmpList.Strings[i] + sLineBreak;

				ComandsList := ComandsList + tmpString;
			end;
			Result := 0;
		except
			ComandsList := '';
		end;
	finally
		if tmpList.Count > 0 then tmpList.Clear;
		tmpList.Free;
	end;
end;

function TSM.get_CommandInfo(const command_Name: String; var CommandInfo: String): Integer;
var
	tmpWString: WideString;
begin
	Result := -1;
	CommandInfo := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.get_CommandInfo(command_Name, tmpWString);
		if Result <> 0 then Exit;
		CommandInfo := tmpWString;
	except
		CommandInfo := '';
	end;
end;

function TSM.get_Connected_ToDevice(var ConnectedToDevice: Integer): Integer;
begin
	Result := -1;
	ConnectedToDevice := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.connected_ToDevice then ConnectedToDevice := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Connected_ToLAN(var ConnectedToLAN: Integer): Integer;
begin
	Result := -1;
	ConnectedToLAN := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.connected_ToLAN then ConnectedToLAN := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Count_StatusBytes(var StatusBytesCount: Integer): Integer;
begin
	Result := -1;
	StatusBytesCount := 6;
	try
		fd_.Connect;
		fd_.open_Connection;

		StatusBytesCount := fd_.count_StatusBytes;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_CS_Operator_Code(var Value: string): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := IntToStr(fd_.Operator_Code);
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_CS_Operator_Password(var Value: String): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.Operator_Password;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_CS_Till_Number(var Value: string): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := IntToStr(fd_.Till_Number);
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_DateRange_EndValue(var DateRange_EndValue: string): Integer;
begin
	Result := -1;
	DateRange_EndValue := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		DateRange_EndValue := fd_.DateRange_EndValue;
		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.get_DateRange_StartValue(var DateRange_StartValue: string): Integer;
begin
	Result := -1;
	DateRange_StartValue := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		DateRange_StartValue := fd_.DateRange_StartValue;
		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.get_device_Firmware_CheckSum(var Firmware_CheckSum: string): Integer;
begin
	Result := -1;
	Firmware_CheckSum := '';
	try
		fd_.Connect;
		fd_.open_Connection;
		Firmware_CheckSum := fd_.device_Firmware_Date;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_device_Firmware_Date(var Firmware_Date: string): Integer;
begin
	Result := -1;
	Firmware_Date := '';
	try
		fd_.Connect;
		fd_.open_Connection;
		Firmware_Date := fd_.device_Firmware_Date;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_device_Firmware_Revision(var Firmware_Revision: string): Integer;
begin
	Result := -1;
	Firmware_Revision := '';
	try
		fd_.Connect;
		fd_.open_Connection;
		Firmware_Revision := fd_.device_Firmware_Revision;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_device_Group(var Device_Group: Integer): Integer;
begin
	Result := -1;
	Device_Group := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		case fd_.Device_Group of
			0: Device_Group := 0; // fd_Group_Unknown = $00000000;
			1: Device_Group := 1; // fd_Group_A = $00000001;
			2: Device_Group := 2; // fd_Group_B = $00000002;
			3: Device_Group := 3; // fd_Group_C = $00000003;
		else Exit;
		end;

		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.get_device_Model(var Device_Model: Integer): Integer;
begin
	Result := -1;
	Device_Model := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		case fd_.Device_Model of
			0: Device_Model := 0;   // mc_Unknown 	= $00000000;
			1: Device_Model := 1;   // mc_DP_05 	= $00000001;
			2: Device_Model := 2;   // mc_DP_15 	= $00000002;
			3: Device_Model := 3;   // mc_DP_25 	= $00000003;
			4: Device_Model := 4;   // mc_DP_35 	= $00000004;
			5: Device_Model := 5;   // mc_DP_150 	= $00000005;
			6: Device_Model := 6;   // mc_WP_50 	= $00000006;
			7: Device_Model := 7;   // mc_FP_650 	= $00000007;
			8: Device_Model := 8;   // mc_FP_800 	= $00000008;
			9: Device_Model := 9;   // mc_FP_2000 	= $00000009;
			10: Device_Model := 10; // mc_SK_21F 	= $0000000A;
			11: Device_Model := 11; // mc_SK_31F 	= $0000000B;
			12: Device_Model := 12; // mc_FMP_10 	= $0000000C;
			13: Device_Model := 13; // mc_FP_550 	= $0000000D;
			14: Device_Model := 14; // mc_FP_700X 	= $0000000E;
			15: Device_Model := 15; // mc_DP_25X 	= $0000000F;
			16: Device_Model := 16; // mc_DP_150X 	= $00000010;
			17: Device_Model := 17; // mc_WP_50X 	= $00000011;
			18: Device_Model := 18; // mc_WP_500X 	= $00000012;
			19: Device_Model := 19; // mc_FMP_55X 	= $00000013;
			20: Device_Model := 20; // mc_FMP_350X = $00000014;
			21: Device_Model := 21; // mc_DP_05C 	= $00000015;
			22: Device_Model := 22; // mc_FP_700 	= $00000016;
		else Exit;
		end;

		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.get_device_Model_Name(var Model_Name: string): Integer;
begin
	Result := -1;
	Model_Name := '';
	try
		fd_.Connect;
		fd_.open_Connection;
		Model_Name := fd_.device_Model_Name;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_device_Number_FMemory(var Number_FMemory: string): Integer;
begin
	Result := -1;
	Number_FMemory := '';
	try
		fd_.Connect;
		fd_.open_Connection;
		Number_FMemory := fd_.device_Number_FMemory;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_device_Number_Serial(var Number_Serial: string): Integer;
begin
	Result := -1;
	Number_Serial := '';
	try
		fd_.Connect;
		fd_.open_Connection;
		Number_Serial := fd_.device_Number_Serial;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_device_Type(var Device_Type: Integer): Integer;
begin
	Result := -1;
	Device_Type := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		case fd_.Device_Type of
			0: Device_Type := 0; // dtc_Unknown = $00000000;
			1: Device_Type := 1; // dtc_ECR = $00000001;
			2: Device_Type := 2; // dtc_FiscalPrinter = $00000002;
		else Exit;
		end;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_ErrorMessageByCode(Value: Integer; var Error_Message: String): Integer;
begin
	Result := -1;
	Error_Message := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Error_Message := fd_.get_ErrorMessageByCode(Value);
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_ErrorsItem_Value(ErrorsID, VariableName: string; var VariableValue: string): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	VariableValue := '';
	tmpOut := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_get_ErrorsItem_Value(ErrorsID, VariableName, tmpOut);
		except
			Result := -1;
		end;
	finally
		VariableValue := tmpOut;
	end;
end;

function TSM.get_eSBit_ClockIsNotSynchronized(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_ClockIsNotSynchronized then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_CommandCodeIsInvalid(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_CommandCodeIsInvalid then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_CommandNotPermitted(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_CommandNotPermitted then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_Cover_IsOpen(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_Cover_IsOpen then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_EJIsFull(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_EJIsFull then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_EndOfPaper(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_EndOfPaper then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_FM_Full(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_FM_Full then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_FM_NotAccess(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_FM_NotAccess then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_GeneralError_Sharp(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_GeneralError_Sharp then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_GeneralError_Star(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_GeneralError_Star then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_Overflow(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_Overflow then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_PrintingMechanism(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_PrintingMechanism then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_eSBit_SyntaxError(var eSBit: Integer): Integer;
begin
	Result := -1;
	eSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.eSBit_SyntaxError then eSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_FiscalReceipt_Count(var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.FiscalReceipt_Count;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_FiscalRecept_TypeFlag(var FR_Invoice: Integer): Integer;
begin
	Result := -1;
	FR_Invoice := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		FR_Invoice := fd_.FR_Invoice;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_GlobalCounter(var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.GlobalCounter;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_HeaderItem_Value(HeaderID, VariableName: string; var VariableValue: string): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	VariableValue := '';
	tmpOut := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_get_HeaderItem_Value(HeaderID, VariableName, tmpOut);
		except
			Result := -1;
		end;
	finally
		VariableValue := tmpOut;
	end;
end;

function TSM.get_InputParams_Count(const command_Name: String; var Value: Integer): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.get_InputParams_Count(command_Name, Value);
	except
		Result := -1;
	end;
end;

function TSM.get_InputParams_Names(const command_Name: String; var Value: String): Integer;
var
	tmpWString: WideString;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.get_InputParams_Names(command_Name, tmpWString);
		if Result <> 0 then Exit
		else Value := tmpWString;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_Device_Fiscalized(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_Device_Fiscalized then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_EJ_NearlyFull(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_EJ_NearlyFull then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_FM_Formated(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_FM_Formated then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_LessThan_50_Reports(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_LessThan_50_Reports then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_Near_PaperEnd(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_Near_PaperEnd then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_No_ClientDisplay(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_No_ClientDisplay then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_Number_SFM_Set(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_Number_SFM_Set then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_Number_Tax_Set(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_Number_Tax_Set then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_Receipt_Fiscal(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_Receipt_Fiscal then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_Receipt_Nonfiscal(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_Receipt_Nonfiscal then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_iSBit_VAT_Set(var iSBit: Integer): Integer;
begin
	Result := -1;
	iSBit := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.iSBit_VAT_Set then iSBit := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_itIs_SummerDT(var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.itIs_SummerDT then Value := 1
		else Value := 0;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Language(var LanguageIndex: Integer): Integer;
begin
	Result := -1;
	LanguageIndex := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		case fd_.language of
			Bulgarian: LanguageIndex := 0;
			English: LanguageIndex := 1;
		end;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_LastErrorItem_ByHeaderID(HeaderID, VariableName: string; var VariableValue: string): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	VariableValue := '';
	tmpOut := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_get_LastErrorItem_ByHeaderID(HeaderID, VariableName, tmpOut);
		except
			Result := -1;
		end;
	finally
		VariableValue := tmpOut;
	end;
end;

function TSM.get_LastError_Code(var LastError_Code: Integer): Integer;
begin
	Result := -1;
	LastError_Code := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		LastError_Code := fd_.LastError_Code;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_LastError_Message(var LastError_Message: String): Integer;
begin
	Result := -1;
	LastError_Message := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		LastError_Message := fd_.LastError_Message;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_OutputParams_Count(const command_Name: String; var Value: Integer): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.get_OutputParams_Count(command_Name, Value);
	except
		Result := -1;
	end;
end;

function TSM.get_OutputParams_Names(const command_Name: String; var Value: String): Integer;
var
	tmpWString: WideString;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.get_OutputParams_Names(command_Name, tmpWString);
		if Result <> 0 then Exit
		else Value := tmpWString;
	except
		Result := -1;
	end;
end;

function TSM.get_OutputParam_ByName(const command_Name, param_Name: String; var param_Value: String): Integer;
var
	tmpWString: WideString;
begin
	Result := -1;
	param_Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.get_OutputParam_ByName(command_Name, param_Name, tmpWString);
		if Result <> 0 then Exit
		else param_Value := tmpWString;
	except
		Result := -1;
	end;
end;

function TSM.get_PLURange_EndValue(var PLURange_EndValue: Integer): Integer;
begin
	Result := -1;
	PLURange_EndValue := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		PLURange_EndValue := fd_.PLURange_EndValue;
		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.get_PLURange_StartValue(var PLURange_StartValue: Integer): Integer;
begin
	Result := -1;
	PLURange_StartValue := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		PLURange_StartValue := fd_.PLURange_StartValue;
		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.get_SBit_Description(byteIndex, bitIndex: Integer; var Value: string): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.get_SBit_Description(Byte(byteIndex), Byte(bitIndex));
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_SBit_ErrorChecking(byteIndex, bitIndex: Integer; var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.get_SBit_ErrorChecking(Byte(byteIndex), Byte(bitIndex)) then Value := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_SBit_State(byteIndex, bitIndex: Integer; var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.get_SBit_State(Byte(byteIndex), Byte(bitIndex)) then Value := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_ScriptItem_Value(HeaderID, ScriptItemID, VariableName: string; var VariableValue: string): Integer;
var
	tmpOut: WideString;
begin
	// Result := -1;
	VariableValue := '';
	tmpOut := '';
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_get_ScriptItem_Value(HeaderID, ScriptItemID, VariableName, tmpOut);
		except
			Result := -1;
		end;
	finally
		VariableValue := tmpOut;
	end;
end;

function TSM.get_StornoReceipt_Count(var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.StReceipt_Count;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Storno_ByInvoice(var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.St_ByInvoice;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Storno_Doc_DateTime(var Value: string): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.St_Doc_DateTime;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Storno_Doc_Number(var Value: string): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.St_Doc_Number.ToString;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Storno_Doc_UNP(var Value: string): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.St_Doc_UNP;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Storno_FM_Number(var Value: string): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.St_FM_Number;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Storno_InvoiceNumber(var Value: string): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.St_InvoiceNumber;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Storno_Reason(var Value: string): Integer;
begin
	Result := -1;
	Value := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.St_Reason;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_Storno_Reason_Type(var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		Value := fd_.St_Reason_Type;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_SystemInfo(var SystemInfo: string): Integer;
var
	tmpString: string;
	tmpList  : TStringList;
	i        : Integer;
begin

	Result := -1;
	SystemInfo := '';
	tmpList := TStringList.Create;
	try
		try
			fd_.Connect;

			tmpList.Text := fd_.get_SystemInfoSearchList;
			if tmpList.Count = 0 then Exit;
			SystemInfo := sLineBreak;
			for i := 0 to tmpList.Count - 1 do
			begin
				tmpString := tmpList.Strings[i] + ':';
				tmpString := tmpString.PadRight(42, ' ') + fd_.get_SystemInfo(tmpList.Strings[i]) + sLineBreak;

				SystemInfo := SystemInfo + tmpString;
			end;
			Result := 0;
		except
			SystemInfo := '';
		end;
	finally
		if tmpList.Count > 0 then tmpList.Clear;
		tmpList.Free;
	end;
end;

function TSM.get_TrackingMode(var TrackingMode: Integer): Integer;
begin
	Result := -1;
	TrackingMode := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.TrackingMode then TrackingMode := 1;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_TrackingMode_FileName(var TrackingMode_FileName: string): Integer;
begin
	Result := -1;
	TrackingMode_FileName := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		TrackingMode_FileName := fd_.TrackingMode_FileName;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_TrackingMode_Path(var TrackingMode_Path: string): Integer;
begin
	Result := -1;
	TrackingMode_Path := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		TrackingMode_Path := fd_.TrackingMode_Path;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.get_TrackingMode_RowLimit(var TrackingMode_RowLimit: string): Integer;
begin
	Result := -1;
	TrackingMode_RowLimit := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		TrackingMode_RowLimit := fd_.TrackingMode_RowLimit.ToString;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.init_FiscalReceiptValues: Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.init_FiscalReceiptValues;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.init_OperatorValues: Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.init_OperatorValues;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.init_StornoValues: Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.init_StornoValues;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.itIs_SummerDTFor(aYear, aMonth, aDay, aHour, aMin, aSec: Integer; var Value: Integer): Integer;
begin
	Result := -1;
	Value := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		if fd_.itIs_SummerDTFor(Word(aYear), Word(aMonth), Word(aDay), Word(aHour), Word(aMin), Word(aSec)) then Value := 1
		else Value := 0;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.open_FiscalReceipt: Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		// FR_Invoice := 0 - normal fiscal receipt
		// FR_Invoice := 1 - fiscal receipt type invoice
		Result := fd_.open_FiscalReceipt;
	except
		Result := -1;
	end;
end;

function TSM.open_InvoiceReceipt: Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		// FR_Invoice := 0 - normal fiscal receipt
		// FR_Invoice := 1 - fiscal receipt type invoice
		Result := fd_.open_InvoiceReceipt;
	except
		Result := -1;
	end;
end;

function TSM.open_StornoReceipt: Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		// St_ByInvoice := 0 - Сторниране по фискален бон
		// St_ByInvoice := 1 - Сторниране по фактура
		Result := fd_.open_StornoReceipt;
	except
		Result := -1;
	end;
end;

function TSM.save_LastErrors(FileName: string): Integer;
begin
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Save_LastErrors(FileName);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.Set_DateRange_EndValue(const Value: String): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.DateRange_EndValue := Value;
		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.Set_DateRange_StartValue(const Value: String): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.DateRange_EndValue := Value;
		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.set_FiscalReceipt_TypeFlag(FR_Invoice: Integer): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;
		// 0 - normal fiscal receipt
		// 1 - fiscal receipt type invoice
		fd_.FR_Invoice := FR_Invoice;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_InputParam_ByName(const command_Name, param_Name, param_Value: String; var ServerAnswer: String): Integer;
begin
	Result := -1;
	DeviceAnswer := '';
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.set_InputParam_ByName(command_Name, param_Name, param_Value);
		ServerAnswer := Result.ToString;

	except
		Result := -1;
	end;
end;

function TSM.Set_Language(LanguageIndex: Integer): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;
		case LanguageIndex of
			0:
				begin
					fd_.language := Bulgarian;
					Result := 0;
				end;
			1:
				begin
					fd_.language := English;
					Result := 0;
				end;
		end;
	except
		Result := -1;
	end;
end;

function TSM.set_Operator_Code(Operator_Code: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.Operator_Code := StrToInt(Operator_Code);
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Operator_Password(Operator_Password: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.Operator_Password := Operator_Password;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.Set_PLURange_EndValue(Value: Integer): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.PLURange_EndValue := Value;
		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.Set_PLURange_StartValue(Value: Integer): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.PLURange_StartValue := Value;
		Result := 0;

	except
		Result := -1;
	end;
end;

function TSM.set_SBit_ErrorChecking(byteIndex, bitIndex, Value: Integer): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		if Value = 0 then fd_.set_SBit_ErrorChecking(Byte(byteIndex), Byte(bitIndex), False)
		else fd_.set_SBit_ErrorChecking(Byte(byteIndex), Byte(bitIndex), True);

		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Storno_ByInvoice(St_ByInvoice: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		// 0 = Сторниране по фискален бон
		// 1 = Сторниране по фактура
		fd_.St_ByInvoice := StrToInt(St_ByInvoice);
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Storno_DocDateTime(St_DateTime: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.St_Doc_DateTime := St_DateTime;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Storno_DocNumber(St_Doc_Number: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.St_Doc_Number := StrToInt(St_Doc_Number);
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Storno_DocUNP(St_Doc_UNP: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.St_Doc_UNP := St_Doc_UNP;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Storno_FMNumber(St_FMNumber: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.St_FM_Number := St_FMNumber;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Storno_InvoiceNumber(St_InvoiceNumber: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.St_InvoiceNumber := St_InvoiceNumber;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Storno_ReasonText(St_ReasonText: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.St_Reason := St_ReasonText;
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Storno_Reason_Type(St_Reason_Type: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;
		// 0 - Операторска грешка
		// 1 - Връщане / Замяна / Рекламация
		// 2 - Намаление на данъчната основа
		fd_.St_Reason_Type := StrToInt(St_Reason_Type);
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_Till_Number(TillNumber: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.Till_Number := StrToInt(TillNumber);
		Result := 0;
	except
		Result := -1;
	end;
end;

function TSM.set_TrackingMode(Value: string): Integer;
var
	tmpInt: Integer;
begin
	Result := -1;
	tmpInt := 0;
	try
		fd_.Connect;
		fd_.open_Connection;

		TryStrToInt(Value, tmpInt);
		if tmpInt = 0 then Result := fd_.set_TrackingMode(False)
		else Result := fd_.set_TrackingMode(True);

	except
		Result := -1;
	end;
end;

function TSM.set_TrackingMode_FileName(const Value: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.set_TrackingMode_FileName(Value);
	except
		Result := -1;
	end;
end;

function TSM.set_TrackingMode_Path(const Value: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		Result := fd_.set_TrackingMode_Path(Value);
	except
		Result := -1;
	end;
end;

function TSM.set_TrackingMode_RowLimit(const Value: string): Integer;
var
	tmpInt: Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		if not TryStrToInt(Value, tmpInt) then Result := fd_.set_TrackingMode_RowLimit(500)
		else Result := fd_.set_TrackingMode_RowLimit(tmpInt);

	except
		Result := -1;
	end;
end;

function TSM.set_TrScriptItem(HeaderID, ScriptItemID, VariableName, VariableValue: string): Integer;
begin
	try
		try
			fd_.Connect;
			fd_.open_Connection;

			Result := fd_.tq_Set_TrScriptItem(HeaderID, ScriptItemID, VariableName, VariableValue);
		except
			Result := -1;
		end;
	finally
		//
	end;
end;

function TSM.set_UNP(UNP: string): Integer;
begin
	Result := -1;
	try
		fd_.Connect;
		fd_.open_Connection;

		fd_.FR_UNP := UNP;
		Result := 0;
	except
		Result := -1;
	end;
end;

end.
