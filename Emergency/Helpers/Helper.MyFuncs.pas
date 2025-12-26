unit Helper.MyFuncs;

interface

  function IsDigit(S: String): Boolean;
  function TrimZero(S: String): String;
  function Equal(S1, S2 : String) : Boolean;
  function Match(S1, S2 : String) : Boolean;
  function DOS_WIN_CYR(S: String): String;
  function WIN_DOS_CYR(S: String): String;

  function Repl(S : String; N : Integer) : String;
  function PadC(S : String; N : Integer) : String;
  function PadL(S : String; N : Integer) : String;
  function PadR(S : String; N : Integer) : String;
  function _Round(N, P : Double) : Double;

  function CurrencyToText(Amount : Double) : String;
  function NumberToText(Number : Integer; IsMale : Boolean) : String;
  function GetAtom(S : String; MaxPos : Integer) : String;

  function KillTask(ExeFileName: string): Integer;

implementation

uses
  System.Character,
  SysUtils,
  Tlhelp32,
  Windows;

  function IsDigit(S: String): Boolean;
  var
    I : Integer;
    R : Boolean;
  begin
    R := True;
    for i := 1 to Length(S) do begin
      if not S[i].IsDigit then begin
        R := False;
      end;
    end;
    Result := R;
  end;

  function TrimZero(S: String): String;
  begin
    if (Length(S) = 7) then begin
      if (Copy(S, 1, 2) = '19') then begin
        S := Copy(S, 3, 5);
        while Copy(S, 1, 1) = '0' do S := Copy(S, 2, 255);
      end;
    end else begin
      S := '###'
    end;
    Result := S;
  end;

  function Equal(S1, S2 : String) : Boolean;
  var
    i : Integer;
    R : boolean;
  begin
    R := True;
    if Length(S2) = Length(S1) then begin
      for i := 1 to Length(S1) do begin
        if (S2[i] <> '#') and (S1[i] <> S2[i]) then begin
          R := False;
        end;
      end;
    end else begin
      R := False;
    end;
    Result := R;
  end;

  function Match(S1, S2 : String) : Boolean;
  var
    R : boolean;
    A : String;
  begin
    R := True;
    while S1 <> '' do begin
      if Pos(' ', S1) > 0 then begin
        A := Copy(S1, 1, Pos(' ', S1)-1);
        S1 := Copy(S1, Pos(' ', S1)+1, Length(S1));
        while Copy(S1, 1, 1) = ' ' do S1 := Copy(S1, 2, Length(S1));
      end else begin
        A := S1;
        S1 := '';
      end;
      if Pos(A, S2) = 0 then R := False;
    end;
    Result := R;
  end;

  function DOS_WIN_CYR(S: String): String;
  var
    R : string;
    i : byte;
  begin
    R := '';
    for i := 1 to Length(S) do begin
      if Ord(S[i]) in [128..191] then begin
        R := R + Chr(Ord(S[i])+64);
      end else begin
        R := R + S[i];
      end;
    end;
    DOS_WIN_CYR := R;
  end;

  function WIN_DOS_CYR(S: String): String;
  var
    R : string;
    i : byte;
  begin
    R := '';
    for i := 1 to Length(S) do begin
      if Ord(S[i]) in [192..255] then begin
        R := R + Chr(Ord(S[i])-64);
      end else begin
        R := R + S[i];
      end;
    end;
    WIN_DOS_CYR := R;
  end;

  function Repl(S: String; N: Integer): String;
  var
    R : String;
    i : Integer;
  begin
    R := '';
    for i := 1 to N Do begin
      R := R + S;
    end;
    Result := R;
  end;

  function PadL(S: String; N: Integer): String;
  var
    R : String;
  begin
    R := S;
    while Length(R) < N do begin
      R := R+' ';
    end;
    Result := Copy(R, 1, N);
  end;

  function PadR(S: String; N: Integer): String;
  var
    R : String;
  begin
    R := S;
    while Length(R) < N do begin
      R := ' '+R;
    end;
    Result := Copy(R, Length(R)-N+1, N);
  end;

  function PadC(S: String; N: Integer): String;
  var
    R : String;
  begin
    R := S;
    while Length(R) < N do begin
      R := ' '+R+' ';
    end;
    Result := Copy(R, 1, N);
  end;

  function _Round(N, P : Double) : Double;
  var
    R: Double;
    LR: Integer;
  begin
    R := N/P;
    LR :=  0;
    if N/P >= 0 then begin
      R := R + 0.5;
      while R >= 1.0 do begin
        R := R - 1;
        LR := LR + 1;
      end;
    end else begin
      R := R - 0.5;
      while R <= -1.0 do begin
        R := R + 1;
        LR := LR - 1;
      end;
    end;
    Result := LR * P;
  end;

  function NumberToText(Number : Integer; IsMale : Boolean) : String;
  var
    R, R1, R2 : String;
  begin
    case Number of
      0 : R := '';
      1 : if IsMale then R := 'един' else R := 'една';
      2 : if IsMale then R := 'два' else R := 'две';
      3 : R := 'три';
      4 : R := 'четири';
      5 : R := 'пет';
      6 : R := 'шест';
      7 : R := 'седем';
      8 : R := 'осем';
      9 : R := 'девет';
      10 : R := 'десет';
      11 : R := 'единадесет';
      12..19 : R := NumberToText(Number mod 10, True) + 'надесет';
      20..99 : begin
        R1 := NumberToText(Number div 10, True)+'десет';
        R2 := NumberToText(Number mod 10, IsMale);
        if R2 <> '' then R := R1 + ' и ' + R2 else R := R1;
      end;
      100..999 : begin
        case (Number div 100) of
          1 : R1 := 'сто';
          2 : R1 := 'двеста';
          3 : R1 := 'триста';
          4..9 : R1 := NumberToText(Number div 100, False)+'стотин';
        end;
        R2 := NumberToText(Number mod 100, IsMale);
        if R2 = '' then begin
          R := R1;
        end else begin
          if Pos(' и ', R2) > 0 then begin
            if (R1 <> '') and (R2 <> '') then R := R1 + ' ' + R2 else R := R1 + R2;
          end else begin
            R := R1 + ' и ' + R2;
          end;
        end;
      end;
    end;
    Result := R;
  end;

  function CurrencyToText(Amount : Double) : String;
  var
    D, D1000, D1, D_1 : Integer;
    R1000, R1, R_1 : String;
    R : String;
  begin
    D := Round(Amount*100);
    D_1 := D mod 100; D := D div 100;
    D1 := D mod 1000; D := D div 1000;
    D1000 := D mod 1000;
    case D1000 of
       0 : R1000 := '';
       1 : R1000 := 'хиляда';
       2..999: R1000 := NumberToText(D1000, False)+' хиляди';
    end;
    case D1 of
      0 : R1 := '';
      1 : R1 := 'един';
      2..999 : R1 := NumberToText(D1, True);
    end;
    case D_1 of
      0 : R_1 := '';
      1 : R_1 := 'една стотинка';
      2..999 : R_1 := NumberToText(D_1, False)+' стотинки';
    end;
    R := R1000;
    if (R1000 <> '') and (Pos(' и ', R1) = 0) and (R1 <> '') then R := R + ' и ';
    if (R1000 <> '') and (R1 <> '') then R := R + ' ';
    R := R + R1;
    if (D1000 = 0) and (D1 = 1) then begin
      R := R + ' лев';
    end else begin
      if (D1000+D1) > 0 then R := R + ' лева'
    end;
    if (D1000+D1 > 0) and (D_1 > 0) then R := R + ' и ';
    R := R + R_1;
    if D1000+D1+D_1 = 0 then R := 'нула лева';
    Result := R;
  end;

  function GetAtom(S : String; MaxPos : Integer) : String;
  var
    R : String;
  begin
    R := Copy(S, 1, MaxPos);
    while Copy(R, Length(R),1) <> ' ' do begin
      R := Copy(R, 1, Length(R)-1);
    end;
    Result := R;
  end;

  function KillTask(ExeFileName: string): Integer;
  const
    PROCESS_TERMINATE = $0001;
  var
    ContinueLoop: BOOLean;
    FSnapshotHandle: THandle;
    FProcessEntry32: TProcessEntry32;
  begin
    Result := 0;
    FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
    ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

    while Integer(ContinueLoop) <> 0 do
    begin
      if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
        UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
        UpperCase(ExeFileName))) then
        Result := Integer(TerminateProcess(
                          OpenProcess(PROCESS_TERMINATE,
                                      BOOL(0),
                                      FProcessEntry32.th32ProcessID),
                                      0));
       ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
    end;
    CloseHandle(FSnapshotHandle);
  end;
end.
