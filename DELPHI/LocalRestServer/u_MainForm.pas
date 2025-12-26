unit u_MainForm;

interface

uses
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.AppEvnts,
	Vcl.StdCtrls,
	IdHTTPWebBrokerBridge,
	Web.HTTPApp,
	Vcl.OleServer,
	Vcl.ExtCtrls,
	Vcl.Menus,
	Vcl.WinXCtrls,
	FP3530_TLB;

const
	caption_None = '.....';

type
	Tfm_MainForm = class(TForm)
		ApplicationEvents1: TApplicationEvents;
		TrayIcon1: TTrayIcon;
		PopupMenu1: TPopupMenu;
		Open1: TMenuItem;
		N1: TMenuItem;
		Exit1: TMenuItem;
		dude: TCFD_BGR;
		pnl_Btns: TPanel;
		btn_Start: TButton;
		btn_Stop: TButton;
		ButtonOpenBrowser: TButton;
		btn_Minimize: TButton;
		pnl_All: TPanel;
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
		lb_PackagedMessageType_01: TLabel;
		lb_PackagedMessageType_02: TLabel;
		lb_StatusBytesCount_01: TLabel;
		lb_StatusBytesCount_02: TLabel;
		grbx_Device_TransportProtocol: TGroupBox;
		lb_COMPort: TLabel;
		lb_BaudRate: TLabel;
		lb_LANPort: TLabel;
		lb_IPAddress: TLabel;
		tsw_TransportType: TToggleSwitch;
		ed_COMPort: TEdit;
		ed_BaudRate: TEdit;
		ed_LANPort: TEdit;
		ed_IPAddress: TEdit;
    lb_WebServerPort: TLabel;
    ed_WebServerPort: TEdit;
		procedure FormCreate(Sender: TObject);
		procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
		procedure btn_StartClick(Sender: TObject);
		procedure btn_StopClick(Sender: TObject);
		procedure ButtonOpenBrowserClick(Sender: TObject);
		procedure btn_MinimizeClick(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure Exit1Click(Sender: TObject);
		procedure Open1Click(Sender: TObject);
		procedure tsw_TransportTypeClick(Sender: TObject);
	private
		FServer           : TIdHTTPWebBrokerBridge;
		fTransportProtocol: TTransportProtocol;
		fComPort          : Integer;
		fBaudRate         : Integer;
		fLastError_Code   : Integer;
		fErrorCode        : WideString;
		fLastError_Message: WideString;
		//
		procedure StartServer;
		function change_Behavior_OnStart: Boolean;
		function set_TransportProtocol: Integer;
		procedure set_FormatSettings;
		procedure init_LabelCaptions;
		procedure show_DeviceValues;
          procedure set_VCLTo(toValue: Boolean);
	public
		error_Code: Integer;
	end;

var
	fm_MainForm: Tfm_MainForm;

implementation

{$R *.dfm}

uses
	Winapi.Windows,
	Winapi.ShellApi,
	Datasnap.DSSession;

procedure TerminateThreads;
begin
	if TDSSessionManager.Instance <> nil then TDSSessionManager.Instance.TerminateAllSessions;
end;

procedure Tfm_MainForm.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
	btn_Start.Enabled := not FServer.Active;
	btn_Stop.Enabled := FServer.Active;
	ed_WebServerPort.Enabled := not FServer.Active;
	if not FServer.Active then btn_Minimize.Enabled := False;
end;

procedure Tfm_MainForm.ButtonOpenBrowserClick(Sender: TObject);
var
	LURL: string;
begin
	StartServer;
	LURL := Format('http://localhost:%s', [ed_WebServerPort.Text]);
	ShellExecute(0, nil, PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
end;

function Tfm_MainForm.change_Behavior_OnStart: Boolean;
var
	RegisterActiveObject             : Boolean; //
	Save_Settings_AfterOpenConnection: Boolean; //
	Active_OnAfterOpenConnection     : Boolean; //
	Active_OnAfterCloseConnection    : Boolean; //
	Active_OnAfterSettingsChange     : Boolean; //
begin
	Result := False;
	try
		try
			RegisterActiveObject := True;
			Save_Settings_AfterOpenConnection := dude.save_SettingsAfterOpenConnection;
			Active_OnAfterOpenConnection := dude.Active_OnAfterOpenConnection;
			Active_OnAfterCloseConnection := dude.Active_OnAfterCloseConnection;
			Active_OnAfterSettingsChange := dude.Active_OnAfterSettingsChange;

			Result := dude.set_BehaviorOnOpenClose( //
			  RegisterActiveObject,                 //
			  Save_Settings_AfterOpenConnection,    //
			  Active_OnAfterOpenConnection,         //
			  Active_OnAfterCloseConnection,        //
			  Active_OnAfterSettingsChange          //
			  ) = 0;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		dude.Disconnect;
		if Result then
		begin
			dude.Connect;
			Result := dude.register_ActiveObject_OnStart;
		end;
	end;
end;

procedure Tfm_MainForm.Exit1Click(Sender: TObject);
begin
	try
		TerminateThreads;
		FServer.Active := False;
		FServer.Bindings.Clear;
		if dude.connected_ToDevice then dude.Disconnect;
	finally
		Application.ProcessMessages;
		Application.Terminate;
	end;
end;

procedure Tfm_MainForm.btn_MinimizeClick(Sender: TObject);
begin
	btn_Minimize.Enabled := False;
	try
		TrayIcon1.ShowBalloonHint;
	finally
		btn_Minimize.Enabled := True;
		Close;
	end;

end;

procedure Tfm_MainForm.btn_StartClick(Sender: TObject);
begin
	btn_Start.Enabled := False;
	btn_Stop.Enabled := False;
	btn_Minimize.Enabled := False;
	try
		try
			dude.Connect;

			if not dude.register_ActiveObject_OnStart then
				if not change_Behavior_OnStart then Exit;

			case fTransportProtocol of
				ctc_RS232:
					begin
						if dude.set_TransportType(ctc_RS232) <> 0 then Exit;
						if dude.set_RS232(StrToInt(ed_COMPort.Text), StrToInt(ed_BaudRate.Text)) <> 0 then Exit;
					end;
				ctc_TCPIP:
					begin
						if dude.set_TransportType(ctc_TCPIP) <> 0 then Exit;
						if dude.set_TCPIP(ed_IPAddress.Text, StrToInt(ed_LANPort.Text)) <> 0 then Exit;
					end;
			end;

			error_Code := dude.open_Connection;
			if error_Code <> 0 then Exit;

			sleep(1000); // register_ActiveObject_OnStart is a little bit slow operation sometimes
			StartServer;
		except
			//
		end;
	finally
		if not dude.connected_ToDevice then
		begin
			dude.Disconnect;
			init_LabelCaptions;
			btn_Start.Enabled := True;
               set_VCLTo(True);
		end
		else
		begin
			show_DeviceValues;
			btn_Minimize.Enabled := True;
               set_VCLTo(False);
		end;
	end;
end;

procedure Tfm_MainForm.btn_StopClick(Sender: TObject);
begin
	try
		TerminateThreads;
		FServer.Active := False;
		FServer.Bindings.Clear;
	finally
		dude.CLOSE_CONNECTION;
		dude.Disconnect;
		init_LabelCaptions;
          set_VCLTo(True);
	end;
end;

procedure Tfm_MainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if FServer.Active then
		try
			Action := caNone;
			TrayIcon1.Visible := True;
			TrayIcon1.ShowBalloonHint;
		finally
			fm_MainForm.Hide;
			btn_Minimize.Enabled := True;
		end;
end;

procedure Tfm_MainForm.FormCreate(Sender: TObject);

	procedure get_SettingsFromServer;
	begin
		try
			try
				dude.Connect;

				ed_COMPort.Text := dude.rs232_ComPort.ToString;
				ed_BaudRate.Text := dude.rs232_BaudRate.ToString;
				ed_LANPort.Text := dude.tcpip_Port.ToString;
				ed_IPAddress.Text := dude.tcpip_Address;

				ed_LANPort.Enabled := (tsw_TransportType.State <> tssOff);   //
				ed_IPAddress.Enabled := (tsw_TransportType.State <> tssOff); //
				ed_COMPort.Enabled := (tsw_TransportType.State = tssOff);    //
				ed_BaudRate.Enabled := (tsw_TransportType.State = tssOff);   //

			except
				On E: Exception do ShowMessage(E.Message);
			end;
		finally
			dude.Disconnect;
		end;
	end;

begin
	FServer := TIdHTTPWebBrokerBridge.Create(Self);

	fTransportProtocol := ctc_RS232;
	fComPort := 1;
	fLastError_Code := 0;
	fLastError_Message := '';

	set_FormatSettings;
	get_SettingsFromServer;
end;

procedure Tfm_MainForm.init_LabelCaptions;
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

procedure Tfm_MainForm.Open1Click(Sender: TObject);
begin
	fm_MainForm.Show;
	ShowWindow(Application.Handle, SW_SHOWNORMAL);
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

function Tfm_MainForm.set_TransportProtocol: Integer;
var
	lanPort: Word;
begin
	Result := -1;
	try
		try
			case fTransportProtocol of
				ctc_RS232:
					begin
						Result := dude.set_TransportType(ctc_RS232);
						if Result <> 0 then Exit;

						Result := dude.set_RS232(StrToInt(ed_COMPort.Text), StrToInt(ed_BaudRate.Text));
						if Result <> 0 then Exit;
					end;
				ctc_TCPIP:
					begin
						Result := dude.set_TransportType(ctc_TCPIP);
						// Result := dude.set_TransportType(2);
						if Result <> 0 then Exit;

						lanPort := StrToInt(ed_LANPort.Text);
						Result := dude.set_TCPIP(ed_IPAddress.Text, lanPort);
						if Result <> 0 then Exit;
					end;
			end;
			Result := 0;
		except
			On E: Exception do ShowMessage(E.Message);
		end;
	finally
		//
	end;
end;

procedure Tfm_MainForm.set_VCLTo(toValue: Boolean);
begin
	ed_WebServerPort.Enabled:=toValue;
     lb_WebServerPort.Enabled:=toValue;
     tsw_TransportType.Enabled:=toValue;
     ed_COMPort.Enabled:=toValue;
     lb_COMPort.Enabled:=toValue;
     ed_BaudRate.Enabled:=toValue;
     lb_BaudRate.Enabled:=toValue;
     ed_IPAddress.Enabled:=toValue;
     lb_IPAddress.Enabled:=toValue;
     ed_LANPort.Enabled:=toValue;
     lb_LANPort.Enabled:=toValue;

     Self.Update;
end;

procedure Tfm_MainForm.show_DeviceValues;
begin
	lb_ModelName_2.Caption := dude.device_Model_Name;
	lb_SerialNumber_2.Caption := dude.device_Number_Serial;
	lb_FM_Number_02.Caption := dude.device_Number_FMemory;
	lb_Firmware_Revision_02.Caption := dude.device_Firmware_Revision;
	lb_Firmware_Date_02.Caption := dude.device_Firmware_Date;
	lb_Firmware_CheckSum_02.Caption := dude.device_Firmware_CheckSum;
	lb_Firmware_CodePage_02.Caption := dude.codePage.ToString;
	case dude.type_PackagedMessage of
		pmt_Unknown: lb_PackagedMessageType_02.Caption := caption_None;
		pmt_01: lb_PackagedMessageType_02.Caption := '01';
		pmt_02: lb_PackagedMessageType_02.Caption := '02';
	end;
	lb_StatusBytesCount_02.Caption := dude.count_StatusBytes.ToString;
	lb_DeviceConnected_2.Caption := 'Connected';
	case dude.device_Type of
		dtc_FiscalPrinter: lb_Device_Type_02.Caption := 'Fiscal printer';
		dtc_ECR: lb_Device_Type_02.Caption := 'Cash register';
	end;
	if dude.connected_ToLAN then lb_LANConnected_2.Caption := 'Available'
	else lb_LANConnected_2.Caption := 'Not available';

	case dude.language of
		FP3530_TLB.English: lb_Language_2.Caption := 'English';
		FP3530_TLB.Bulgarian: lb_Language_2.Caption := 'Bulgarian';
	end;
end;

procedure Tfm_MainForm.StartServer;
begin
	if not FServer.Active then
	begin
		FServer.Bindings.Clear;
		FServer.DefaultPort := StrToInt(ed_WebServerPort.Text);
		FServer.Active := True;
	end;
end;

procedure Tfm_MainForm.tsw_TransportTypeClick(Sender: TObject);
begin
	try
		case tsw_TransportType.State of
			tssOff:
				begin
					fTransportProtocol := ctc_RS232;

					ed_COMPort.Enabled := True;
					ed_BaudRate.Enabled := True;
					lb_COMPort.Enabled := True;
					lb_BaudRate.Enabled := True;

					ed_LANPort.Enabled := False;
					ed_IPAddress.Enabled := False;
					lb_LANPort.Enabled := False;
					lb_IPAddress.Enabled := False;
				end;
			tssOn:
				begin
					fTransportProtocol := ctc_TCPIP;

					ed_COMPort.Enabled := False;
					ed_BaudRate.Enabled := False;
					lb_COMPort.Enabled := False;
					lb_BaudRate.Enabled := False;

					ed_LANPort.Enabled := True;
					ed_IPAddress.Enabled := True;
					lb_LANPort.Enabled := True;
					lb_IPAddress.Enabled := True;
				end;
		end;
	finally
		if ed_COMPort.Visible then
			if ed_COMPort.Enabled then ed_COMPort.SetFocus;
		if ed_IPAddress.Visible then
			if ed_IPAddress.Enabled then ed_IPAddress.SetFocus;
	end;
end;

end.
