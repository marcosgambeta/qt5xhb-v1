%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebSockets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,3,0

#include <QtWebSockets/QMaskGenerator>

$prototype=explicit QWebSocket(const QString &origin = QString(),QWebSocketProtocol::Version version = QWebSocketProtocol::VersionLatest,QObject *parent = Q_NULLPTR)
$constructor=5,3,0|new|const QString &=QString(),QWebSocketProtocol::Version=QWebSocketProtocol::VersionLatest,QObject *=Q_NULLPTR

$deleteMethod=5,3,0

$prototype=void abort()
$method=5,3,0|void|abort|

$prototype=QAbstractSocket::SocketError error() const
$method=5,3,0|QAbstractSocket::SocketError|error|

$prototype=QString errorString() const
$method=5,3,0|QString|errorString|

$prototype=bool flush()
$method=5,3,0|bool|flush|

$prototype=bool isValid() const
$method=5,3,0|bool|isValid|

$prototype=QHostAddress localAddress() const
$method=5,3,0|QHostAddress|localAddress|

$prototype=quint16 localPort() const
$method=5,3,0|quint16|localPort|

$prototype=QAbstractSocket::PauseModes pauseMode() const
$method=5,3,0|QAbstractSocket::PauseModes|pauseMode|

$prototype=QHostAddress peerAddress() const
$method=5,3,0|QHostAddress|peerAddress|

$prototype=QString peerName() const
$method=5,3,0|QString|peerName|

$prototype=quint16 peerPort() const
$method=5,3,0|quint16|peerPort|

$prototype=QNetworkProxy proxy() const
$method=5,3,0|QNetworkProxy|proxy|

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=5,3,0|void|setProxy|const QNetworkProxy &

$prototype=const QMaskGenerator *maskGenerator() const
$method=5,3,0|const QMaskGenerator *|maskGenerator|

$prototype=void setMaskGenerator(const QMaskGenerator *maskGenerator)
$method=5,3,0|void|setMaskGenerator|const QMaskGenerator *

$prototype=qint64 readBufferSize() const
$method=5,3,0|qint64|readBufferSize|

$prototype=void setReadBufferSize(qint64 size)
$method=5,3,0|void|setReadBufferSize|qint64

$prototype=void resume()
$method=5,3,0|void|resume|

$prototype=void setPauseMode(QAbstractSocket::PauseModes pauseMode)
$method=5,3,0|void|setPauseMode|QAbstractSocket::PauseModes

$prototype=QAbstractSocket::SocketState state() const
$method=5,3,0|QAbstractSocket::SocketState|state|

$prototype=QWebSocketProtocol::Version version() const
$method=5,3,0|QWebSocketProtocol::Version|version|

$prototype=QString resourceName() const
$method=5,3,0|QString|resourceName|

$prototype=QUrl requestUrl() const
$method=5,3,0|QUrl|requestUrl|

$prototype=QString origin() const
$method=5,3,0|QString|origin|

$prototype=QWebSocketProtocol::CloseCode closeCode() const
$method=5,3,0|QWebSocketProtocol::CloseCode|closeCode|

$prototype=QString closeReason() const
$method=5,3,0|QString|closeReason|

$prototype=qint64 sendTextMessage(const QString &message)
$method=5,3,0|qint64|sendTextMessage|const QString &

$prototype=qint64 sendBinaryMessage(const QByteArray &data)
$method=5,3,0|qint64|sendBinaryMessage|const QByteArray &

$prototype=void ignoreSslErrors(const QList<QSslError> &errors)
$internalMethod=5,3,0|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

$prototype=void ignoreSslErrors()
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
$addMethod=ignoreSslErrors

$prototype=QSslConfiguration sslConfiguration() const
$method=5,3,0|QSslConfiguration|sslConfiguration|

$prototype=void setSslConfiguration(const QSslConfiguration &sslConfiguration)
$method=5,3,0|void|setSslConfiguration|const QSslConfiguration &

$prototype=void close(QWebSocketProtocol::CloseCode closeCode = QWebSocketProtocol::CloseCodeNormal,const QString &reason = QString())
$method=5,3,0|void|close|QWebSocketProtocol::CloseCode=QWebSocketProtocol::CloseCodeNormal,const QString &=QString()

$prototype=void open(const QUrl &url)
$method=5,3,0|void|open|const QUrl &

$prototype=void ping(const QByteArray &payload = QByteArray())
$method=5,3,0|void|ping|const QByteArray &=QByteArray()

$beginSignals
$signal=5,3,0|aboutToClose()
$signal=5,3,0|connected()
$signal=5,3,0|disconnected()
$signal=5,3,0|stateChanged(QAbstractSocket::SocketState)
$signal=5,3,0|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
$signal=5,3,0|readChannelFinished()
$signal=5,3,0|textFrameReceived(QString,bool)
$signal=5,3,0|binaryFrameReceived(QByteArray,bool)
$signal=5,3,0|textMessageReceived(QString)
$signal=5,3,0|binaryMessageReceived(QByteArray)
$signal=5,3,0|error(QAbstractSocket::SocketError)
$signal=5,3,0|pong(quint64,QByteArray)
$signal=5,3,0|bytesWritten(qint64)
$signal=5,3,0|sslErrors(QList<QSslError>)
$endSignals

#pragma ENDDUMP
