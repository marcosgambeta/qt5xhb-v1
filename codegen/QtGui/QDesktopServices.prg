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

$prototype=static bool openUrl ( const QUrl & url )
$staticMethod=|bool|openUrl|const QUrl &

$prototype=static void setUrlHandler ( const QString & scheme, QObject * receiver, const char * method )
$staticMethod=|void|setUrlHandler|const QString &,QObject *,const char *

$prototype=static void unsetUrlHandler ( const QString & scheme )
$staticMethod=|void|unsetUrlHandler|const QString &

$extraMethods

#pragma ENDDUMP
