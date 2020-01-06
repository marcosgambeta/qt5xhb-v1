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

#include <QtNetwork/QNetworkProxy>
#include <QtWebSockets/QWebSocket>

$prototype=explicit QWebSocketServer(const QString &serverName, SslMode secureMode, QObject *parent = Q_NULLPTR)
$constructor=5,3,0|new|const QString &,QWebSocketServer::SslMode,QObject *=Q_NULLPTR

$deleteMethod=5,3,0

$prototype=bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
$method=5,3,0|bool|listen|const QHostAddress &=QHostAddress::Any,quint16=0

$prototype=void close()
$method=5,3,0|void|close|

$prototype=bool isListening() const
$method=5,3,0|bool|isListening|

$prototype=int maxPendingConnections() const
$method=5,3,0|int|maxPendingConnections|

$prototype=void setMaxPendingConnections(int numConnections)
$method=5,3,0|void|setMaxPendingConnections|int

$prototype=quint16 serverPort() const
$method=5,3,0|quint16|serverPort|

$prototype=QHostAddress serverAddress() const
$method=5,3,0|QHostAddress|serverAddress|

$prototype=SslMode secureMode() const
$method=5,3,0|QWebSocketServer::SslMode|secureMode|

$prototype=int socketDescriptor() const
$method=5,3,0|int|socketDescriptor|

$prototype=bool setSocketDescriptor(int socketDescriptor)
$method=5,3,0|bool|setSocketDescriptor|int

$prototype=bool hasPendingConnections() const
$method=5,3,0|bool|hasPendingConnections|

$prototype=virtual QWebSocket *nextPendingConnection()
$virtualMethod=5,3,0|QWebSocket *|nextPendingConnection|

$prototype=QWebSocketProtocol::CloseCode error() const
$method=5,3,0|QWebSocketProtocol::CloseCode|error|

$prototype=QString errorString() const
$method=5,3,0|QString|errorString|

$prototype=void pauseAccepting()
$method=5,3,0|void|pauseAccepting|

$prototype=void resumeAccepting()
$method=5,3,0|void|resumeAccepting|

$prototype=QString serverName() const
$method=5,3,0|QString|serverName|

$prototype=void setServerName(const QString &serverName)
$method=5,3,0|void|setServerName|const QString &

$prototype=QNetworkProxy proxy() const
$method=5,3,0|QNetworkProxy|proxy|

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=5,3,0|void|setProxy|const QNetworkProxy &

$prototype=void setSslConfiguration(const QSslConfiguration &sslConfiguration)
$method=5,3,0|void|setSslConfiguration|const QSslConfiguration &

$prototype=QSslConfiguration sslConfiguration() const
$method=5,3,0|QSslConfiguration|sslConfiguration|

$prototype=QList<QWebSocketProtocol::Version> supportedVersions() const
$method=5,3,0|QList<QWebSocketProtocol::Version>|supportedVersions|

$beginSignals
$signal=5,3,0|acceptError(QAbstractSocket::SocketError)
$signal=5,3,0|serverError(QWebSocketProtocol::CloseCode)
$signal=5,3,0|originAuthenticationRequired(QWebSocketCorsAuthenticator*)
$signal=5,3,0|newConnection()
$signal=5,3,0|peerVerifyError(QSslError)
$signal=5,3,0|sslErrors(QList<QSslError>)
$signal=5,3,0|closed()
$endSignals

#pragma ENDDUMP
