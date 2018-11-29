%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QIODevice

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = 0)
$internalConstructor=5,2,0|new1|QBluetoothServiceInfo::Protocol,QObject *=0

$prototype=QBluetoothSocket(QObject *parent = 0)
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

$prototype=void abort()
$method=5,2,0|void|abort|

$prototype=virtual void close()
$virtualMethod=5,2,0|void|close|

$prototype=bool isSequential() const
$method=5,2,0|bool|isSequential|

$prototype=virtual qint64 bytesAvailable() const
$virtualMethod=5,2,0|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite() const
$virtualMethod=5,2,0|qint64|bytesToWrite|

$prototype=virtual bool canReadLine() const
$virtualMethod=5,2,0|bool|canReadLine|

$prototype=void connectToService(const QBluetoothServiceInfo &service, OpenMode openMode = ReadWrite)
$internalMethod=5,2,0|void|connectToService,connectToService1|const QBluetoothServiceInfo &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
$internalMethod=5,2,0|void|connectToService,connectToService2|const QBluetoothAddress &,const QBluetoothUuid &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)
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
$addMethod=connectToService

$prototype=void disconnectFromService()
$method=5,2,0|void|disconnectFromService|

$prototype=QString localName() const
$method=5,2,0|QString|localName|

$prototype=QBluetoothAddress localAddress() const
$method=5,2,0|QBluetoothAddress|localAddress|

$prototype=quint16 localPort() const
$method=5,2,0|quint16|localPort|

$prototype=QString peerName() const
$method=5,2,0|QString|peerName|

$prototype=QBluetoothAddress peerAddress() const
$method=5,2,0|QBluetoothAddress|peerAddress|

$prototype=quint16 peerPort() const
$method=5,2,0|quint16|peerPort|

$prototype=bool setSocketDescriptor(int socketDescriptor, QBluetoothServiceInfo::Protocol socketType,SocketState socketState = ConnectedState,OpenMode openMode = ReadWrite)
$method=5,2,0|bool|setSocketDescriptor|int,QBluetoothServiceInfo::Protocol,QBluetoothSocket::SocketState=QBluetoothSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=int socketDescriptor() const
$method=5,2,0|int|socketDescriptor|

$prototype=QBluetoothServiceInfo::Protocol socketType() const
$method=5,2,0|QBluetoothServiceInfo::Protocol|socketType|

$prototype=SocketState state() const
$method=5,2,0|QBluetoothSocket::SocketState|state|

$prototype=SocketError error() const
$method=5,2,0|QBluetoothSocket::SocketError|error|

$prototype=QString errorString() const
$method=5,2,0|QString|errorString|

$beginSignals
$signal=5,2,0|connected()
$signal=5,2,0|disconnected()
$signal=5,2,0|error(QBluetoothSocket::SocketError)
$signal=5,2,0|stateChanged(QBluetoothSocket::SocketState)
$endSignals

#pragma ENDDUMP
