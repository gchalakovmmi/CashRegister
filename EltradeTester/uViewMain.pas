unit uViewMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CPortCtl, CPort;

type
  TForm1 = class(TForm)
    ComPort: TComPort;
    ComComboBox1: TComComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComPortRxChar(Sender: TObject; Count: Integer);
    procedure ComPortError(Sender: TObject; Errors: TComErrors);
  private
    FResponce: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uModelLowLevelProtocol;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ComPort.Open;
  ShowMessage('Open');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  LRequest: String;
  LHexRequest: String;
  LProtocol: TModelLowLevelProtocol;
  i: Integer;
begin
  LProtocol := TModelLowLevelProtocol.Create;
  LRequest := LProtocol.Getpacket(#$3E, '');
  LHexRequest := '';
  for i := 1 to Length(LRequest) do begin
    LHexRequest := LHexRequest + FormatFloat('00', Byte(LRequest[i])) + ' ';
  end;
  FResponce := '';
  ShowMessage(LHexRequest);
  ComPort.Port := 'COM3';
  ComPort.Open;
  ComPort.WriteStr(LRequest);
end;

procedure TForm1.ComPortRxChar(Sender: TObject; Count: Integer);
var
  LString: String;
  LHexResponce: String;
  i: Integer;
begin
  ComPort.ReadStr(LString, Count);
  FResponce := FResponce + LString;
//  if Pos(#03, FResponce) > 0 then begin
    LHexResponce := '';
    for i := 1 to Length(FResponce) do begin
      LHexResponce := LHexResponce + FormatFloat('00', Byte(FResponce[i])) + ' ';
    end;
//  end;
  ShowMessage(LHexResponce);
end;

procedure TForm1.ComPortError(Sender: TObject; Errors: TComErrors);
begin
  ShowMessage('Error');
end;

end.
