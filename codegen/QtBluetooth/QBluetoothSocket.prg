$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothSocket INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD abort
   METHOD close
   METHOD isSequential
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD connectToService
   METHOD disconnectFromService
   METHOD localName
   METHOD localAddress
   METHOD localPort
   METHOD peerName
   METHOD peerAddress
   METHOD peerPort
   METHOD setSocketDescriptor
   METHOD socketDescriptor
   METHOD socketType
   METHOD state
   METHOD error
   METHOD errorString

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

$includes=5,2,0

/*
QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = 0)
*/
void QBluetoothSocket_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * o = new QBluetoothSocket ( (QBluetoothServiceInfo::Protocol) hb_parni(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothSocket(QObject *parent = 0)
*/
void QBluetoothSocket_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * o = new QBluetoothSocket ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = 0)
//[2]QBluetoothSocket(QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHSOCKET_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothSocket_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothSocket_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
void abort()
*/
$method=5,2,0|void|abort|

/*
virtual void close()
*/
$method=5,2,0|void|close|

/*
bool isSequential() const
*/
$method=5,2,0|bool|isSequential|

/*
virtual qint64 bytesAvailable() const
*/
$method=5,2,0|qint64|bytesAvailable|

/*
virtual qint64 bytesToWrite() const
*/
$method=5,2,0|qint64|bytesToWrite|

/*
virtual bool canReadLine() const
*/
$method=5,2,0|bool|canReadLine|

/*
void connectToService(const QBluetoothServiceInfo &service, OpenMode openMode = ReadWrite)
*/
void QBluetoothSocket_connectToService1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
    obj->connectToService ( *PQBLUETOOTHSERVICEINFO(1), (QIODevice::OpenMode) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
*/
void QBluetoothSocket_connectToService2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) QIODevice::ReadWrite : hb_parni(3);
    obj->connectToService ( *PQBLUETOOTHADDRESS(1), *PQBLUETOOTHUUID(2), (QIODevice::OpenMode) par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)
*/
void QBluetoothSocket_connectToService3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) QIODevice::ReadWrite : hb_parni(3);
    obj->connectToService ( *PQBLUETOOTHADDRESS(1), PQUINT16(2), (QIODevice::OpenMode) par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void connectToService(const QBluetoothServiceInfo &service, OpenMode openMode = ReadWrite)
//[2]void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
//[3]void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)

HB_FUNC_STATIC( QBLUETOOTHSOCKET_CONNECTTOSERVICE )
{
  if( ISBETWEEN(1,2) && ISQBLUETOOTHSERVICEINFO(1) && ISOPTNUM(2) )
  {
    QBluetoothSocket_connectToService1();
  }
  else if( ISBETWEEN(2,3) && ISQBLUETOOTHADDRESS(1) && ISQBLUETOOTHUUID(2) && ISOPTNUM(3) )
  {
    QBluetoothSocket_connectToService2();
  }
  else if( ISBETWEEN(2,3) && ISQBLUETOOTHADDRESS(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QBluetoothSocket_connectToService3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void disconnectFromService()
*/
$method=5,2,0|void|disconnectFromService|

/*
QString localName() const
*/
$method=5,2,0|QString|localName|

/*
QBluetoothAddress localAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_LOCALADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->localAddress () );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}

/*
quint16 localPort() const
*/
$method=5,2,0|quint16|localPort|

/*
QString peerName() const
*/
$method=5,2,0|QString|peerName|

/*
QBluetoothAddress peerAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_PEERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->peerAddress () );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}

/*
quint16 peerPort() const
*/
$method=5,2,0|quint16|peerPort|

/*
bool setSocketDescriptor(int socketDescriptor, QBluetoothServiceInfo::Protocol socketType,SocketState socketState = ConnectedState,OpenMode openMode = ReadWrite)
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_SETSOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
      int par3 = ISNIL(3)? (int) QBluetoothSocket::ConnectedState : hb_parni(3);
      int par4 = ISNIL(4)? (int) QIODevice::ReadWrite : hb_parni(4);
      RBOOL( obj->setSocketDescriptor ( PINT(1), (QBluetoothServiceInfo::Protocol) hb_parni(2), (QBluetoothSocket::SocketState) par3, (QIODevice::OpenMode) par4 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
int socketDescriptor() const
*/
$method=5,2,0|int|socketDescriptor|

/*
QBluetoothServiceInfo::Protocol socketType() const
*/
$method=5,2,0|QBluetoothServiceInfo::Protocol|socketType|

/*
SocketState state() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->state () );
  }
#endif
}

/*
SocketError error() const
*/
HB_FUNC_STATIC( QBLUETOOTHSOCKET_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothSocket * obj = (QBluetoothSocket *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}

/*
QString errorString() const
*/
$method=5,2,0|QString|errorString|

#pragma ENDDUMP
