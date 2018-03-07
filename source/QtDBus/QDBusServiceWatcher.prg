/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

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

PROCEDURE destroyObject () CLASS QDBusServiceWatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusServiceWatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusServiceWatcher>
#endif

/*
explicit QDBusServiceWatcher(QObject *parent = 0)
*/
void QDBusServiceWatcher_new1 ()
{
  QDBusServiceWatcher * o = new QDBusServiceWatcher ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = 0)
*/
void QDBusServiceWatcher_new2 ()
{
  QDBusServiceWatcher * o = new QDBusServiceWatcher ( PQSTRING(1), *PQDBUSCONNECTION(2), ISNIL(3)? (QDBusServiceWatcher::WatchMode) QDBusServiceWatcher::WatchForOwnerChange : (QDBusServiceWatcher::WatchMode) hb_parni(3), OPQOBJECT(4,0) );
  _qt5xhb_returnNewObject( o, false );
}

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

HB_FUNC_STATIC( QDBUSSERVICEWATCHER_DELETE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList watchedServices() const
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_WATCHEDSERVICES )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->watchedServices () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setWatchedServices ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->addWatchedService ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->removeWatchedService ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->watchMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setWatchMode ( (QDBusServiceWatcher::WatchMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QDBusConnection * ptr = new QDBusConnection( obj->connection () );
      _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQDBUSCONNECTION(1) )
    {
      obj->setConnection ( *PQDBUSCONNECTION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QDBusServiceWatcherSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDBUSSERVICEWATCHER_ONSERVICEREGISTERED )
{
  QDBusServiceWatcherSlots_connect_signal( "serviceRegistered(QString)", "serviceRegistered(QString)" );
}

HB_FUNC_STATIC( QDBUSSERVICEWATCHER_ONSERVICEUNREGISTERED )
{
  QDBusServiceWatcherSlots_connect_signal( "serviceUnregistered(QString)", "serviceUnregistered(QString)" );
}

HB_FUNC_STATIC( QDBUSSERVICEWATCHER_ONSERVICEOWNERCHANGED )
{
  QDBusServiceWatcherSlots_connect_signal( "serviceOwnerChanged(QString,QString,QString)", "serviceOwnerChanged(QString,QString,QString)" );
}


#pragma ENDDUMP
