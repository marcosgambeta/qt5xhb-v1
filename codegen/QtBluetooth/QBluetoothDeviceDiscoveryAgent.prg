%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHDEVICEINFO
#endif

CLASS QBluetoothDeviceDiscoveryAgent INHERIT QObject

   METHOD new
   METHOD delete
   METHOD inquiryType
   METHOD setInquiryType
   METHOD isActive
   METHOD error
   METHOD errorString
   METHOD discoveredDevices
   METHOD start
   METHOD stop

   METHOD onDeviceDiscovered
   METHOD onFinished
   METHOD onError
   METHOD onCanceled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QBluetoothDeviceDiscoveryAgent(QObject *parent = 0)
$internalConstructor=5,2,0|new1|QObject *=0

$prototype=QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)
$internalConstructor=5,2,0|new2|const QBluetoothAddress &,QObject *=0

//[1]QBluetoothDeviceDiscoveryAgent(QObject *parent = 0)
//[2]QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothDeviceDiscoveryAgent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothDeviceDiscoveryAgent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=QBluetoothDeviceDiscoveryAgent::InquiryType inquiryType() const
$method=5,2,0|QBluetoothDeviceDiscoveryAgent::InquiryType|inquiryType|

$prototype=void setInquiryType(QBluetoothDeviceDiscoveryAgent::InquiryType type)
$method=5,2,0|void|setInquiryType|QBluetoothDeviceDiscoveryAgent::InquiryType

$prototype=bool isActive() const
$method=5,2,0|bool|isActive|

$prototype=Error error() const
$method=5,2,0|QBluetoothDeviceDiscoveryAgent::Error|error|

$prototype=QString errorString() const
$method=5,2,0|QString|errorString|

$prototype=QList<QBluetoothDeviceInfo> discoveredDevices() const
$method=5,2,0|QList<QBluetoothDeviceInfo>|discoveredDevices|

$prototype=void start()
$method=5,2,0|void|start|

$prototype=void stop()
$method=5,2,0|void|stop|

#pragma ENDDUMP
