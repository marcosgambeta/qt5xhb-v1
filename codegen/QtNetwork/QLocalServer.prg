$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALSOCKET
#endif

CLASS QLocalServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD close
   METHOD errorString
   METHOD fullServerName
   METHOD hasPendingConnections
   METHOD isListening
   METHOD listen
   METHOD maxPendingConnections
   METHOD nextPendingConnection
   METHOD serverError
   METHOD serverName
   METHOD setMaxPendingConnections
   METHOD waitForNewConnection
   METHOD removeServer

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLocalServer ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void close ()
$method=|void|close|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString fullServerName () const
$method=|QString|fullServerName|

$prototype=virtual bool hasPendingConnections () const
$virtualMethod=|bool|hasPendingConnections|

$prototype=bool isListening () const
$method=|bool|isListening|

$prototype=bool listen ( const QString & name )
$method=|bool|listen|const QString &

$prototype=int maxPendingConnections () const
$method=|int|maxPendingConnections|

$prototype=virtual QLocalSocket * nextPendingConnection ()
$virtualMethod=|QLocalSocket *|nextPendingConnection|

$prototype=QAbstractSocket::SocketError serverError () const
$method=|QAbstractSocket::SocketError|serverError|

$prototype=QString serverName () const
$method=|QString|serverName|

$prototype=void setMaxPendingConnections ( int numConnections )
$method=|void|setMaxPendingConnections|int

$prototype=bool waitForNewConnection ( int msec = 0, bool * timedOut = 0 )
$method=|bool|waitForNewConnection|int=0,bool *=0

$prototype=static bool removeServer ( const QString & name )
$staticMethod=|bool|removeServer|const QString &

#pragma ENDDUMP
