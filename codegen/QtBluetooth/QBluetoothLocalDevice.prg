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
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ALLDEVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QList<QBluetoothHostInfo> list = QBluetoothLocalDevice::allDevices ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBLUETOOTHHOSTINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QBLUETOOTHHOSTINFO" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QBluetoothHostInfo *) new QBluetoothHostInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}

#pragma ENDDUMP
