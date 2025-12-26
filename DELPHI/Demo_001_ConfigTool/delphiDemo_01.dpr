program delphiDemo_01;

uses
  Vcl.Forms,
  SynHighlighterDST in 'SynHighlighterDST.pas',
  u_MainForm in 'u_MainForm.pas' {fm_MainForm},
  uDeviceGroup_A in 'uDeviceGroup_A.pas',
  uDeviceGroup_B in 'uDeviceGroup_B.pas',
  uDeviceGroup_C in 'uDeviceGroup_C.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'COM server - Delphi demo';
  Application.CreateForm(Tfm_MainForm, fm_MainForm);
  Application.Run;
end.
