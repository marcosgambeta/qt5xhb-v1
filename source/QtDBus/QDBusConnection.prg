/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
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
   DATA class_id INIT Class_Id_QDBusConnection
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusConnection>
#endif
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusConnection>
#endif
#endif

/*
QDBusConnection(const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QDBusConnection * o = new QDBusConnection ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusConnection *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDBusConnection(const QDBusConnection &other)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusConnection * o = new QDBusConnection (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusConnection *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDBusConnection(const QString &name)
//[2]QDBusConnection(const QDBusConnection &other)

HB_FUNC_STATIC( QDBUSCONNECTION_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QDBUSCONNECTION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool isConnected() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_ISCONNECTED )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isConnected (  ) );
  }
}


/*
QString baseService() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_BASESERVICE )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->baseService (  ).toLatin1().data() );
  }
}


/*
QDBusError lastError() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_LASTERROR )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusError * ptr = new QDBusError( obj->lastError (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSERROR" );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_NAME )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
ConnectionCapabilities connectionCapabilities() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTIONCAPABILITIES )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    ConnectionCapabilities * ptr = new ConnectionCapabilities( obj->connectionCapabilities (  ) );
    _qt5xhb_createReturnClass ( ptr, "CONNECTIONCAPABILITIES" );
  }
}


/*
bool send(const QDBusMessage &message) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SEND )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->send (  ) );
  }
}


/*
bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK1 )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
    const char * par3 = hb_parc(3);
    const char * par4 = hb_parc(4);
    hb_retl( obj->callWithCallback ( par2,  (const char *) par3,  (const char *) par4, (int) ISNIL(5)? -1 : hb_parni(5) ) );
  }
}

/*
bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK2 )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
    const char * par3 = hb_parc(3);
    hb_retl( obj->callWithCallback ( par2,  (const char *) par3, (int) ISNIL(4)? -1 : hb_parni(4) ) );
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
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QDBus::Block : hb_parni(2);
    QDBusMessage * ptr = new QDBusMessage( obj->call (  (QDBus::CallMode) par2, (int) ISNIL(3)? -1 : hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSMESSAGE" );
  }
}


/*
QDBusPendingCall asyncCall(const QDBusMessage &message, int timeout = -1) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_ASYNCCALL )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusPendingCall * ptr = new QDBusPendingCall( obj->asyncCall ( (int) ISNIL(2)? -1 : hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSPENDINGCALL" );
  }
}


/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT1 )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QString par4 = QLatin1String( hb_parc(4) );
    QObject * par5 = (QObject *) _qtxhb_itemGetPtr(5);
    const char * par6 = hb_parc(6);
    hb_retl( obj->connect ( par1, par2, par3, par4, par5,  (const char *) par6 ) );
  }
}

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT2 )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QString par4 = QLatin1String( hb_parc(4) );
    QString par5 = QLatin1String( hb_parc(5) );
    QObject * par6 = (QObject *) _qtxhb_itemGetPtr(6);
    const char * par7 = hb_parc(7);
    hb_retl( obj->connect ( par1, par2, par3, par4, par5, par6,  (const char *) par7 ) );
  }
}

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT3 )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QString par4 = QLatin1String( hb_parc(4) );
QStringList par5;
PHB_ITEM aStrings5 = hb_param(5, HB_IT_ARRAY);
int i5;
int nLen5 = hb_arrayLen(aStrings5);
for (i5=0;i5<nLen5;i5++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings5, i5+1) );
par5 << temp;
}
    QString par6 = QLatin1String( hb_parc(6) );
    QObject * par7 = (QObject *) _qtxhb_itemGetPtr(7);
    const char * par8 = hb_parc(8);
    hb_retl( obj->connect ( par1, par2, par3, par4, par5, par6, par7,  (const char *) par8 ) );
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
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QString par4 = QLatin1String( hb_parc(4) );
    QObject * par5 = (QObject *) _qtxhb_itemGetPtr(5);
    const char * par6 = hb_parc(6);
    hb_retl( obj->disconnect ( par1, par2, par3, par4, par5,  (const char *) par6 ) );
  }
}

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT2 )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QString par4 = QLatin1String( hb_parc(4) );
    QString par5 = QLatin1String( hb_parc(5) );
    QObject * par6 = (QObject *) _qtxhb_itemGetPtr(6);
    const char * par7 = hb_parc(7);
    hb_retl( obj->disconnect ( par1, par2, par3, par4, par5, par6,  (const char *) par7 ) );
  }
}

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT3 )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QString par4 = QLatin1String( hb_parc(4) );
QStringList par5;
PHB_ITEM aStrings5 = hb_param(5, HB_IT_ARRAY);
int i5;
int nLen5 = hb_arrayLen(aStrings5);
for (i5=0;i5<nLen5;i5++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings5, i5+1) );
par5 << temp;
}
    QString par6 = QLatin1String( hb_parc(6) );
    QObject * par7 = (QObject *) _qtxhb_itemGetPtr(7);
    const char * par8 = hb_parc(8);
    hb_retl( obj->disconnect ( par1, par2, par3, par4, par5, par6, par7,  (const char *) par8 ) );
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
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->registerObject ( par1, par2 ) );
  }
}


/*
void unregisterObject(const QString &path, UnregisterMode mode = UnregisterNode)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_UNREGISTEROBJECT )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->unregisterObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject *objectRegisteredAt(const QString &path) const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_OBJECTREGISTEREDAT )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QObject * ptr = obj->objectRegisteredAt ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
bool registerVirtualObject(const QString &path, QDBusVirtualObject *object,VirtualObjectRegisterOption options = SingleNode)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_REGISTERVIRTUALOBJECT )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDBusVirtualObject * par2 = (QDBusVirtualObject *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->registerVirtualObject ( par1, par2 ) );
  }
}


/*
bool registerService(const QString &serviceName)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_REGISTERSERVICE )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->registerService ( par1 ) );
  }
}


/*
bool unregisterService(const QString &serviceName)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_UNREGISTERSERVICE )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->unregisterService ( par1 ) );
  }
}


/*
QDBusConnectionInterface *interface() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_INTERFACE )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusConnectionInterface * ptr = obj->interface (  );
    _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTIONINTERFACE" );
  }
}


/*
void *internalPointer() const
*/
HB_FUNC_STATIC( QDBUSCONNECTION_INTERNALPOINTER )
{
  QDBusConnection * obj = (QDBusConnection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (void *) obj->internalPointer (  ) );
  }
}


/*
static QDBusConnection connectToBus(BusType type, const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS1 )
{
  QString par2 = QLatin1String( hb_parc(2) );
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::connectToBus ( par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}

/*
static QDBusConnection connectToBus(const QString &address, const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::connectToBus ( par1, par2 ) );
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
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::connectToPeer ( par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}


/*
static void disconnectFromBus(const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECTFROMBUS )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QDBusConnection::disconnectFromBus ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void disconnectFromPeer(const QString &name)
*/
HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECTFROMPEER )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QDBusConnection::disconnectFromPeer ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QByteArray localMachineId()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_LOCALMACHINEID )
{
  QByteArray * ptr = new QByteArray( QDBusConnection::localMachineId (  ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
static QDBusConnection sessionBus()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SESSIONBUS )
{
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::sessionBus (  ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}


/*
static QDBusConnection systemBus()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SYSTEMBUS )
{
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::systemBus (  ) );
  _qt5xhb_createReturnClass ( ptr, "QDBUSCONNECTION" );
}


/*
static QDBusConnection sender()
*/
HB_FUNC_STATIC( QDBUSCONNECTION_SENDER )
{
  QDBusConnection * ptr = new QDBusConnection( QDBusConnection::sender (  ) );
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