%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete

   METHOD addLocalScheme
   METHOD allOrigins
   METHOD databaseQuota
   METHOD databases
   METHOD databaseUsage
   METHOD host
   METHOD localSchemes
   METHOD port
   METHOD removeLocalScheme
   METHOD scheme
   METHOD setDatabaseQuota

$endClass

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
