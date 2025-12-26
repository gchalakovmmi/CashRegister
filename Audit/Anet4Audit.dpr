program Anet4Audit;

uses
  Vcl.Forms,

  Globals in 'Globals.pas',

  Interfaces.Enums in 'Interfaces\Interfaces.Enums.pas',
  Interfaces.Model.Notification in '..\Common\Interfaces\Models\Interfaces.Model.Notification.pas',
  Interfaces.Model.Pattern.Observer in '..\Common\Interfaces\Models\Interfaces.Model.Pattern.Observer.pas',

  Interfaces.Model.Main in 'Interfaces\Models\Interfaces.Model.Main.pas',
  Interfaces.Model.Login in 'Interfaces\Models\Interfaces.Model.Login.pas',

  Interfaces.ViewModel.Main in 'Interfaces\ViewModels\Interfaces.ViewModel.Main.pas',
  Interfaces.GUIRecords in 'Interfaces\Interfaces.GUIRecords.pas',
  Interfaces.ViewModel.Login in 'Interfaces\ViewModels\Interfaces.ViewModel.Login.pas',

  Model.AppSettings in '..\Common\Models\Model.AppSettings.pas',
  Model.Generator.GIDs in '..\Common\Models\Model.Generator.GIDs.pas',
  Model.Notification in '..\Common\Models\Model.Notification.pas',
  Model.Pattern.Observer.Observable in '..\Common\Models\Model.Pattern.Observer.Observable.pas',
  Model.Pattern.Observer.Observer in '..\Common\Models\Model.Pattern.Observer.Observer.pas',

  DataModule.Users in 'DataModules\DataModule.Users.pas' {DataModuleUsers: TDataModule},

  Model.Main in 'Models\Model.Main.pas',
  Model.Login in 'Models\Model.Login.pas',

  ViewModel.Main in 'ViewModels\ViewModel.Main.pas',
  ViewModel.Login in 'ViewModels\ViewModel.Login.pas',

  View.Login in 'Views\View.Login.pas' {ViewLogin},
  View.Main in 'Views\View.Main.pas' {ViewMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewMain, ViewMain);
  Application.CreateForm(TDataModuleUsers, DataModuleUsers);
  Application.Run;
end.
