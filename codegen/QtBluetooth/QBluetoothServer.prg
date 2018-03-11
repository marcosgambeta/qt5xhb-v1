%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHSERVICEINFO
REQUEST QBLUETOOTHSOCKET
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD close
   METHOD listen
   METHOD isListening
   METHOD setMaxPendingConnections
   METHOD maxPendingConnections
   METHOD hasPendingConnections
   METHOD nextPendingConnection
   METHOD serverAddress
   METHOD serverPort
   METHOD setSecurityFlags
   METHOD securityFlags
   METHOD serverType
   METHOD error

   METHOD onNewConnection
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,2,0

$prototype=QBluetoothServer(QBluetoothServiceInfo::Protocol serverType, QObject *parent = 0)
$constructor=5,2,0|new|QBluetoothServiceInfo::Protocol,QObject *=0

$deleteMethod=5,2,0

$prototype=void close()
$method=5,2,0|void|close|

$prototype=bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
$internalMethod=5,2,0|bool|listen,listen1|const QBluetoothAddress &=QBluetoothAddress(),quint16=0

$prototype=QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())
$internalMethod=5,2,0|QBluetoothServiceInfo|listen,listen2|const QBluetoothUuid &,const QString &=QString()

//[1]bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
//[2]QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())

HB_FUNC_STATIC( QBLUETOOTHSERVER_LISTEN )
{
  if( ISBETWEEN(0,2) && (ISQBLUETOOTHADDRESS(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QBluetoothServer_listen1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHUUID(1) && ISOPTCHAR(2) )
  {
    QBluetoothServer_listen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isListening() const
$method=5,2,0|bool|isListening|

$prototype=void setMaxPendingConnections(int numConnections)
$method=5,2,0|void|setMaxPendingConnections|int

$prototype=int maxPendingConnections() const
$method=5,2,0|int|maxPendingConnections|

$prototype=bool hasPendingConnections() const
$method=5,2,0|bool|hasPendingConnections|

$prototype=QBluetoothSocket *nextPendingConnection()
$method=5,2,0|QBluetoothSocket *|nextPendingConnection|

$prototype=QBluetoothAddress serverAddress() const
$method=5,2,0|QBluetoothAddress|serverAddress|

$prototype=quint16 serverPort() const
$method=5,2,0|quint16|serverPort|

$prototype=void setSecurityFlags(QBluetooth::SecurityFlags security)
$method=5,2,0|void|setSecurityFlags|QBluetooth::SecurityFlags

$prototype=QBluetooth::SecurityFlags securityFlags() const
$method=5,2,0|QBluetooth::SecurityFlags|securityFlags|

$prototype=QBluetoothServiceInfo::Protocol serverType() const
$method=5,2,0|QBluetoothServiceInfo::Protocol|serverType|

$prototype=Error error() const
$method=5,2,0|QBluetoothServer::Error|error|

$beginSignals
$signal=5,2,0|newConnection()
$signal=5,2,0|error(QBluetoothServer::Error)
$endSignals

#pragma ENDDUMP
