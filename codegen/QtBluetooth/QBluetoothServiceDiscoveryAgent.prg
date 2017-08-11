$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHSERVICEINFO
REQUEST QBLUETOOTHUUID
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothServiceDiscoveryAgent INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
QBluetoothServiceDiscoveryAgent(QObject *parent = 0)
*/
$internalConstructor=5,2,0|new1|QObject *=0

/*
QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)
*/
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

/*
bool isActive() const
*/
$method=5,2,0|bool|isActive|

/*
Error error() const
*/
$method=5,2,0|QBluetoothDeviceDiscoveryAgent::Error|error|

/*
QString errorString() const
*/
$method=5,2,0|QString|errorString|

/*
QList<QBluetoothServiceInfo> discoveredServices() const
*/
$method=5,2,0|QList<QBluetoothServiceInfo>|discoveredServices|

/*
void setUuidFilter(const QList<QBluetoothUuid> &uuids)
*/
$internalMethod=5,2,0|void|setUuidFilter,setUuidFilter1|const QList<QBluetoothUuid> &

/*
void setUuidFilter(const QBluetoothUuid &uuid)
*/
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

/*
QList<QBluetoothUuid> uuidFilter() const
*/
$method=5,2,0|QList<QBluetoothUuid>|uuidFilter|

/*
bool setRemoteAddress(const QBluetoothAddress &address)
*/
$method=5,2,0|bool|setRemoteAddress|const QBluetoothAddress &

/*
QBluetoothAddress remoteAddress() const
*/
$method=5,2,0|QBluetoothAddress|remoteAddress|

/*
void start(DiscoveryMode mode = MinimalDiscovery)
*/
$method=5,2,0|void|start|QBluetoothServiceDiscoveryAgent::DiscoveryMode=QBluetoothServiceDiscoveryAgent::MinimalDiscovery

/*
void stop()
*/
$method=5,2,0|void|stop|

/*
void clear()
*/
$method=5,2,0|void|clear|

#pragma ENDDUMP
