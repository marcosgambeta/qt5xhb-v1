$header

#include "hbclass.ch"

CLASS QDnsServiceRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD port
   METHOD priority
   METHOD swap
   METHOD target
   METHOD timeToLive
   METHOD weight

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
QDnsServiceRecord()
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_NEW1 )
{
  QDnsServiceRecord * o = new QDnsServiceRecord ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDnsServiceRecord(const QDnsServiceRecord & other)
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_NEW2 )
{
  QDnsServiceRecord * o = new QDnsServiceRecord ( *PQDNSSERVICERECORD(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDnsServiceRecord()
//[2]QDnsServiceRecord(const QDnsServiceRecord & other)

HB_FUNC_STATIC( QDNSSERVICERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSSERVICERECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSSERVICERECORD(1) )
  {
    HB_FUNC_EXEC( QDNSSERVICERECORD_NEW2 );
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
HB_FUNC_STATIC( QDNSSERVICERECORD_NAME )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
quint16 port() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_PORT )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->port () );
  }
}


/*
quint16 priority() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_PRIORITY )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->priority () );
  }
}


/*
void swap(QDnsServiceRecord & other)
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_SWAP )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsServiceRecord * par1 = (QDnsServiceRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString target() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_TARGET )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->target () );
  }
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_TIMETOLIVE )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->timeToLive () );
  }
}


/*
quint16 weight() const
*/
HB_FUNC_STATIC( QDNSSERVICERECORD_WEIGHT )
{
  QDnsServiceRecord * obj = (QDnsServiceRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->weight () );
  }
}



$extraMethods

#pragma ENDDUMP
