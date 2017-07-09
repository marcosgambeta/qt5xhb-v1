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

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = 0)
*/
$internalConstructor=5,2,0|new1|QBluetoothServiceInfo::Protocol,QObject *=0

/*
QBluetoothSocket(QObject *parent = 0)
*/
$internalConstructor=5,2,0|new2|QObject *=0

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
$internalMethod=5,2,0|void|connectToService,connectToService1|const QBluetoothServiceInfo &,QIODevice::OpenMode=QIODevice::ReadWrite

/*
void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
*/
$internalMethod=5,2,0|void|connectToService,connectToService2|const QBluetoothAddress &,const QBluetoothUuid &,QIODevice::OpenMode=QIODevice::ReadWrite

/*
void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)
*/
$internalMethod=5,2,0|void|connectToService,connectToService3|const QBluetoothAddress &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

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
$method=5,2,0|QBluetoothAddress|localAddress|

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
$method=5,2,0|QBluetoothAddress|peerAddress|

/*
quint16 peerPort() const
*/
$method=5,2,0|quint16|peerPort|

/*
bool setSocketDescriptor(int socketDescriptor, QBluetoothServiceInfo::Protocol socketType,SocketState socketState = ConnectedState,OpenMode openMode = ReadWrite)
*/
$method=5,2,0|bool|setSocketDescriptor|int,QBluetoothServiceInfo::Protocol,QBluetoothSocket::SocketState=QBluetoothSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

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
$method=5,2,0|QBluetoothSocket::SocketState|state|

/*
SocketError error() const
*/
$method=5,2,0|QBluetoothSocket::SocketError|error|

/*
QString errorString() const
*/
$method=5,2,0|QString|errorString|

#pragma ENDDUMP
