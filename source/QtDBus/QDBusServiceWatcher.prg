/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST WATCHMODE
REQUEST QDBUSCONNECTION
#endif

CLASS QDBusServiceWatcher INHERIT QObject

   DATA class_id INIT Class_Id_QDBusServiceWatcher
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusServiceWatcher>
#endif

/*
explicit QDBusServiceWatcher(QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_NEW1 )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QDBusServiceWatcher * o = new QDBusServiceWatcher ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusServiceWatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSSERVICEWATCHER_NEW2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par3 = ISNIL(3)? (int) QDBusServiceWatcher::WatchForOwnerChange : hb_parni(3);
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qt5xhb_itemGetPtr(4);
  QDBusServiceWatcher * o = new QDBusServiceWatcher ( par1,  (QDBusServiceWatcher::WatchMode) par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusServiceWatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]explicit QDBusServiceWatcher(QObject *parent = 0)
//[2]QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = 0)

HB_FUNC( QDBUSSERVICEWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDBUSSERVICEWATCHER_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISQDBUSCONNECTION(2) && (ISNUM(3)||ISNIL(3)) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDBUSSERVICEWATCHER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSSERVICEWATCHER_DELETE )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
    QStringList strl = obj->watchedServices (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setWatchedServices ( par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addWatchedService ( par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->removeWatchedService ( par1 ) );
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
    WatchMode * ptr = new WatchMode( obj->watchMode (  ) );
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
    obj->setWatchMode (  );
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
    QDBusConnection * ptr = new QDBusConnection( obj->connection (  ) );
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
    obj->setConnection (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
