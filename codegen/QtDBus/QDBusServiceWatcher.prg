%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD watchedServices
   METHOD setWatchedServices
   METHOD addWatchedService
   METHOD removeWatchedService
   METHOD watchMode
   METHOD setWatchMode
   METHOD connection
   METHOD setConnection

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDBusConnection>

$prototype=explicit QDBusServiceWatcher(QObject *parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = 0)
$internalConstructor=|new2|const QString &,const QDBusConnection &,QDBusServiceWatcher::WatchMode=QDBusServiceWatcher::WatchForOwnerChange,QObject *=0

//[1]explicit QDBusServiceWatcher(QObject *parent = 0)
//[2]QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = 0)

HB_FUNC( QDBUSSERVICEWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDBusServiceWatcher_new1();
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISQDBUSCONNECTION(2) && ISOPTNUM(3) && ISOPTQOBJECT(4) )
  {
    QDBusServiceWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QStringList watchedServices() const
$method=|QStringList|watchedServices|

$prototype=void setWatchedServices(const QStringList &services)
$method=|void|setWatchedServices|const QStringList &

$prototype=void addWatchedService(const QString &newService)
$method=|void|addWatchedService|const QString &

$prototype=bool removeWatchedService(const QString &service)
$method=|bool|removeWatchedService|const QString &

$prototype=WatchMode watchMode() const
$method=|QDBusServiceWatcher::WatchMode|watchMode|

$prototype=void setWatchMode(WatchMode mode)
$method=|void|setWatchMode|QDBusServiceWatcher::WatchMode

$prototype=QDBusConnection connection() const
$method=|QDBusConnection|connection|

$prototype=void setConnection(const QDBusConnection &connection)
$method=|void|setConnection|const QDBusConnection &

$beginSignals
$signal=|serviceRegistered(QString)
$signal=|serviceUnregistered(QString)
$signal=|serviceOwnerChanged(QString,QString,QString)
$endSignals

#pragma ENDDUMP
