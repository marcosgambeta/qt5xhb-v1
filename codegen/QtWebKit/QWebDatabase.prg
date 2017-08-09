$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBSECURITYORIGIN
#endif

CLASS QWebDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD displayName
   METHOD expectedSize
   METHOD fileName
   METHOD name
   METHOD origin
   METHOD size
   METHOD removeAllDatabases
   METHOD removeDatabase

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

#include <QWebSecurityOrigin>

/*
QWebDatabase ( const QWebDatabase & other )
*/
$constructor=|new|const QWebDatabase &

$deleteMethod

/*
QString displayName () const
*/
$method=|QString|displayName|

/*
qint64 expectedSize () const
*/
$method=|qint64|expectedSize|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QString name () const
*/
$method=|QString|name|

/*
QWebSecurityOrigin origin () const
*/
$method=|QWebSecurityOrigin|origin|

/*
qint64 size () const
*/
$method=|qint64|size|

/*
static void removeAllDatabases ()
*/
$staticMethod=|void|removeAllDatabases|

/*
static void removeDatabase ( const QWebDatabase & db )
*/
$staticMethod=|void|removeDatabase|const QWebDatabase &

$extraMethods

#pragma ENDDUMP
