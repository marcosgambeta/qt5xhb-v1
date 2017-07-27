$header

#include "hbclass.ch"

CLASS QDesktopServices

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD openUrl
   METHOD setUrlHandler
   METHOD unsetUrlHandler

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

$deleteMethod

/*
static bool openUrl ( const QUrl & url )
*/
$staticMethod=|bool|openUrl|const QUrl &

/*
static void setUrlHandler ( const QString & scheme, QObject * receiver, const char * method )
*/
$staticMethod=|void|setUrlHandler|const QString &,QObject *,const char *

/*
static void unsetUrlHandler ( const QString & scheme )
*/
$staticMethod=|void|unsetUrlHandler|const QString &

$extraMethods

#pragma ENDDUMP
