unit Model.Main;

interface

uses
  Interfaces.Model.Main;

  function CreateModelMain: IModelMain;

implementation

uses
  System.SysUtils,
  Winapi.Windows,
  Globals;

type
  TModelMain = class(TInterfacedObject, IModelMain)

  {$REGION 'Private Methods'}
  private

  {$ENDREGION}


  {$REGION 'Private Fields'}
  private
    FAppVersion: String;
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
    function GetAppVersion: string;
    function GetStoreName: String;
    function GetWorkstationName: String;
    function GetUserName: String;
  {$ENDREGION}


  {$REGION 'Constructors/Destructors'}
  public

  {$ENDREGION}
  end;

function CreateModelMain: IModelMain;
begin
  Result := TModelMain.Create;
end;

{ TModelMain }

{$REGION 'Private Methods'}

{$ENDREGION}


{$REGION 'Private Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}


{$REGION 'Interfaced Methods'}

function TModelMain.GetAppVersion: string;
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

    FAppVersion := Format('%d.%d.%d.%d',
      [LongRec(FixedPtr.dwFileVersionMS).Hi,  //major
       LongRec(FixedPtr.dwFileVersionMS).Lo,  //minor
       LongRec(FixedPtr.dwFileVersionLS).Hi,  //release
       LongRec(FixedPtr.dwFileVersionLS).Lo]) //build
  end;

  Result := FAppVersion;
end;

function TModelMain.GetStoreName: String;
begin
  Result := G.StoreName;
end;

function TModelMain.GetWorkstationName: String;
begin
  Result := G.WorkstationName;
end;

function TModelMain.GetUserName: String;
begin
  Result := G.UserName;
end;

{$ENDREGION}


{$REGION 'Constructors/Destructors'}

{$ENDREGION}

end.
