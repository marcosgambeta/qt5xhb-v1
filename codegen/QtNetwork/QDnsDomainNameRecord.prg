$header

#include "hbclass.ch"

CLASS QDnsDomainNameRecord

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

/*
QDnsDomainNameRecord()
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEW1 )
{
  QDnsDomainNameRecord * o = new QDnsDomainNameRecord ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDnsDomainNameRecord(const QDnsDomainNameRecord & other)
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEW2 )
{
  QDnsDomainNameRecord * o = new QDnsDomainNameRecord ( *PQDNSDOMAINNAMERECORD(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDnsDomainNameRecord()
//[2]QDnsDomainNameRecord(const QDnsDomainNameRecord & other)

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSDOMAINNAMERECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSDOMAINNAMERECORD(1) )
  {
    HB_FUNC_EXEC( QDNSDOMAINNAMERECORD_NEW2 );
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
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NAME )
{
  QDnsDomainNameRecord * obj = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
void swap(QDnsDomainNameRecord & other)
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_SWAP )
{
  QDnsDomainNameRecord * obj = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsDomainNameRecord * par1 = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_TIMETOLIVE )
{
  QDnsDomainNameRecord * obj = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->timeToLive () );
  }
}


/*
QString value() const
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_VALUE )
{
  QDnsDomainNameRecord * obj = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->value () );
  }
}



$extraMethods

#pragma ENDDUMP
