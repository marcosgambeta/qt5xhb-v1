$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
#endif

CLASS QDnsHostAddressRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD swap
   METHOD timeToLive
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QHostAddress>

/*
QDnsHostAddressRecord()
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEW1 )
{
  QDnsHostAddressRecord * o = new QDnsHostAddressRecord ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDnsHostAddressRecord(const QDnsHostAddressRecord & other)
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEW2 )
{
  QDnsHostAddressRecord * o = new QDnsHostAddressRecord ( *PQDNSHOSTADDRESSRECORD(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDnsHostAddressRecord()
//[2]QDnsHostAddressRecord(const QDnsHostAddressRecord & other)

HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSHOSTADDRESSRECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSHOSTADDRESSRECORD(1) )
  {
    HB_FUNC_EXEC( QDNSHOSTADDRESSRECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString name() const
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NAME )
{
  QDnsHostAddressRecord * obj = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
void swap(QDnsHostAddressRecord & other)
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_SWAP )
{
  QDnsHostAddressRecord * obj = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsHostAddressRecord * par1 = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_TIMETOLIVE )
{
  QDnsHostAddressRecord * obj = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->timeToLive () );
  }
}


/*
QHostAddress value() const
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_VALUE )
{
  QDnsHostAddressRecord * obj = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->value () );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}



$extraMethods

#pragma ENDDUMP
