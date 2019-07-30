program FiscalDeviceTester;

uses
  Vcl.Forms,
  View.Main in 'View.Main.pas' {ViewMain},
  Model.FiscalDevice in 'Model.FiscalDevice.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewMain, ViewMain);
  Application.Run;
end.
