$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTCPSOCKET
REQUEST QNETWORKPROXY
REQUEST QHOSTADDRESS
#endif

CLASS QTcpServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD close
   METHOD errorString
   METHOD hasPendingConnections
   METHOD isListening
   METHOD listen
   METHOD maxPendingConnections
   METHOD nextPendingConnection
   METHOD proxy
   METHOD serverAddress
   METHOD serverError
   METHOD serverPort
   METHOD setMaxPendingConnections
   METHOD setProxy
   METHOD setSocketDescriptor
   METHOD socketDescriptor
   METHOD waitForNewConnection

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QNetworkProxy>

$prototype=QTcpServer ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void close ()
$method=|void|close|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=virtual bool hasPendingConnections () const
$method=|bool|hasPendingConnections|

$prototype=bool isListening () const
$method=|bool|isListening|

$prototype=bool listen ( const QHostAddress & address = QHostAddress::Any, quint16 port = 0 )
$method=|bool|listen|const QHostAddress &=QHostAddress::Any,quint16=0

$prototype=int maxPendingConnections () const
$method=|int|maxPendingConnections|

$prototype=virtual QTcpSocket * nextPendingConnection ()
$method=|QTcpSocket *|nextPendingConnection|

$prototype=QNetworkProxy proxy () const
$method=|QNetworkProxy|proxy|

$prototype=QHostAddress serverAddress () const
$method=|QHostAddress|serverAddress|

$prototype=QAbstractSocket::SocketError serverError () const
$method=|QAbstractSocket::SocketError|serverError|

$prototype=quint16 serverPort () const
$method=|quint16|serverPort|

$prototype=void setMaxPendingConnections ( int numConnections )
$method=|void|setMaxPendingConnections|int

$prototype=void setProxy ( const QNetworkProxy & networkProxy )
$method=|void|setProxy|const QNetworkProxy &

$prototype=bool setSocketDescriptor ( int socketDescriptor )
$method=|bool|setSocketDescriptor|int

$prototype=int socketDescriptor () const
$method=|int|socketDescriptor|

$prototype=bool waitForNewConnection ( int msec = 0, bool * timedOut = 0 )
$method=|bool|waitForNewConnection|int=0,bool *=0

#pragma ENDDUMP
