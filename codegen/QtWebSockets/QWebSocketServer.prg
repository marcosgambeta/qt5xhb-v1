$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QWEBSOCKET
REQUEST QNETWORKPROXY
REQUEST QSSLCONFIGURATION
#endif

CLASS QWebSocketServer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD listen
   METHOD close
   METHOD isListening
   METHOD maxPendingConnections
   METHOD setMaxPendingConnections
   METHOD serverPort
   METHOD serverAddress
   METHOD secureMode
   METHOD socketDescriptor
   METHOD setSocketDescriptor
   METHOD hasPendingConnections
   METHOD nextPendingConnection
   METHOD error
   METHOD errorString
   METHOD pauseAccepting
   METHOD resumeAccepting
   METHOD serverName
   METHOD setServerName
   METHOD proxy
   METHOD setProxy
   METHOD setSslConfiguration
   METHOD sslConfiguration
   METHOD supportedVersions

   METHOD onAcceptError
   METHOD onServerError
   METHOD onOriginAuthenticationRequired
   METHOD onNewConnection
   METHOD onPeerVerifyError
   METHOD onSslErrors
   METHOD onClosed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,3,0

#include <QNetworkProxy>

/*
explicit QWebSocketServer(const QString &serverName, SslMode secureMode, QObject *parent = Q_NULLPTR)
*/
$constructor=5,3,0|new|const QString &,QWebSocketServer::SslMode,QObject *=Q_NULLPTR

$deleteMethod=5,3,0

/*
bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
*/
$method=5,3,0|bool|listen|const QHostAddress &=QHostAddress::Any,quint16=0

/*
void close()
*/
$method=5,3,0|void|close|

/*
bool isListening() const
*/
$method=5,3,0|bool|isListening|

/*
int maxPendingConnections() const
*/
$method=5,3,0|int|maxPendingConnections|

/*
void setMaxPendingConnections(int numConnections)
*/
$method=5,3,0|void|setMaxPendingConnections|int

/*
quint16 serverPort() const
*/
$method=5,3,0|quint16|serverPort|

/*
QHostAddress serverAddress() const
*/
$method=5,3,0|QHostAddress|serverAddress|

/*
SslMode secureMode() const
*/
$method=5,3,0|QWebSocketServer::SslMode|secureMode|

/*
int socketDescriptor() const
*/
$method=5,3,0|int|socketDescriptor|

/*
bool setSocketDescriptor(int socketDescriptor)
*/
$method=5,3,0|bool|setSocketDescriptor|int

/*
bool hasPendingConnections() const
*/
$method=5,3,0|bool|hasPendingConnections|

/*
virtual QWebSocket *nextPendingConnection()
*/
$virtualMethod=5,3,0|QWebSocket *|nextPendingConnection|

/*
QWebSocketProtocol::CloseCode error() const
*/
$method=5,3,0|QWebSocketProtocol::CloseCode|error|

/*
QString errorString() const
*/
$method=5,3,0|QString|errorString|

/*
void pauseAccepting()
*/
$method=5,3,0|void|pauseAccepting|

/*
void resumeAccepting()
*/
$method=5,3,0|void|resumeAccepting|

/*
QString serverName() const
*/
$method=5,3,0|QString|serverName|

/*
void setServerName(const QString &serverName)
*/
$method=5,3,0|void|setServerName|const QString &

/*
QNetworkProxy proxy() const
*/
$method=5,3,0|QNetworkProxy|proxy|

/*
void setProxy(const QNetworkProxy &networkProxy)
*/
$method=5,3,0|void|setProxy|const QNetworkProxy &

/*
void setSslConfiguration(const QSslConfiguration &sslConfiguration)
*/
$method=5,3,0|void|setSslConfiguration|const QSslConfiguration &

/*
QSslConfiguration sslConfiguration() const
*/
$method=5,3,0|QSslConfiguration|sslConfiguration|

/*
QList<QWebSocketProtocol::Version> supportedVersions() const
*/
$method=5,3,0|QList<QWebSocketProtocol::Version>|supportedVersions|

#pragma ENDDUMP
