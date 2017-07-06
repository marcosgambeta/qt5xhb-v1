$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

CLASS QPlaceMatchRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD places
   METHOD setPlaces
   METHOD setResults
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QPlaceMatchRequest()
*/
void QPlaceMatchRequest_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * o = new QPlaceMatchRequest ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceMatchRequest(const QPlaceMatchRequest &other)
*/
void QPlaceMatchRequest_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * o = new QPlaceMatchRequest ( *PQPLACEMATCHREQUEST(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceMatchRequest()
//[2]QPlaceMatchRequest(const QPlaceMatchRequest &other)

HB_FUNC_STATIC( QPLACEMATCHREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceMatchRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEMATCHREQUEST(1) )
  {
    QPlaceMatchRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QList<QPlace> places() const
*/
HB_FUNC_STATIC( QPLACEMATCHREQUEST_PLACES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * obj = (QPlaceMatchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlace> list = obj->places ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPLACE" );
    #else
    pDynSym = hb_dynsymFindName( "QPLACE" );
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
        hb_itemPutPtr( pItem, (QPlace *) new QPlace ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}

/*
void setPlaces(const QList<QPlace> places)
*/
HB_FUNC_STATIC( QPLACEMATCHREQUEST_SETPLACES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * obj = (QPlaceMatchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlace> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPlace *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setPlaces ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setResults(const QList<QPlaceSearchResult> &results)
*/
HB_FUNC_STATIC( QPLACEMATCHREQUEST_SETRESULTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * obj = (QPlaceMatchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceSearchResult> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPlaceSearchResult *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setResults ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



/*
void clear()
*/
HB_FUNC_STATIC( QPLACEMATCHREQUEST_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * obj = (QPlaceMatchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP
