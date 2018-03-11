%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHHOSTINFO
#endif

CLASS QBluetoothLocalDevice INHERIT QObject

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

$prototype=QBluetoothLocalDevice(QObject *parent = 0)
$internalConstructor=5,2,0|new1|QObject *=0

$prototype=QBluetoothLocalDevice(const QBluetoothAddress &address, QObject *parent = 0)
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

$prototype=bool isValid() const
$method=5,2,0|bool|isValid|

$prototype=void requestPairing(const QBluetoothAddress &address, Pairing pairing)
$method=5,2,0|void|requestPairing|const QBluetoothAddress &,QBluetoothLocalDevice::Pairing

$prototype=Pairing pairingStatus(const QBluetoothAddress &address) const
$method=5,2,0|QBluetoothLocalDevice::Pairing|pairingStatus|const QBluetoothAddress &

$prototype=void setHostMode(QBluetoothLocalDevice::HostMode mode)
$method=5,2,0|void|setHostMode|QBluetoothLocalDevice::HostMode

$prototype=HostMode hostMode() const
$method=5,2,0|QBluetoothLocalDevice::HostMode|hostMode|

$prototype=void powerOn()
$method=5,2,0|void|powerOn|

$prototype=QString name() const
$method=5,2,0|QString|name|

$prototype=QBluetoothAddress address() const
$method=5,2,0|QBluetoothAddress|address|

$prototype=void pairingConfirmation(bool confirmation)
$method=5,2,0|void|pairingConfirmation|bool

$prototype=static QList<QBluetoothHostInfo> allDevices()
$staticMethod=5,2,0|QList<QBluetoothHostInfo>|allDevices|

$beginSignals
$signal=5,2,0|hostModeStateChanged(QBluetoothLocalDevice::HostMode)
$signal=5,2,0|pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)
$signal=5,2,0|pairingDisplayPinCode(QBluetoothAddress,QString)
$signal=5,2,0|pairingDisplayConfirmation(QBluetoothAddress,QString)
$signal=5,2,0|error(QBluetoothLocalDevice::Error)
$endSignals

#pragma ENDDUMP
