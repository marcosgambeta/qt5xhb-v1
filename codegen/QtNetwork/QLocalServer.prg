%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
   METHOD removeServer
   METHOD serverError
   METHOD serverName
   METHOD setMaxPendingConnections
   METHOD setSocketOptions
   METHOD socketDescriptor
   METHOD socketOptions
   METHOD waitForNewConnection

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QLocalSocket>

$prototype=explicit QLocalServer(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QLocalServer()
$deleteMethod

%%
%% Q_PROPERTY(SocketOptions socketOptions READ socketOptions WRITE setSocketOptions)
%%

$prototype=SocketOptions socketOptions() const
$method=|QLocalServer::SocketOptions|socketOptions|

$prototype=void setSocketOptions(SocketOptions options)
$method=|void|setSocketOptions|QLocalServer::SocketOptions

%%
%%
%%

$prototype=void close()
$method=|void|close|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=virtual bool hasPendingConnections() const
$virtualMethod=|bool|hasPendingConnections|

$prototype=bool isListening() const
$method=|bool|isListening|

$prototype=bool listen(const QString &name)
$internalMethod=|bool|listen,listen1|const QString &

$prototype=bool listen(qintptr socketDescriptor)
$internalMethod=|bool|listen,listen2|qintptr

//[1]bool listen(const QString &name)
//[2]bool listen(qintptr socketDescriptor)

HB_FUNC_STATIC( QLOCALSERVER_LISTEN )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLocalServer_listen1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QLocalServer_listen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int maxPendingConnections() const
$method=|int|maxPendingConnections|

$prototype=virtual QLocalSocket *nextPendingConnection()
$virtualMethod=|QLocalSocket *|nextPendingConnection|

$prototype=QString serverName() const
$method=|QString|serverName|

$prototype=QString fullServerName() const
$method=|QString|fullServerName|

$prototype=static bool removeServer(const QString &name)
$staticMethod=|bool|removeServer|const QString &

$prototype=QAbstractSocket::SocketError serverError() const
$method=|QAbstractSocket::SocketError|serverError|

$prototype=void setMaxPendingConnections(int numConnections)
$method=|void|setMaxPendingConnections|int

$prototype=bool waitForNewConnection(int msec = 0, bool *timedOut = Q_NULLPTR)
$method=|bool|waitForNewConnection|int=0,bool *=0

$prototype=qintptr socketDescriptor() const
$method=5,10,0|qintptr|socketDescriptor|

$prototype=virtual void incomingConnection(quintptr socketDescriptor) (protected)

$connectSignalFunction

$signalMethod=|newConnection()

#pragma ENDDUMP
