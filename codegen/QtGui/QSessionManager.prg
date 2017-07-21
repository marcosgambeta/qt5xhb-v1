$header

#include "hbclass.ch"

CLASS QSessionManager INHERIT QObject

   DATA self_destruction INIT .F.

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QString sessionId() const
*/
$method=|QString|sessionId|

/*
QString sessionKey() const
*/
$method=|QString|sessionKey|

/*
bool allowsInteraction()
*/
$method=|bool|allowsInteraction|

/*
bool allowsErrorInteraction()
*/
$method=|bool|allowsErrorInteraction|

/*
void release()
*/
$method=|void|release|

/*
void cancel()
*/
$method=|void|cancel|

/*
void setRestartHint(RestartHint)
*/
$method=|void|setRestartHint|QSessionManager::RestartHint

/*
RestartHint restartHint() const
*/
$method=|QSessionManager::RestartHint|restartHint|

/*
void setRestartCommand(const QStringList&)
*/
$method=|void|setRestartCommand|const QStringList &

/*
QStringList restartCommand() const
*/
$method=|QStringList|restartCommand|

/*
void setDiscardCommand(const QStringList&)
*/
$method=|void|setDiscardCommand|const QStringList &

/*
QStringList discardCommand() const
*/
$method=|QStringList|discardCommand|

/*
void setManagerProperty(const QString& name, const QString& value)
*/
$internalMethod=|void|setManagerProperty,setManagerProperty1|const QString &,const QString &

/*
void setManagerProperty(const QString& name, const QStringList& value)
*/
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

/*
bool isPhase2() const
*/
$method=|bool|isPhase2|

/*
void requestPhase2()
*/
$method=|void|requestPhase2|

#pragma ENDDUMP
