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

/*
QBluetoothDeviceDiscoveryAgent(QObject *parent = 0)
*/
$internalConstructor=5,2,0|new1|QObject *=0

/*
QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)
*/
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

/*
QBluetoothDeviceDiscoveryAgent::InquiryType inquiryType() const
*/
$method=5,2,0|QBluetoothDeviceDiscoveryAgent::InquiryType|inquiryType|

/*
void setInquiryType(QBluetoothDeviceDiscoveryAgent::InquiryType type)
*/
$method=5,2,0|void|setInquiryType|QBluetoothDeviceDiscoveryAgent::InquiryType

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
QList<QBluetoothDeviceInfo> discoveredDevices() const
*/
$method=5,2,0|QList<QBluetoothDeviceInfo>|discoveredDevices|

/*
void start()
*/
$method=5,2,0|void|start|

/*
void stop()
*/
$method=5,2,0|void|stop|

#pragma ENDDUMP
