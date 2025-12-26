program EltradeTester;

uses
  Forms,
  uViewMain in 'uViewMain.pas' {Form1},
  uModelLowLevelProtocol in 'uModelLowLevelProtocol.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
