$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QMASKGENERATOR
REQUEST QURL
REQUEST QSSLCONFIGURATION
#endif

CLASS QWebSocket INHERIT QObject

   METHOD new
   METHOD delete
   METHOD abort
   METHOD error
   METHOD errorString
   METHOD flush
   METHOD isValid
   METHOD localAddress
   METHOD localPort
   METHOD pauseMode
   METHOD peerAddress
   METHOD peerName
   METHOD peerPort
   METHOD proxy
   METHOD setProxy
   METHOD maskGenerator
   METHOD setMaskGenerator
   METHOD readBufferSize
   METHOD setReadBufferSize
   METHOD resume
   METHOD setPauseMode
   METHOD state
   METHOD version
   METHOD resourceName
   METHOD requestUrl
   METHOD origin
   METHOD closeCode
   METHOD closeReason
   METHOD sendTextMessage
   METHOD sendBinaryMessage
   METHOD ignoreSslErrors
   METHOD sslConfiguration
   METHOD setSslConfiguration
   METHOD close
   METHOD open
   METHOD ping

   METHOD onAboutToClose
   METHOD onConnected
   METHOD onDisconnected
   METHOD onStateChanged
   METHOD onProxyAuthenticationRequired
   METHOD onReadChannelFinished
   METHOD onTextFrameReceived
   METHOD onBinaryFrameReceived
   METHOD onTextMessageReceived
   METHOD onBinaryMessageReceived
   METHOD onError
   METHOD onPong
   METHOD onBytesWritten
   METHOD onSslErrors

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,3,0

/*
explicit QWebSocket(const QString &origin = QString(),QWebSocketProtocol::Version version = QWebSocketProtocol::VersionLatest,QObject *parent = Q_NULLPTR)
*/
$constructor=5,3,0|new|const QString &=QString(),QWebSocketProtocol::Version=QWebSocketProtocol::VersionLatest,QObject *=Q_NULLPTR

$deleteMethod=5,3,0

/*
void abort()
*/
$method=5,3,0|void|abort|

/*
QAbstractSocket::SocketError error() const
*/
$method=5,3,0|QAbstractSocket::SocketError|error|

/*
QString errorString() const
*/
$method=5,3,0|QString|errorString|

/*
bool flush()
*/
$method=5,3,0|bool|flush|

/*
bool isValid() const
*/
$method=5,3,0|bool|isValid|

/*
QHostAddress localAddress() const
*/
$method=5,3,0|QHostAddress|localAddress|

/*
quint16 localPort() const
*/
$method=5,3,0|quint16|localPort|

/*
QAbstractSocket::PauseModes pauseMode() const
*/
$method=5,3,0|QAbstractSocket::PauseModes|pauseMode|

/*
QHostAddress peerAddress() const
*/
$method=5,3,0|QHostAddress|peerAddress|

/*
QString peerName() const
*/
$method=5,3,0|QString|peerName|

/*
quint16 peerPort() const
*/
$method=5,3,0|quint16|peerPort|

/*
QNetworkProxy proxy() const
*/
$method=5,3,0|QNetworkProxy|proxy|

/*
void setProxy(const QNetworkProxy &networkProxy)
*/
$method=5,3,0|void|setProxy|const QNetworkProxy &

/*
const QMaskGenerator *maskGenerator() const
*/
$method=5,3,0|const QMaskGenerator *|maskGenerator|

/*
void setMaskGenerator(const QMaskGenerator *maskGenerator)
*/
$method=5,3,0|void|setMaskGenerator|const QMaskGenerator *

/*
qint64 readBufferSize() const
*/
$method=5,3,0|qint64|readBufferSize|

/*
void setReadBufferSize(qint64 size)
*/
$method=5,3,0|void|setReadBufferSize|qint64

/*
void resume()
*/
$method=5,3,0|void|resume|

/*
void setPauseMode(QAbstractSocket::PauseModes pauseMode)
*/
$method=5,3,0|void|setPauseMode|QAbstractSocket::PauseModes

/*
QAbstractSocket::SocketState state() const
*/
$method=5,3,0|QAbstractSocket::SocketState|state|

/*
QWebSocketProtocol::Version version() const
*/
$method=5,3,0|QWebSocketProtocol::Version|version|

/*
QString resourceName() const
*/
$method=5,3,0|QString|resourceName|

/*
QUrl requestUrl() const
*/
$method=5,3,0|QUrl|requestUrl|

/*
QString origin() const
*/
$method=5,3,0|QString|origin|

/*
QWebSocketProtocol::CloseCode closeCode() const
*/
$method=5,3,0|QWebSocketProtocol::CloseCode|closeCode|

/*
QString closeReason() const
*/
$method=5,3,0|QString|closeReason|

/*
qint64 sendTextMessage(const QString &message)
*/
$method=5,3,0|qint64|sendTextMessage|const QString &

/*
qint64 sendBinaryMessage(const QByteArray &data)
*/
$method=5,3,0|qint64|sendBinaryMessage|const QByteArray &

/*
void ignoreSslErrors(const QList<QSslError> &errors)
*/
$internalMethod=5,3,0|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

/*
void ignoreSslErrors()
*/
$internalMethod=5,3,0|void|ignoreSslErrors,ignoreSslErrors2|

//[1]void ignoreSslErrors(const QList<QSslError> &errors)
//[2]void ignoreSslErrors()

HB_FUNC_STATIC( QWEBSOCKET_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QWebSocket_ignoreSslErrors1();
  }
  else if( ISNUMPAR(0) )
  {
    QWebSocket_ignoreSslErrors2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSslConfiguration sslConfiguration() const
*/
$method=5,3,0|QSslConfiguration|sslConfiguration|

/*
void setSslConfiguration(const QSslConfiguration &sslConfiguration)
*/
$method=5,3,0|void|setSslConfiguration|const QSslConfiguration &

/*
void close(QWebSocketProtocol::CloseCode closeCode = QWebSocketProtocol::CloseCodeNormal,const QString &reason = QString())
*/
$method=5,3,0|void|close|QWebSocketProtocol::CloseCode=QWebSocketProtocol::CloseCodeNormal,const QString &=QString()

/*
void open(const QUrl &url)
*/
$method=5,3,0|void|open|const QUrl &

/*
void ping(const QByteArray &payload = QByteArray())
*/
$method=5,3,0|void|ping|const QByteArray &=QByteArray()

#pragma ENDDUMP
