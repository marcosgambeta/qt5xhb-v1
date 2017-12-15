$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBDATABASE
#endif

CLASS QWebSecurityOrigin

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD databaseQuota
   METHOD databaseUsage
   METHOD databases
   METHOD host
   METHOD port
   METHOD scheme
   METHOD setDatabaseQuota
   METHOD addLocalScheme
   METHOD allOrigins
   METHOD localSchemes
   METHOD removeLocalScheme

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

#include <QStringList>
#include <QWebDatabase>

$prototype=QWebSecurityOrigin ( const QWebSecurityOrigin & other )
$constructor=|new|const QWebSecurityOrigin &

$deleteMethod

$prototype=qint64 databaseQuota () const
$method=|qint64|databaseQuota|

$prototype=qint64 databaseUsage () const
$method=|qint64|databaseUsage|

$prototype=QList<QWebDatabase> databases () const
$method=|QList<QWebDatabase>|databases|

$prototype=QString host () const
$method=|QString|host|

$prototype=int port () const
$method=|int|port|

$prototype=QString scheme () const
$method=|QString|scheme|

$prototype=void setDatabaseQuota ( qint64 quota )
$method=|void|setDatabaseQuota|qint64

$prototype=static void addLocalScheme ( const QString & scheme )
$staticMethod=|void|addLocalScheme|const QString &

$prototype=static QList<QWebSecurityOrigin> allOrigins ()
$staticMethod=|QList<QWebSecurityOrigin>|allOrigins|

$prototype=static QStringList localSchemes ()
$staticMethod=|QStringList|localSchemes|

$prototype=static void removeLocalScheme ( const QString & scheme )
$staticMethod=|void|removeLocalScheme|const QString &

$extraMethods

#pragma ENDDUMP
