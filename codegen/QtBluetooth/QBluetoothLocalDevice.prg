$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHHOSTINFO
#endif

CLASS QBluetoothLocalDevice INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD requestPairing
   METHOD pairingStatus
   METHOD setHostMode
   METHOD hostMode
   METHOD powerOn
   METHOD name
   METHOD address
   METHOD pairingConfirmation
   METHOD allDevices

   METHOD onHostModeStateChanged
   METHOD onPairingFinished
   METHOD onPairingDisplayPinCode
   METHOD onPairingDisplayConfirmation
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QBluetoothLocalDevice(QObject *parent = 0)
*/
$internalConstructor=5,2,0|new1|QObject *=0

/*
QBluetoothLocalDevice(const QBluetoothAddress &address, QObject *parent = 0)
*/
$internalConstructor=5,2,0|new2|const QBluetoothAddress &,QObject *=0

//[1]QBluetoothLocalDevice(QObject *parent = 0)
//[2]QBluetoothLocalDevice(const QBluetoothAddress &address, QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothLocalDevice_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothLocalDevice_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
bool isValid() const
*/
$method=5,2,0|bool|isValid|

/*
void requestPairing(const QBluetoothAddress &address, Pairing pairing)
*/
$method=5,2,0|void|requestPairing|const QBluetoothAddress &,QBluetoothLocalDevice::Pairing

/*
Pairing pairingStatus(const QBluetoothAddress &address) const
*/
$method=5,2,0|QBluetoothLocalDevice::Pairing|pairingStatus|const QBluetoothAddress &

/*
void setHostMode(QBluetoothLocalDevice::HostMode mode)
*/
$method=5,2,0|void|setHostMode|QBluetoothLocalDevice::HostMode

/*
HostMode hostMode() const
*/
$method=5,2,0|QBluetoothLocalDevice::HostMode|hostMode|

/*
void powerOn()
*/
$method=5,2,0|void|powerOn|

/*
QString name() const
*/
$method=5,2,0|QString|name|

/*
QBluetoothAddress address() const
*/
$method=5,2,0|QBluetoothAddress|address|

/*
void pairingConfirmation(bool confirmation)
*/
$method=5,2,0|void|pairingConfirmation|bool

/*
static QList<QBluetoothHostInfo> allDevices()
*/
$staticMethod=5,2,0|QList<QBluetoothHostInfo>|allDevices|

#pragma ENDDUMP
