$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST WATCHMODE
REQUEST QDBUSCONNECTION
#endif

CLASS QDBusServiceWatcher INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_NEW1 )
{
  QDBusServiceWatcher * o = new QDBusServiceWatcher ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_NEW2 )
{
  int par3 = ISNIL(3)? (int) QDBusServiceWatcher::WatchForOwnerChange : hb_parni(3);
  QDBusServiceWatcher * o = new QDBusServiceWatcher ( PQSTRING(1), (QDBusServiceWatcher::WatchMode) par3, OPQOBJECT(4,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]explicit QDBusServiceWatcher(QObject *parent = 0)
//[2]QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = 0)

HB_FUNC( QDBUSSERVICEWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QDBUSSERVICEWATCHER_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISQDBUSCONNECTION(2) && ISOPTNUM(3) && ISOPTQOBJECT(4) )
  {
    HB_FUNC_EXEC( QDBUSSERVICEWATCHER_NEW2 );
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
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_WATCHEDSERVICES )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->watchedServices () );
  }
}

/*
void setWatchedServices(const QStringList &services)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_SETWATCHEDSERVICES )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWatchedServices ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addWatchedService(const QString &newService)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_ADDWATCHEDSERVICE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addWatchedService ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool removeWatchedService(const QString &service)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_REMOVEWATCHEDSERVICE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->removeWatchedService ( PQSTRING(1) ) );
  }
}


/*
WatchMode watchMode() const
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_WATCHMODE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    WatchMode * ptr = new WatchMode( obj->watchMode () );
    _qt5xhb_createReturnClass ( ptr, "WATCHMODE" );
  }
}

/*
void setWatchMode(WatchMode mode)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_SETWATCHMODE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWatchMode ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDBusConnection connection() const
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_CONNECTION )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusConnection * ptr = new QDBusConnection( obj->connection () );
    _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
  }
}

/*
void setConnection(const QDBusConnection &connection)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_SETCONNECTION )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setConnection ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
