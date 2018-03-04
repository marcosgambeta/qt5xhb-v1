%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHSERVICEINFO
REQUEST QBLUETOOTHUUID
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothServiceDiscoveryAgent INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD error
   METHOD errorString
   METHOD discoveredServices
   METHOD setUuidFilter
   METHOD uuidFilter
   METHOD setRemoteAddress
   METHOD remoteAddress
   METHOD start
   METHOD stop
   METHOD clear

   METHOD onServiceDiscovered
   METHOD onFinished
   METHOD onCanceled
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QBluetoothServiceDiscoveryAgent(QObject *parent = 0)
$internalConstructor=5,2,0|new1|QObject *=0

$prototype=QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)
$internalConstructor=5,2,0|new2|const QBluetoothAddress &,QObject *=0

//[1]QBluetoothServiceDiscoveryAgent(QObject *parent = 0)
//[2]QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothServiceDiscoveryAgent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothServiceDiscoveryAgent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=bool isActive() const
$method=5,2,0|bool|isActive|

$prototype=Error error() const
$method=5,2,0|QBluetoothDeviceDiscoveryAgent::Error|error|

$prototype=QString errorString() const
$method=5,2,0|QString|errorString|

$prototype=QList<QBluetoothServiceInfo> discoveredServices() const
$method=5,2,0|QList<QBluetoothServiceInfo>|discoveredServices|

$prototype=void setUuidFilter(const QList<QBluetoothUuid> &uuids)
$internalMethod=5,2,0|void|setUuidFilter,setUuidFilter1|const QList<QBluetoothUuid> &

$prototype=void setUuidFilter(const QBluetoothUuid &uuid)
$internalMethod=5,2,0|void|setUuidFilter,setUuidFilter2|const QBluetoothUuid &

//[1]void setUuidFilter(const QList<QBluetoothUuid> &uuids)
//[2]void setUuidFilter(const QBluetoothUuid &uuid)

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBluetoothServiceDiscoveryAgent_setUuidFilter1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    QBluetoothServiceDiscoveryAgent_setUuidFilter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QList<QBluetoothUuid> uuidFilter() const
$method=5,2,0|QList<QBluetoothUuid>|uuidFilter|

$prototype=bool setRemoteAddress(const QBluetoothAddress &address)
$method=5,2,0|bool|setRemoteAddress|const QBluetoothAddress &

$prototype=QBluetoothAddress remoteAddress() const
$method=5,2,0|QBluetoothAddress|remoteAddress|

$prototype=void start(DiscoveryMode mode = MinimalDiscovery)
$method=5,2,0|void|start|QBluetoothServiceDiscoveryAgent::DiscoveryMode=QBluetoothServiceDiscoveryAgent::MinimalDiscovery

$prototype=void stop()
$method=5,2,0|void|stop|

$prototype=void clear()
$method=5,2,0|void|clear|

$connectSignalFunction

$signalMethod=5,2,0|serviceDiscovered(QBluetoothServiceInfo)
$signalMethod=5,2,0|finished()
$signalMethod=5,2,0|canceled()
$signalMethod=5,2,0|error(QBluetoothServiceDiscoveryAgent::Error)

#pragma ENDDUMP
