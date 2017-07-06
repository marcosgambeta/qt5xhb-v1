$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSREPLY<QSTRINGLIST>
REQUEST QDBUSREPLY<BOOL>
REQUEST QDBUSREPLY<QSTRING>
REQUEST QDBUSREPLY<UINT>
REQUEST QDBUSREPLY<VOID>
#endif

CLASS QDBusConnectionInterface INHERIT QDBusAbstractInterface

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

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusConnectionInterface(const QDBusConnection &connection, QObject *parent)
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_NEW )
{
  QDBusConnectionInterface * o = new QDBusConnectionInterface ( PQOBJECT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QDBusReply<QStringList> registeredServiceNames() const
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_REGISTEREDSERVICENAMES )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusReply<QStringList> * ptr = new QDBusReply<QStringList>( obj->registeredServiceNames () );
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
    QDBusReply<bool> * ptr = new QDBusReply<bool>( obj->isServiceRegistered ( PQSTRING(1) ) );
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
    QDBusReply<QString> * ptr = new QDBusReply<QString>( obj->serviceOwner ( PQSTRING(1) ) );
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
    QDBusReply<bool> * ptr = new QDBusReply<bool>( obj->unregisterService ( PQSTRING(1) ) );
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
    hb_retni( obj->registerService ( PQSTRING(1) ) );
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
    QDBusReply<uint> * ptr = new QDBusReply<uint>( obj->servicePid ( PQSTRING(1) ) );
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
    QDBusReply<uint> * ptr = new QDBusReply<uint>( obj->serviceUid ( PQSTRING(1) ) );
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
    QDBusReply<void> * ptr = new QDBusReply<void>( obj->startService ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSREPLY<VOID>" );
  }
}




#pragma ENDDUMP
