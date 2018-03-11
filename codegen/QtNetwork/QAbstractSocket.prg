%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QVARIANT
#endif

CLASS QAbstractSocket INHERIT QIODevice

   METHOD new
   METHOD delete

   METHOD abort
   METHOD atEnd
   METHOD bind
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD connectToHost
   METHOD disconnectFromHost
   METHOD error
   METHOD flush
   METHOD isSequential
   METHOD isValid
   METHOD localAddress
   METHOD localPort
   METHOD pauseMode
   METHOD peerAddress
   METHOD peerName
   METHOD peerPort
%% #ifndef QT_NO_NETWORKPROXY
   METHOD proxy
%% #endif
   METHOD readBufferSize
   METHOD resume
   METHOD setPauseMode
%% #ifndef QT_NO_NETWORKPROXY
   METHOD setProxy
%% #endif
   METHOD setReadBufferSize
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD socketDescriptor
   METHOD socketOption
   METHOD socketType
   METHOD state
   METHOD waitForBytesWritten
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD waitForReadyRead

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onHostFound
%% #ifndef QT_NO_NETWORKPROXY
   METHOD onProxyAuthenticationRequired
%% #endif
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QHostAddress>
#include <QNetworkProxy>

$prototype=QAbstractSocket ( SocketType socketType, QObject * parent )
$constructor=|new|QAbstractSocket::SocketType,QObject *

$prototype=QAbstractSocket(SocketType socketType, QAbstractSocketPrivate &dd, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAbstractSocket()
$deleteMethod

$prototype=virtual void resume()
$virtualMethod=|void|resume|

$prototype=PauseModes pauseMode() const
$method=|QAbstractSocket::PauseModes|pauseMode|

$prototype=void setPauseMode(PauseModes pauseMode)
$method=|void|setPauseMode|QAbstractSocket::PauseModes

$prototype=bool bind(const QHostAddress &address, quint16 port = 0, BindMode mode = DefaultForPlatform)
$internalMethod=|bool|bind,bind1|const QHostAddress &,quint16=0,QAbstractSocket::BindMode=QAbstractSocket::DefaultForPlatform

$prototype=bool bind(quint16 port = 0, BindMode mode = DefaultForPlatform)
$internalMethod=|bool|bind,bind2|quint16=0,QAbstractSocket::BindMode=QAbstractSocket::DefaultForPlatform

//[1]bool bind(const QHostAddress &address, quint16 port = 0, BindMode mode = DefaultForPlatform)
//[2]bool bind(quint16 port = 0, BindMode mode = DefaultForPlatform)

HB_FUNC_STATIC( QABSTRACTSOCKET_BIND )
{
  if( ISBETWEEN(1,3) && ISQHOSTADDRESS(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QAbstractSocket_bind1();
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QAbstractSocket_bind2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual void connectToHost(const QString &hostName, quint16 port, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)
$internalVirtualMethod=|void|connectToHost,connectToHost1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite,QAbstractSocket::NetworkLayerProtocol=QAbstractSocket::AnyIPProtocol

$prototype=virtual void connectToHost(const QHostAddress &address, quint16 port, OpenMode mode = ReadWrite)
$internalVirtualMethod=|void|connectToHost,connectToHost2|const QHostAddress &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

//[1]virtual void connectToHost(const QString &hostName, quint16 port, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)
//[2]virtual void connectToHost(const QHostAddress &address, quint16 port, OpenMode mode = ReadWrite)

HB_FUNC_STATIC( QABSTRACTSOCKET_CONNECTTOHOST )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QAbstractSocket_connectToHost1();
  }
  else if( ISBETWEEN(2,3) && ISQHOSTADDRESS(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QAbstractSocket_connectToHost2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual void disconnectFromHost()
$virtualMethod=|void|disconnectFromHost|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=qint64 bytesAvailable() const Q_DECL_OVERRIDE
$method=|qint64|bytesAvailable|

$prototype=qint64 bytesToWrite() const Q_DECL_OVERRIDE
$method=|qint64|bytesToWrite|

$prototype=bool canReadLine() const Q_DECL_OVERRIDE
$method=|bool|canReadLine|

$prototype=quint16 localPort() const
$method=|quint16|localPort|

$prototype=QHostAddress localAddress() const
$method=|QHostAddress|localAddress|

$prototype=quint16 peerPort() const
$method=|quint16|peerPort|

$prototype=QHostAddress peerAddress() const
$method=|QHostAddress|peerAddress|

$prototype=QString peerName() const
$method=|QString|peerName|

$prototype=qint64 readBufferSize() const
$method=|qint64|readBufferSize|

$prototype=virtual void setReadBufferSize(qint64 size)
$virtualMethod=|void|setReadBufferSize|qint64

$prototype=void abort()
$method=|void|abort|

$prototype=virtual qintptr socketDescriptor() const
$virtualMethod=|qintptr|socketDescriptor|

$prototype=virtual bool setSocketDescriptor(qintptr socketDescriptor, SocketState state = ConnectedState, OpenMode openMode = ReadWrite)
$virtualMethod=|bool|setSocketDescriptor|qintptr,QAbstractSocket::SocketState=QAbstractSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant &value)
$virtualMethod=|void|setSocketOption|QAbstractSocket::SocketOption,const QVariant &

$prototype=virtual QVariant socketOption(QAbstractSocket::SocketOption option)
$virtualMethod=|QVariant|socketOption|QAbstractSocket::SocketOption

$prototype=SocketType socketType() const
$method=|QAbstractSocket::SocketType|socketType|

$prototype=SocketState state() const
$method=|QAbstractSocket::SocketState|state|

$prototype=SocketError error() const
$method=|QAbstractSocket::SocketError|error|

$prototype=void close() Q_DECL_OVERRIDE
$method=|void|close|

$prototype=bool isSequential() const Q_DECL_OVERRIDE
$method=|bool|isSequential|

$prototype=bool atEnd() const Q_DECL_OVERRIDE
$method=|bool|atEnd|

$prototype=bool flush()
$method=|bool|flush|

$prototype=virtual bool waitForConnected(int msecs = 30000)
$virtualMethod=|bool|waitForConnected|int=30000

$prototype=bool waitForReadyRead(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForReadyRead|int=30000

$prototype=bool waitForBytesWritten(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForDisconnected(int msecs = 30000)
$virtualMethod=|bool|waitForDisconnected|int=30000

%% #ifndef QT_NO_NETWORKPROXY

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=|void|setProxy|const QNetworkProxy &

$prototype=QNetworkProxy proxy() const
$method=|QNetworkProxy|proxy|

%% #endif

$prototype=qint64 readData(char *data, qint64 maxlen) Q_DECL_OVERRIDE (protected)

$prototype=qint64 readLineData(char *data, qint64 maxlen) Q_DECL_OVERRIDE (protected)

$prototype=qint64 writeData(const char *data, qint64 len) Q_DECL_OVERRIDE (protected)

$prototype=void setSocketState(SocketState state) (protected)

$prototype=void setSocketError(SocketError socketError) (protected)

$prototype=void setLocalPort(quint16 port) (protected)

$prototype=void setLocalAddress(const QHostAddress &address) (protected)

$prototype=void setPeerPort(quint16 port) (protected)

$prototype=void setPeerAddress(const QHostAddress &address) (protected)

$prototype=void setPeerName(const QString &name) (protected)

$beginSignals
$signal=|connected()
$signal=|disconnected()
$signal=|error(QAbstractSocket::SocketError)
$signal=|hostFound()
%% #ifndef QT_NO_NETWORKPROXY
$signal=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
%% #endif
$signal=|stateChanged(QAbstractSocket::SocketState)
$endSignals

#pragma ENDDUMP
