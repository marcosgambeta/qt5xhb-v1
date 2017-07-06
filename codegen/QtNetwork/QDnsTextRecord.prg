$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDnsTextRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD swap
   METHOD timeToLive
   METHOD values

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
QDnsTextRecord()
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_NEW1 )
{
  QDnsTextRecord * o = new QDnsTextRecord ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDnsTextRecord(const QDnsTextRecord & other)
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_NEW2 )
{
  QDnsTextRecord * o = new QDnsTextRecord ( *PQDNSTEXTRECORD(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDnsTextRecord()
//[2]QDnsTextRecord(const QDnsTextRecord & other)

HB_FUNC_STATIC( QDNSTEXTRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSTEXTRECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSTEXTRECORD(1) )
  {
    HB_FUNC_EXEC( QDNSTEXTRECORD_NEW2 );
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
HB_FUNC_STATIC( QDNSTEXTRECORD_NAME )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
void swap(QDnsTextRecord & other)
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_SWAP )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsTextRecord * par1 = (QDnsTextRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_TIMETOLIVE )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->timeToLive () );
  }
}


/*
QList<QByteArray> values() const
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_VALUES )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->values ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



$extraMethods

#pragma ENDDUMP
