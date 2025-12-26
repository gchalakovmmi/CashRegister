unit View.Message;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TViewMessage = class(TForm)
    lbMessage: TLabel;
    Timer: TTimer;
    tBlink: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tBlinkTimer(Sender: TObject);
  private
    { Private declarations }
    FToTerminate: Boolean;
  public
    procedure ShowGoodMessage(Msg : String);
    procedure ShowBadMessage(Msg : String);
    procedure ShowBadMessagePlus(Msg : String);
    property ToTerminate: Boolean read FToTerminate write FToTerminate;
  end;

var
  ViewMessage: TViewMessage;

implementation

{$R *.dfm}

procedure TViewMessage.ShowBadMessagePlus(Msg: String);
begin
  FToTerminate := False;

//  Color := $BFBFFF;
  Color := clRed;
  lbMessage.Caption := Msg;
  Width := lbMessage.Width + 8;
  Height := 117;
  lbMessage.Height := 75;
  lbMessage.Caption := lbMessage.Caption+#$0D#$0A+' (+ за продължение)'+#$0D#$0A + '(* за изход)';
  Position := poDesigned;
  Position := poOwnerFormCenter;
  tBlink.Enabled := True;
  ShowModal;
end;

procedure TViewMessage.ShowBadMessage(Msg: String);
begin
  FToTerminate := False;

  tBlink.Enabled := False;
  Color := $BFBFFF;
  lbMessage.Caption := Msg;
  Width := lbMessage.Width + 8;
  Height := 66;
  lbMessage.Height := 25;
  Position := poDesigned;
  Position := poOwnerFormCenter;
  Timer.Enabled := True;
  ShowModal;
  Timer.Enabled := False;
end;

procedure TViewMessage.ShowGoodMessage(Msg: String);
begin
  FToTerminate := False;

  tBlink.Enabled := False;
  Color := $BFFFBF;
  lbMessage.Caption := Msg;
  Width := lbMessage.Width + 8;
  Height := 66;
  lbMessage.Height := 25;
  Position := poDesigned;
  Position := poOwnerFormCenter;
  Show;
end;

procedure TViewMessage.TimerTimer(Sender: TObject);
begin
  Close;
end;

procedure TViewMessage.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '*' then begin
    ToTerminate := True;
    Close;
    tBlink.Enabled := False;
  end;
  if Key = '+' then begin
    Close;
    tBlink.Enabled := False;
  end;
end;

procedure TViewMessage.tBlinkTimer(Sender: TObject);
begin
  if Color = clRed then Color := clYellow else Color := clRed;
end;

end.
