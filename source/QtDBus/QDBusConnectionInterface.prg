/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSREPLY<QSTRINGLIST>
REQUEST QDBUSREPLY<BOOL>
REQUEST QDBUSREPLY<QSTRING>
REQUEST QDBUSREPLY<UINT>
REQUEST QDBUSREPLY<VOID>
#endif

CLASS QDBusConnectionInterface INHERIT QDBusAbstractInterface

   DATA class_id INIT Class_Id_QDBusConnectionInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD registeredServiceNames
   METHOD isServiceRegistered
   METHOD serviceOwner
   METHOD unregisterService
   METHOD registerService
   METHOD servicePid
   METHOD serviceUid
   METHOD startService

   METHOD onServiceRegistered
   METHOD onServiceUnregistered
   METHOD onServiceOwnerChanged
   METHOD onCallWithCallbackFailed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusConnectionInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusConnectionInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusConnectionInterface>
#endif

/*
QDBusConnectionInterface(const QDBusConnection &connection, QObject *parent)
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_NEW )
{
  QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
  QDBusConnectionInterface * o = new QDBusConnectionInterface ( par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_DELETE )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDBusReply<QStringList> registeredServiceNames() const
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_REGISTEREDSERVICENAMES )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusReply<QStringList> * ptr = new QDBusReply<QStringList>( obj->registeredServiceNames (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSREPLY<QSTRINGLIST>" );
  }
}


/*
QDBusReply<bool> isServiceRegistered(const QString &serviceName) const
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ISSERVICEREGISTERED )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDBusReply<bool> * ptr = new QDBusReply<bool>( obj->isServiceRegistered ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSREPLY<BOOL>" );
  }
}


/*
QDBusReply<QString> serviceOwner(const QString &name) const
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_SERVICEOWNER )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDBusReply<QString> * ptr = new QDBusReply<QString>( obj->serviceOwner ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSREPLY<QSTRING>" );
  }
}


/*
QDBusReply<bool> unregisterService(const QString &serviceName)
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_UNREGISTERSERVICE )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDBusReply<bool> * ptr = new QDBusReply<bool>( obj->unregisterService ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSREPLY<BOOL>" );
  }
}


/*
QDBusReply<QDBusConnectionInterface::RegisterServiceReply> registerService(const QString &serviceName,ServiceQueueOptions qoption = DontQueueService,ServiceReplacementOptions roption = DontAllowReplacement)
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_REGISTERSERVICE )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->registerService ( par1 ) );
  }
}


/*
QDBusReply<uint> servicePid(const QString &serviceName) const
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_SERVICEPID )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDBusReply<uint> * ptr = new QDBusReply<uint>( obj->servicePid ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSREPLY<UINT>" );
  }
}


/*
QDBusReply<uint> serviceUid(const QString &serviceName) const
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_SERVICEUID )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDBusReply<uint> * ptr = new QDBusReply<uint>( obj->serviceUid ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSREPLY<UINT>" );
  }
}


/*
QDBusReply<void> startService(const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_STARTSERVICE )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDBusReply<void> * ptr = new QDBusReply<void>( obj->startService ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSREPLY<VOID>" );
  }
}




#pragma ENDDUMP
