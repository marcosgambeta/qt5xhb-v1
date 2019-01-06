%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods
%% #ifndef QT_NO_NETWORKPROXY
%%   METHOD proxy
%% #endif
%% #ifndef QT_NO_NETWORKPROXY
%%   METHOD setProxy
%% #endif

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QNetworkProxy>
#include <QTcpSocket>

$prototype=explicit QTcpServer(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=QTcpServer(QAbstractSocket::SocketType socketType, QTcpServerPrivate &dd, QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QTcpServer()
$deleteMethod

$prototype=bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
$method=|bool|listen|const QHostAddress &=QHostAddress::Any,quint16=0

$prototype=void close()
$method=|void|close|

$prototype=bool isListening() const
$method=|bool|isListening|

$prototype=void setMaxPendingConnections(int numConnections)
$method=|void|setMaxPendingConnections|int

$prototype=int maxPendingConnections() const
$method=|int|maxPendingConnections|

$prototype=quint16 serverPort() const
$method=|quint16|serverPort|

$prototype=QHostAddress serverAddress() const
$method=|QHostAddress|serverAddress|

$prototype=qintptr socketDescriptor() const
$method=|qintptr|socketDescriptor|

$prototype=bool setSocketDescriptor(qintptr socketDescriptor)
$method=|bool|setSocketDescriptor|qintptr

$prototype=bool waitForNewConnection(int msec = 0, bool *timedOut = Q_NULLPTR)
$method=|bool|waitForNewConnection|int=0,bool *=Q_NULLPTR

$prototype=virtual bool hasPendingConnections() const
$virtualMethod=|bool|hasPendingConnections|

$prototype=virtual QTcpSocket *nextPendingConnection()
$virtualMethod=|QTcpSocket *|nextPendingConnection|

$prototype=QAbstractSocket::SocketError serverError() const
$method=|QAbstractSocket::SocketError|serverError|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=void pauseAccepting()
$method=|void|pauseAccepting|

$prototype=void resumeAccepting()
$method=|void|resumeAccepting|

%% #ifndef QT_NO_NETWORKPROXY

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=|void|setProxy|const QNetworkProxy &

$prototype=QNetworkProxy proxy() const
$method=|QNetworkProxy|proxy|

%% #endif

$prototype=virtual void incomingConnection(qintptr handle) [protected]

$prototype=void addPendingConnection(QTcpSocket* socket) [protected]

$beginSignals
$signal=|acceptError(QAbstractSocket::SocketError)
$signal=|newConnection()
$endSignals

#pragma ENDDUMP
