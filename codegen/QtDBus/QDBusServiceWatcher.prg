$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST WATCHMODE
REQUEST QDBUSCONNECTION
#endif

CLASS QDBusServiceWatcher INHERIT QObject

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

   METHOD onServiceRegistered
   METHOD onServiceUnregistered
   METHOD onServiceOwnerChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QDBusServiceWatcher(QObject *parent = 0)
*/
$internalConstructor=|new1|QObject *=0

/*
QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = 0)
*/
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

/*
QStringList watchedServices() const
*/
$method=|QStringList|watchedServices|

/*
void setWatchedServices(const QStringList &services)
*/
$method=|void|setWatchedServices|const QStringList &

/*
void addWatchedService(const QString &newService)
*/
$method=|void|addWatchedService|const QString &

/*
bool removeWatchedService(const QString &service)
*/
$method=|bool|removeWatchedService|const QString &

/*
WatchMode watchMode() const
*/
$method=|QDBusServiceWatcher::WatchMode|watchMode|

/*
void setWatchMode(WatchMode mode)
*/
$method=|void|setWatchMode|QDBusServiceWatcher::WatchMode

/*
QDBusConnection connection() const
*/
$method=|QDBusConnection|connection|

/*
void setConnection(const QDBusConnection &connection)
*/
$method=|void|setConnection|const QDBusConnection &

#pragma ENDDUMP
