program FPBGR_DP55KL;

uses
  Forms,
  uMainForm in 'uMainForm.pas' {fmMainForm},
  FP3530_TLB in '..\..\..\..\COMMUNICATIONS\COM SERVERS\FP3530 COMServer\SOURCE\FP3530_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMainForm, fmMainForm);
  Application.Run;
end.
