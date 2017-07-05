$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothHostInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD address
   METHOD setAddress
   METHOD name
   METHOD setName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QBluetoothHostInfo()
*/
void QBluetoothHostInfo_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothHostInfo * o = new QBluetoothHostInfo ();
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothHostInfo(const QBluetoothHostInfo &other)
*/
void QBluetoothHostInfo_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothHostInfo * o = new QBluetoothHostInfo ( *PQBLUETOOTHHOSTINFO(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QBluetoothHostInfo()
//[2]QBluetoothHostInfo(const QBluetoothHostInfo &other)

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothHostInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHHOSTINFO(1) )
  {
    QBluetoothHostInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QBluetoothAddress address() const
*/
HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothHostInfo * obj = (QBluetoothHostInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->address () );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}

/*
void setAddress(const QBluetoothAddress &address)
*/
$method=5,2,0|void|setAddress|const QBluetoothAddress &

/*
QString name() const
*/
$method=5,2,0|QString|name|

/*
void setName(const QString &name)
*/
$method=5,2,0|void|setName|const QString &

$extraMethods

#pragma ENDDUMP
