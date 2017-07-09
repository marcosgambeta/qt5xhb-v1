$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothTransferRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD attribute
   METHOD setAttribute
   METHOD address

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
QBluetoothTransferRequest(const QBluetoothAddress &address = QBluetoothAddress())
*/
void QBluetoothTransferRequest_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress par1 = ISNIL(1)? QBluetoothAddress() : *(QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
  QBluetoothTransferRequest * o = new QBluetoothTransferRequest ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothTransferRequest(const QBluetoothTransferRequest &other)
*/
void QBluetoothTransferRequest_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferRequest * o = new QBluetoothTransferRequest ( *PQBLUETOOTHTRANSFERREQUEST(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QBluetoothTransferRequest(const QBluetoothAddress &address = QBluetoothAddress())
//[2]QBluetoothTransferRequest(const QBluetoothTransferRequest &other)

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQBLUETOOTHADDRESS(1)||ISNIL(1)) )
  {
    QBluetoothTransferRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHTRANSFERREQUEST(1) )
  {
    QBluetoothTransferRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QVariant attribute(Attribute code, const QVariant &defaultValue = QVariant()) const
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_ATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferRequest * obj = (QBluetoothTransferRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQVARIANT(2)||ISNIL(2)) )
    {
      QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
      QVariant * ptr = new QVariant( obj->attribute ( (QBluetoothTransferRequest::Attribute) hb_parni(1), par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setAttribute(Attribute code, const QVariant &value)
*/
$method=5,2,0|void|setAttribute|QBluetoothTransferRequest::Attribute,const QVariant &

/*
QBluetoothAddress address() const
*/
$method=5,2,0|QBluetoothAddress|address|

$extraMethods

#pragma ENDDUMP
