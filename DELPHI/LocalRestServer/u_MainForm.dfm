object fm_MainForm: Tfm_MainForm
  Left = 271
  Top = 114
  Caption = 'Rest Server'
  ClientHeight = 360
  ClientWidth = 588
  Color = clBtnFace
  Constraints.MinHeight = 145
  Constraints.MinWidth = 282
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    000000000000330077000000000000000000000000003B077070000000000000
    000000000000BB807007000000000000000000000300B0007000700000000000
    00000000330070070700070000000000000000003B0700700070007000000000
    00000000BB800700000700070000000000000300B00070000000700070000000
    0000330070070000000007000700000000003B07007000000000007007000000
    0000BB800700000000000007070000000300B000700000000070000077000000
    330070070000000007000000803300003B070070000000000000000800330000
    BB8007000000000000000080BBBB0300B000700000000070000008000BB03300
    70070000000707000000803300003B070070000000707000000800330000BB80
    07000000070700000080BBBB0000B000700000000070000008000BB000007007
    0000000007000000803300000000707000007770000000080033000000008700
    0007070700000080BBBB00000000080000077777000008000BB0000000000080
    0007070700008033000000000000000800007770000800330000000000000000
    800000000080BBBB00000000000000000800000008000BB00000000000000000
    0080000080330000000000000000000000080008003300000000000000000000
    00008080BBBB00000000000000000000000008000BB00000000000000000FFFF
    33FFFFFF21FFFFFF00FFFFFB007FFFF3003FFFF2001FFFF0000FFFB00007FF30
    0003FF200003FF000003FB000003F3000000F2000000F0000010B00000393000
    000F2000000F0000010F0000039F000000FF000000FF000010FF800039FFC000
    0FFFE0000FFFF0010FFFF8039FFFFC00FFFFFE00FFFFFF10FFFFFFB9FFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Btns: TPanel
    Left = 0
    Top = 319
    Width = 588
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      588
      41)
    object btn_Start: TButton
      Left = 8
      Top = 8
      Width = 123
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = btn_StartClick
    end
    object btn_Stop: TButton
      Left = 266
      Top = 8
      Width = 123
      Height = 25
      Caption = 'Stop'
      TabOrder = 2
      OnClick = btn_StopClick
    end
    object ButtonOpenBrowser: TButton
      Left = 453
      Top = 8
      Width = 123
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Open Browser'
      TabOrder = 3
      Visible = False
      OnClick = ButtonOpenBrowserClick
    end
    object btn_Minimize: TButton
      Left = 137
      Top = 8
      Width = 123
      Height = 25
      Caption = 'Minimize'
      Enabled = False
      TabOrder = 1
      OnClick = btn_MinimizeClick
    end
  end
  object pnl_All: TPanel
    Left = 0
    Top = 0
    Width = 588
    Height = 319
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'pnl_All'
    ShowCaption = False
    TabOrder = 0
    object lb_Language_1: TLabel
      Left = 349
      Top = 17
      Width = 80
      Height = 13
      Caption = 'Driver language:'
    end
    object lb_Firmware_CodePage_01: TLabel
      Left = 349
      Top = 227
      Width = 56
      Height = 13
      Caption = 'Code page:'
    end
    object lb_Firmware_CodePage_02: TLabel
      Left = 465
      Top = 227
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_Firmware_CheckSum_01: TLabel
      Left = 349
      Top = 206
      Width = 97
      Height = 13
      Caption = 'Firmware checksum:'
    end
    object lb_Firmware_CheckSum_02: TLabel
      Left = 465
      Top = 206
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_Firmware_Date_01: TLabel
      Left = 349
      Top = 185
      Width = 73
      Height = 13
      Caption = 'Firmware date:'
    end
    object lb_Firmware_Date_02: TLabel
      Left = 465
      Top = 185
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_Firmware_Revision_01: TLabel
      Left = 349
      Top = 164
      Width = 88
      Height = 13
      Caption = 'Firmware revision:'
    end
    object lb_Firmware_Revision_02: TLabel
      Left = 465
      Top = 164
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_Device_Type_01: TLabel
      Left = 349
      Top = 80
      Width = 61
      Height = 13
      Caption = 'Device type:'
    end
    object lb_Device_Type_02: TLabel
      Left = 465
      Top = 78
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_Language_2: TLabel
      Left = 465
      Top = 17
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_DeviceConnected_1: TLabel
      Left = 349
      Top = 38
      Width = 89
      Height = 13
      Caption = 'Device connected:'
    end
    object lb_DeviceConnected_2: TLabel
      Left = 465
      Top = 38
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_LANConnected_1: TLabel
      Left = 349
      Top = 59
      Width = 76
      Height = 13
      Caption = 'LAN connected:'
    end
    object lb_LANConnected_2: TLabel
      Left = 465
      Top = 59
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_ModelName_1: TLabel
      Left = 349
      Top = 101
      Width = 61
      Height = 13
      Caption = 'Model name:'
    end
    object lb_ModelName_2: TLabel
      Left = 465
      Top = 101
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_SerialNumber_1: TLabel
      Left = 349
      Top = 122
      Width = 69
      Height = 13
      Caption = 'Serial number:'
    end
    object lb_SerialNumber_2: TLabel
      Left = 465
      Top = 122
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_FM_Number_01: TLabel
      Left = 349
      Top = 143
      Width = 57
      Height = 13
      Caption = 'FM number:'
    end
    object lb_FM_Number_02: TLabel
      Left = 465
      Top = 143
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_PackagedMessageType_01: TLabel
      Left = 349
      Top = 248
      Width = 95
      Height = 13
      Caption = 'Packaged message:'
    end
    object lb_PackagedMessageType_02: TLabel
      Left = 465
      Top = 248
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_StatusBytesCount_01: TLabel
      Left = 349
      Top = 269
      Width = 95
      Height = 13
      Caption = 'Status bytes count:'
    end
    object lb_StatusBytesCount_02: TLabel
      Left = 465
      Top = 269
      Width = 15
      Height = 15
      Caption = '.....'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_WebServerPort: TLabel
      Left = 56
      Top = 34
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Server port:'
    end
    object grbx_Device_TransportProtocol: TGroupBox
      Left = 29
      Top = 76
      Width = 302
      Height = 185
      TabOrder = 1
      object lb_COMPort: TLabel
        Left = 27
        Top = 59
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'COM Port:'
      end
      object lb_BaudRate: TLabel
        Left = 27
        Top = 90
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Baud rate:'
      end
      object lb_LANPort: TLabel
        Left = 27
        Top = 148
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Port:'
      end
      object lb_IPAddress: TLabel
        Left = 27
        Top = 119
        Width = 99
        Height = 13
        Alignment = taRightJustify
        Caption = 'IP Address (Device):'
      end
      object tsw_TransportType: TToggleSwitch
        Left = 154
        Top = 30
        Width = 91
        Height = 20
        FrameColor = 12615680
        StateCaptions.CaptionOn = 'LAN'
        StateCaptions.CaptionOff = 'RS-232'
        TabOrder = 0
        ThumbColor = 16744448
        OnClick = tsw_TransportTypeClick
      end
      object ed_COMPort: TEdit
        Left = 154
        Top = 56
        Width = 127
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 1
      end
      object ed_BaudRate: TEdit
        Left = 154
        Top = 87
        Width = 127
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 2
      end
      object ed_LANPort: TEdit
        Left = 154
        Top = 145
        Width = 127
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 4
      end
      object ed_IPAddress: TEdit
        Left = 154
        Top = 116
        Width = 127
        Height = 21
        Alignment = taRightJustify
        TabOrder = 3
      end
    end
    object ed_WebServerPort: TEdit
      Left = 183
      Top = 31
      Width = 91
      Height = 21
      TabOrder = 0
      Text = '8080'
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 152
    Top = 16
  end
  object TrayIcon1: TTrayIcon
    Hint = 'Datecs - rest server'
    BalloonHint = 'The Datecs server is here'
    BalloonTitle = 'Datecs - rest server'
    BalloonTimeout = 1000
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      000000000000330077000000000000000000000000003B077070000000000000
      000000000000BB807007000000000000000000000300B0007000700000000000
      00000000330070070700070000000000000000003B0700700070007000000000
      00000000BB800700000700070000000000000300B00070000000700070000000
      0000330070070000000007000700000000003B07007000000000007007000000
      0000BB800700000000000007070000000300B000700000000070000077000000
      330070070000000007000000803300003B070070000000000000000800330000
      BB8007000000000000000080BBBB0300B000700000000070000008000BB03300
      70070000000707000000803300003B070070000000707000000800330000BB80
      07000000070700000080BBBB0000B000700000000070000008000BB000007007
      0000000007000000803300000000707000007770000000080033000000008700
      0007070700000080BBBB00000000080000077777000008000BB0000000000080
      0007070700008033000000000000000800007770000800330000000000000000
      800000000080BBBB00000000000000000800000008000BB00000000000000000
      0080000080330000000000000000000000080008003300000000000000000000
      00008080BBBB00000000000000000000000008000BB00000000000000000FFFF
      33FFFFFF21FFFFFF00FFFFFB007FFFF3003FFFF2001FFFF0000FFFB00007FF30
      0003FF200003FF000003FB000003F3000000F2000000F0000010B00000393000
      000F2000000F0000010F0000039F000000FF000000FF000010FF800039FFC000
      0FFFE0000FFFF0010FFFF8039FFFFC00FFFFFE00FFFFFF10FFFFFFB9FFFF}
    PopupMenu = PopupMenu1
    Left = 64
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 206
    Top = 15
    object Open1: TMenuItem
      Caption = 'Show server form'
      ImageIndex = 0
      OnClick = Open1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ImageIndex = 1
      OnClick = Exit1Click
    end
  end
  object dude: TCFD_BGR
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 12
    Top = 46
  end
end
