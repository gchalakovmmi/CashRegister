unit Interfaces.Enums;

interface

type
  TAMDAction = (
    amdAttach,
    amdModify,
    amdDetach
  );

  TInterfaceAction = (
    actCloseApp,

    actSetupGUI,
    actUpdateGUI,
    actResetGUI,
    actCloseForm,
    actCloseFormAndRepeat,

    actLoginSuccess,
    actLoginFail

  );

  TInterfaceActions = set of TInterfaceAction;

implementation

end.
