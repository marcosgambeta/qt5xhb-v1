$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QVARIANT
#endif

CLASS QAbstractSocket INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD abort
   METHOD connectToHost1
   METHOD connectToHost2
   METHOD disconnectFromHost
   METHOD error
   METHOD flush
   METHOD isValid
   METHOD localAddress
   METHOD localPort
   METHOD peerAddress
   METHOD peerName
   METHOD peerPort
   METHOD proxy
   METHOD readBufferSize
   METHOD setProxy
   METHOD setReadBufferSize
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD socketDescriptor
   METHOD socketOption
   METHOD socketType
   METHOD state
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onHostFound
   METHOD onProxyAuthenticationRequired
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QHostAddress>
#include <QNetworkProxy>

/*
QAbstractSocket ( SocketType socketType, QObject * parent )
*/
$constructor=|new|QAbstractSocket::SocketType,QObject *

$deleteMethod

/*
void abort ()
*/
$method=|void|abort|

/*
void connectToHost ( const QString & hostName, quint16 port, OpenMode openMode = ReadWrite )
*/
$method=|void|connectToHost,connectToHost1|const QString &,quint16,QAbstractSocket::OpenMode=QAbstractSocket::ReadWrite

/*
void connectToHost ( const QHostAddress & address, quint16 port, OpenMode openMode = ReadWrite )
*/
$method=|void|connectToHost,connectToHost2|const QHostAddress &,quint16,QAbstractSocket::OpenMode=QAbstractSocket::ReadWrite

/*
void disconnectFromHost ()
*/
$method=|void|disconnectFromHost|

/*
SocketError error () const
*/
$method=|QAbstractSocket::SocketError|error|

/*
bool flush ()
*/
$method=|bool|flush|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QHostAddress localAddress () const
*/
$method=|QHostAddress|localAddress|

/*
quint16 localPort () const
*/
$method=|quint16|localPort|

/*
QHostAddress peerAddress () const
*/
$method=|QHostAddress|peerAddress|

/*
QString peerName () const
*/
$method=|QString|peerName|

/*
quint16 peerPort () const
*/
$method=|quint16|peerPort|

/*
QNetworkProxy proxy () const
*/
$method=|QNetworkProxy|proxy|

/*
qint64 readBufferSize () const
*/
$method=|qint64|readBufferSize|

/*
void setProxy ( const QNetworkProxy & networkProxy )
*/
$method=|void|setProxy|const QNetworkProxy &

/*
void setReadBufferSize ( qint64 size )
*/
$method=|void|setReadBufferSize|qint64

/*
bool setSocketDescriptor ( int socketDescriptor, SocketState socketState = ConnectedState, OpenMode openMode = ReadWrite )
*/
$method=|bool|setSocketDescriptor|int,QAbstractSocket::SocketState=QAbstractSocket::ConnectedState,QAbstractSocket::OpenMode=QAbstractSocket::ReadWrite

/*
void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
*/
$method=|void|setSocketOption|QAbstractSocket::SocketOption,const QVariant &

/*
int socketDescriptor () const
*/
$method=|int|socketDescriptor|

/*
QVariant socketOption ( QAbstractSocket::SocketOption option )
*/
$method=|QVariant|socketOption|QAbstractSocket::SocketOption

/*
SocketType socketType () const
*/
$method=|QAbstractSocket::SocketType|socketType|

/*
SocketState state () const
*/
$method=|QAbstractSocket::SocketState|state|

/*
bool waitForConnected ( int msecs = 30000 )
*/
$method=|bool|waitForConnected|int=30000

/*
bool waitForDisconnected ( int msecs = 30000 )
*/
$method=|bool|waitForDisconnected|int=30000

/*
virtual bool atEnd () const
*/
$method=|bool|atEnd|

/*
virtual qint64 bytesAvailable () const
*/
$method=|qint64|bytesAvailable|

/*
virtual qint64 bytesToWrite () const
*/
$method=|qint64|bytesToWrite|

/*
virtual bool canReadLine () const
*/
$method=|bool|canReadLine|

/*
virtual void close ()
*/
$method=|void|close|

/*
virtual bool isSequential () const
*/
$method=|bool|isSequential|

/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
$method=|bool|waitForBytesWritten|int=30000

/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
$method=|bool|waitForReadyRead|int=30000

#pragma ENDDUMP
