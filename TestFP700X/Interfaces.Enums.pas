unit Interfaces.Enums;

interface

type
  TInterfaceAction = (
    actCloseApp,

    actFiscalDeviceAfterStartCOMServer,
    actFiscalDeviceErrorStartCOMServer,

    actFiscalDeviceAfterSettingsChange,
    actFiscalDeviceErrorSettingsChange,

    actFiscalDeviceAfterOpenConnection,
    actFiscalDeviceErrorOpenConnection,

    actFiscalDeviceBeforeCheckTimeDifference,
    actFiscalDeviceErrorCheckTimeDifference,
    actFiscalDeviceAfterCheckTimeDifference,





    actFiscalDeviceBeforeCashCheck,
    actFiscalDeviceErrorCashCheck,
    actFiscalDeviceAfterCashCheck,

    actFiscalDeviceBeforeCashIn,
    actFiscalDeviceErrorCashIn,
    actFiscalDeviceAfterCashIn,

    actFiscalDeviceBeforeCashOut,
    actFiscalDeviceErrorCashOut,
    actFiscalDeviceAfterCashOut,

    actFiscalDeviceBeforeXReport,
    actFiscalDeviceErrorXReport,
    actFiscalDeviceAfterXReport,

    actFiscalDeviceBeforeZReport,
    actFiscalDeviceErrorZReport,
    actFiscalDeviceAfterZReport,

    actFiscalDeviceBeforePReport,
    actFiscalDeviceErrorPReport,
    actFiscalDeviceAfterPReport,


    actFiscalDeviceBeforeOpenFiscalCheck,
    actFiscalDeviceErrorOpenFiscalCheck,
    actFiscalDeviceAfterOpenFiscalCheck,

    actFiscalDeviceBeforeFiscalText,
    actFiscalDeviceErrorFiscalText,
    actFiscalDeviceAfterFiscalText,

    actFiscalDeviceBeforeSeparatingLine,
    actFiscalDeviceErrorSeparatingLine,
    actFiscalDeviceAfterSeparatingLine,

    actFiscalDeviceBeforeSale,
    actFiscalDeviceErrorSale,
    actFiscalDeviceAfterSale,

    actFiscalDeviceBeforeSubTotal,
    actFiscalDeviceErrorSubTotal,
    actFiscalDeviceAfterSubTotal,

    actFiscalDeviceBeforeTotal,
    actFiscalDeviceErrorTotal,
    actFiscalDeviceAfterTotal,


    actFiscalDeviceBeforeDrawerKickOut,
    actFiscalDeviceErrorDrawerKickOut,
    actFiscalDeviceAfterDrawerKickOut,

    actFiscalDeviceBeforeCloseFiscalCheck,
    actFiscalDeviceErrorCloseFiscalCheck,
    actFiscalDeviceAfterCloseFiscalCheck,

    actFiscalDeviceBeforeCancelFiscalCheck,
    actFiscalDeviceErrorCancelFiscalCheck,
    actFiscalDeviceAfterCancelFiscalCheck,

    actFiscalDeviceBeforeDuplicateReceipt,
    actFiscalDeviceErrorDuplicateReceipt,
    actFiscalDeviceAfterDuplicateReceipt,


    actFiscalDeviceBeforeOpenReversalCheck,
    actFiscalDeviceErrorOpenReversalCheck,
    actFiscalDeviceAfterOpenReversalCheck,




    actFiscalDeviceAfterCloseConnection,
    actFiscalDeviceErrorCloseConnection,

    actFiscalDeviceAfterStopCOMServer,
    actFiscalDeviceErrorStopCOMServer
  );

  TInterfaceActions = set of TInterfaceAction;

implementation

end.

