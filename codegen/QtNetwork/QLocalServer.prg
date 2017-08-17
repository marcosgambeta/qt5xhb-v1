$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALSOCKET
#endif

CLASS QLocalServer INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
QLocalServer ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void close ()
*/
$method=|void|close|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString fullServerName () const
*/
$method=|QString|fullServerName|

/*
virtual bool hasPendingConnections () const
*/
$method=|bool|hasPendingConnections|

/*
bool isListening () const
*/
$method=|bool|isListening|

/*
bool listen ( const QString & name )
*/
$method=|bool|listen|const QString &

/*
int maxPendingConnections () const
*/
$method=|int|maxPendingConnections|

/*
virtual QLocalSocket * nextPendingConnection ()
*/
$method=|QLocalSocket *|nextPendingConnection|

/*
QAbstractSocket::SocketError serverError () const
*/
$method=|QAbstractSocket::SocketError|serverError|

/*
QString serverName () const
*/
$method=|QString|serverName|

/*
void setMaxPendingConnections ( int numConnections )
*/
$method=|void|setMaxPendingConnections|int

/*
bool waitForNewConnection ( int msec = 0, bool * timedOut = 0 )
*/
$method=|bool|waitForNewConnection|int=0,bool *=0

/*
static bool removeServer ( const QString & name )
*/
$staticMethod=|bool|removeServer|const QString &

#pragma ENDDUMP
