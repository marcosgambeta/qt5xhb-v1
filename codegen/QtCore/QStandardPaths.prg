$header

#include "hbclass.ch"

CLASS QStandardPaths

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD writableLocation
   METHOD standardLocations
   METHOD locate
   METHOD locateAll
   METHOD displayName
   METHOD findExecutable
   METHOD setTestModeEnabled
   METHOD isTestModeEnabled

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
static QString writableLocation(StandardLocation type)
*/
$staticMethod=|QString|writableLocation|QStandardPaths::StandardLocation

/*
static QStringList standardLocations(StandardLocation type)
*/
$staticMethod=|QStringList|standardLocations|QStandardPaths::StandardLocation

/*
static QString locate(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_LOCATE )
{
  if( ISNUM(1) && ISCHAR(2) && ISOPTNUM(3) )
  {
    int par3 = ISNIL(3)? (int) QStandardPaths::LocateFile : hb_parni(3);
    RQSTRING( QStandardPaths::locate ( (QStandardPaths::StandardLocation) hb_parni(1), PQSTRING(2), (QStandardPaths::LocateOptions) par3 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList locateAll(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
*/
HB_FUNC_STATIC( QSTANDARDPATHS_LOCATEALL )
{
  if( ISNUM(1) && ISCHAR(2) && ISOPTNUM(3) )
  {
    int par3 = ISNIL(3)? (int) QStandardPaths::LocateFile : hb_parni(3);
    RQSTRINGLIST( QStandardPaths::locateAll ( (QStandardPaths::StandardLocation) hb_parni(1), PQSTRING(2), (QStandardPaths::LocateOptions) par3 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString displayName(StandardLocation type)
*/
$staticMethod=|QString|displayName|QStandardPaths::StandardLocation

/*
static QString findExecutable(const QString &executableName, const QStringList &paths = QStringList())
*/
HB_FUNC_STATIC( QSTANDARDPATHS_FINDEXECUTABLE )
{
  if( ISCHAR(1) && ISOPTARRAY(2) )
  {
    RQSTRING( QStandardPaths::findExecutable ( PQSTRING(1), OPQSTRINGLIST(2,QStringList()) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setTestModeEnabled(bool testMode)
*/
$staticMethod=|void|setTestModeEnabled|bool

/*
static bool isTestModeEnabled()
*/
$staticMethod=|bool|isTestModeEnabled|

$extraMethods

#pragma ENDDUMP
