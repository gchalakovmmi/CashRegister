unit Model.Generator.GIDs;

interface

type
  TGeneratorGIDs = class

  {$REGION 'Private Methods'}
  private

  {$ENDREGION}

  {$REGION 'Private Fields'}
  private
    class var
      FGlobalGID: Integer;
  {$ENDREGION}

  {$REGION 'Private Properties Getters/Setters'}
  private
    class function GetGlobalGID: Integer; static;
    class procedure SetGlobalGID(const Value: Integer); static;
  {$ENDREGION}

  {$REGION 'Private Properties'}
  private
    class property GlobalGID: Integer read GetGlobalGID write SetGlobalGID;
  {$ENDREGION}

  {$REGION 'Interfaced Properties Getters/Setters'}
  public

  {$ENDREGION}

  {$REGION 'Interfaced Properties'}
  public
    class function NewGIDByName(const AName: String; const AInitValue: Integer = 0): Integer;
    class function NextGIDByName(const AName: String; const AInitValue: Integer = 0): Integer;
    class function CommitGIDByName(const AName: String; const AInitValue: Integer = 0): Integer;
  {$ENDREGION}

  {$REGION 'Interfaced Methods'}
  public

  {$ENDREGION}

  {$REGION 'Constructors/Destructors'}
  public
    class constructor Create;
  {$ENDREGION}
  end;

implementation

{ TGeneratorGIDs }

uses
  System.SysUtils,
  Model.AppSettings;

{$REGION 'Private Methods'}

{$ENDREGION}

{$REGION 'Private Properties Getters/Setters'}

class function TGeneratorGIDs.GetGlobalGID: Integer;
begin
  Result := FGlobalGID;
end;

class procedure TGeneratorGIDs.SetGlobalGID(const Value: Integer);
begin
  FGlobalGID := Value;
end;

{$ENDREGION}

{$REGION 'Interfaced Properties Getters/Setters'}

{$ENDREGION}

{$REGION 'Interfaced Methods'}

class function TGeneratorGIDs.NewGIDByName(const AName: String; const AInitValue: Integer = 0): Integer;
var
  LIDString: String;
  LID: Integer;
begin
  Result := AInitValue;
  LIDString := TAppSettings.GetSetting('IDs', AName);
  if TryStrToInt(LIDString, LID) then begin
    Result := GlobalGID * 256*256*256 + LID;
  end;
  TAppSettings.SetSetting('IDs', AName, IntToStr(LID + 1));
end;

class function TGeneratorGIDs.NextGIDByName(const AName: String; const AInitValue: Integer = 0): Integer;
var
  LIDString: String;
  LID: Integer;
begin
  Result := AInitValue;
  LIDString := TAppSettings.GetSetting('IDs', AName);
  if TryStrToInt(LIDString, LID) then begin
    Result := GlobalGID * 256*256*256 + LID;
  end;
end;

class function TGeneratorGIDs.CommitGIDByName(const AName: String; const AInitValue: Integer = 0): Integer;
var
  LIDString: String;
  LID: Integer;
begin
  Result := AInitValue;
  LIDString := TAppSettings.GetSetting('IDs', AName);
  if TryStrToInt(LIDString, LID) then begin
    Result := GlobalGID * 256*256*256 + LID;
  end;
  TAppSettings.SetSetting('IDs', AName, IntToStr(LID + 1));
end;

{$ENDREGION}

{$REGION 'Constructors/Destructors'}

class constructor TGeneratorGIDs.Create;
var
  LGlobalGID: String;
begin
  Randomize;
  LGlobalGID := TAppSettings.GetSetting('IDs', 'GlobalGID', Random(127).ToString);
  TAppSettings.SetSetting('IDs', 'GlobalGID', LGlobalGID);
  GlobalGID := LGlobalGID.ToInteger;
end;

{$ENDREGION}

end.

