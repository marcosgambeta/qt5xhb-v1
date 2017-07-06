$header

#include "hbclass.ch"

CLASS QDnsMailExchangeRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD exchange
   METHOD name
   METHOD preference
   METHOD swap
   METHOD timeToLive

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

/*
QDnsMailExchangeRecord()
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW1 )
{
  QDnsMailExchangeRecord * o = new QDnsMailExchangeRecord ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW2 )
{
  QDnsMailExchangeRecord * o = new QDnsMailExchangeRecord ( *PQDNSMAILEXCHANGERECORD(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDnsMailExchangeRecord()
//[2]QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSMAILEXCHANGERECORD(1) )
  {
    HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString exchange() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_EXCHANGE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->exchange () );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NAME )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
quint16 preference() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_PREFERENCE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->preference () );
  }
}


/*
void swap(QDnsMailExchangeRecord & other)
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SWAP )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsMailExchangeRecord * par1 = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_TIMETOLIVE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->timeToLive () );
  }
}



$extraMethods

#pragma ENDDUMP
