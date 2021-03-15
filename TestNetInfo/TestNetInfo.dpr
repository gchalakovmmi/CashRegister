program TestNetInfo;
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Const
  NERR_Success = 0;

Type
  WKSTA_INFO_100 = Record
    wki100_platform_id: DWORD;
    wki100_computername: LPWSTR;
    wki100_langroup: LPWSTR;
    wki100_ver_major: DWORD;
    wki100_ver_minor: DWORD;
  End;

  LPWKSTA_INFO_100 = ^WKSTA_INFO_100;
Function NetWkstaGetInfo(ServerName: LPWSTR; Level: DWORD; BufPtr: Pointer)
  : Longint; Stdcall; External 'netapi32.dll' Name 'NetWkstaGetInfo';

Var
  PBuf: LPWKSTA_INFO_100;
  Result: Longint;

begin
  Result := NetWkstaGetInfo(Nil, 100, @PBuf);
  If Result = NERR_Success Then
  Begin
    WriteLn('Platform ID   = ' + IntToStr(PBuf^.wki100_platform_id), #13#10,
      'Computer name = ' + String(PBuf^.wki100_computername), #13#10,
      'Domain        = ' + String(PBuf^.wki100_langroup), #13#10,
      'Version       = ' + IntToStr(PBuf^.wki100_ver_major) + '.' +
      IntToStr(PBuf^.wki100_ver_minor));
  End
  Else
    WriteLn('Error: ' + IntToStr(Result));
  ReadLn;

end.
