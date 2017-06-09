/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
REQUEST CONNECTIONCAPABILITIES
REQUEST QDBUSMESSAGE
REQUEST QDBUSPENDINGCALL
REQUEST QOBJECT
REQUEST QDBUSCONNECTIONINTERFACE
REQUEST QBYTEARRAY
#endif

CLASS QDBusConnection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isConnected
   METHOD baseService
   METHOD lastError
   METHOD name
   METHOD connectionCapabilities
   METHOD send
   METHOD callWithCallback1
   METHOD callWithCallback2
   METHOD callWithCallback
   METHOD call
   METHOD asyncCall
   METHOD connect1
   METHOD connect2
   METHOD connect3
   METHOD connect
   METHOD disconnect1
   METHOD disconnect2
   METHOD disconnect3
   METHOD disconnect
   METHOD registerObject
   METHOD unregisterObject
   METHOD objectRegisteredAt
   METHOD registerVirtualObject
   METHOD registerService
   METHOD unregisterService
   METHOD interface
   METHOD internalPointer
   METHOD connectToBus1
   METHOD connectToBus2
   METHOD connectToBus
   METHOD connectToPeer
   METHOD disconnectFromBus
   METHOD disconnectFromPeer
   METHOD localMachineId
   METHOD sessionBus
   METHOD systemBus
   METHOD sender

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusConnection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusConnection>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusConnection>
#endif

/*
QDBusConnection(const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_NEW1 )
{
  QDBusConnection * o = new QDBusConnection ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusConnection(const QDBusConnection &other)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_NEW2 )
{
  QDBusConnection * o = new QDBusConnection ();
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusConnection(const QString &name)
//[2]QDBusConnection(const QDBusConnection &other)

HB_FUNC_STATIC( QDBUSCONNECTION_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QDBUSCONNECTION_DELETE )
{
  QDBusConnection * obj = (QDBusConnection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isConnected() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_ISCONNECTED )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isConnected () );
  }
}


/*
QString baseService() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_BASESERVICE )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->baseService () ) );
  }
}


/*
QDBusError lastError() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_LASTERROR )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusError * ptr = new QDBusError( obj->lastError () );
    _qt5xhb_createReturnClass ( ptr, "QDBUSERROR", true );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_NAME )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->name () ) );
  }
}


/*
ConnectionCapabilities connectionCapabilities() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTIONCAPABILITIES )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    ConnectionCapabilities * ptr = new ConnectionCapabilities( obj->connectionCapabilities () );
    _qt5xhb_createReturnClass ( ptr, "CONNECTIONCAPABILITIES" );
  }
}


/*
bool send(const QDBusMessage &message) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SEND )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->send ( *PQDBUSMESSAGE(1) ) );
  }
}


/*
bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK1 )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->callWithCallback ( *PQDBUSMESSAGE(1), PQOBJECT(2), PCONSTCHAR(3), PCONSTCHAR(4), OPINT(5,-1) ) );
  }
}

/*
bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK2 )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->callWithCallback ( *PQDBUSMESSAGE(1), PQOBJECT(2), PCONSTCHAR(3), OPINT(4,-1) ) );
  }
}


//[1]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
//[2]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const

HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK )
{
  // TODO: implementar
}

/*
QDBusMessage call(const QDBusMessage &message, QDBus::CallMode mode = QDBus::Block,int timeout = -1) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CALL )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QDBus::Block : hb_parni(2);
    QDBusMessage * ptr = new QDBusMessage( obj->call ( *PQDBUSMESSAGE(1), (QDBus::CallMode) par2, OPINT(3,-1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


/*
QDBusPendingCall asyncCall(const QDBusMessage &message, int timeout = -1) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_ASYNCCALL )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusPendingCall * ptr = new QDBusPendingCall( obj->asyncCall ( *PQDBUSMESSAGE(1), OPINT(2,-1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSPENDINGCALL" );
  }
}


/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT1 )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->connect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQOBJECT(5), PCONSTCHAR(6) ) );
  }
}

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT2 )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->connect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQOBJECT(6), PCONSTCHAR(7) ) );
  }
}

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT3 )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->connect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRING(6), PQOBJECT(7), PCONSTCHAR(8) ) );
  }
}


//[1]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
//[2]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
//[3]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT )
{
  // TODO: implementar
}

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT1 )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->disconnect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQOBJECT(5), PCONSTCHAR(6) ) );
  }
}

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT2 )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->disconnect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), PQOBJECT(6), PCONSTCHAR(7) ) );
  }
}

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT3 )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->disconnect ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRINGLIST(5), PQSTRING(6), PQOBJECT(7), PCONSTCHAR(8) ) );
  }
}


//[1]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
//[2]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
//[3]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)

HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT )
{
  // TODO: implementar
}

/*
bool registerObject(const QString &path, QObject *object,RegisterOptions options = ExportAdaptors)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_REGISTEROBJECT )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->registerObject ( PQSTRING(1), PQOBJECT(2) ) );
  }
}


/*
void unregisterObject(const QString &path, UnregisterMode mode = UnregisterNode)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_UNREGISTEROBJECT )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unregisterObject ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject *objectRegisteredAt(const QString &path) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_OBJECTREGISTEREDAT )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->objectRegisteredAt ( PQSTRING(1) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
bool registerVirtualObject(const QString &path, QDBusVirtualObject *object,VirtualObjectRegisterOption options = SingleNode)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_REGISTERVIRTUALOBJECT )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->registerVirtualObject ( PQSTRING(1), PQDBUSVIRTUALOBJECT(2), par3 ) ); // TODO: parametro 3
  }
}


/*
bool registerService(const QString &serviceName)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_REGISTERSERVICE )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->registerService ( PQSTRING(1) ) );
  }
}


/*
bool unregisterService(const QString &serviceName)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_UNREGISTERSERVICE )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unregisterService ( PQSTRING(1) ) );
  }
}


/*
QDBusConnectionInterface *interface() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_INTERFACE )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusConnectionInterface * ptr = obj->interface ();
    _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTIONINTERFACE" );
  }
}


/*
void *internalPointer() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_INTERNALPOINTER )
{
  QDBusConnection * obj = (QDBusConnection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (void *) obj->internalPointer () );
  }
}


/*
static QDBusConnection connectToBus(BusType type, const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS1 ) // TODO: corrigir implementacao (parametro 1 ausente)
{
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::connectToBus ( par1, PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}

/*
static QDBusConnection connectToBus(const QString &address, const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS2 )
{
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::connectToBus ( PQSTRING(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}


//[1]static QDBusConnection connectToBus(BusType type, const QString &name)
//[2]static QDBusConnection connectToBus(const QString &address, const QString &name)

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS )
{
  // TODO: implementar
}

/*
static QDBusConnection connectToPeer(const QString &address, const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOPEER )
{
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::connectToPeer ( PQSTRING(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}


/*
static void disconnectFromBus(const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECTFROMBUS )
{
  QDBusConnection::disconnectFromBus ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void disconnectFromPeer(const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECTFROMPEER )
{
  QDBusConnection::disconnectFromPeer ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QByteArray localMachineId()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_LOCALMACHINEID )
{
  QByteArray * ptr = new QByteArray( QDBusConnection::localMachineId () );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
static QDBusConnection sessionBus()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SESSIONBUS )
{
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::sessionBus () );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}


/*
static QDBusConnection systemBus()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SYSTEMBUS )
{
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::systemBus () );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}


/*
static QDBusConnection sender()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SENDER )
{
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::sender () );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}



HB_FUNC_STATIC( QDBUSCONNECTION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDBUSCONNECTION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSCONNECTION_NEWFROM );
}

HB_FUNC_STATIC( QDBUSCONNECTION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSCONNECTION_NEWFROM );
}

HB_FUNC_STATIC( QDBUSCONNECTION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSCONNECTION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
