%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QObject

   METHOD sessionId
   METHOD sessionKey
   METHOD allowsInteraction
   METHOD allowsErrorInteraction
   METHOD release
   METHOD cancel
   METHOD setRestartHint
   METHOD restartHint
   METHOD setRestartCommand
   METHOD restartCommand
   METHOD setDiscardCommand
   METHOD discardCommand
   METHOD setManagerProperty
   METHOD isPhase2
   METHOD requestPhase2

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QString sessionId() const
$method=|QString|sessionId|

$prototype=QString sessionKey() const
$method=|QString|sessionKey|

$prototype=bool allowsInteraction()
$method=|bool|allowsInteraction|

$prototype=bool allowsErrorInteraction()
$method=|bool|allowsErrorInteraction|

$prototype=void release()
$method=|void|release|

$prototype=void cancel()
$method=|void|cancel|

$prototype=void setRestartHint(RestartHint)
$method=|void|setRestartHint|QSessionManager::RestartHint

$prototype=RestartHint restartHint() const
$method=|QSessionManager::RestartHint|restartHint|

$prototype=void setRestartCommand(const QStringList&)
$method=|void|setRestartCommand|const QStringList &

$prototype=QStringList restartCommand() const
$method=|QStringList|restartCommand|

$prototype=void setDiscardCommand(const QStringList&)
$method=|void|setDiscardCommand|const QStringList &

$prototype=QStringList discardCommand() const
$method=|QStringList|discardCommand|

$prototype=void setManagerProperty(const QString& name, const QString& value)
$internalMethod=|void|setManagerProperty,setManagerProperty1|const QString &,const QString &

$prototype=void setManagerProperty(const QString& name, const QStringList& value)
$internalMethod=|void|setManagerProperty,setManagerProperty2|const QString &,const QStringList &

//[1]void setManagerProperty(const QString& name, const QString& value)
//[2]void setManagerProperty(const QString& name, const QStringList& value)

HB_FUNC_STATIC( QSESSIONMANAGER_SETMANAGERPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QSessionManager_setManagerProperty1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QSessionManager_setManagerProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isPhase2() const
$method=|bool|isPhase2|

$prototype=void requestPhase2()
$method=|void|requestPhase2|

#pragma ENDDUMP
