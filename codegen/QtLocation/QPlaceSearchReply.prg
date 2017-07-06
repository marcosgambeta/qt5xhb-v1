$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESEARCHRESULT
REQUEST QPLACESEARCHREQUEST
#endif

CLASS QPlaceSearchReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD results
   METHOD request
   METHOD previousPageRequest
   METHOD nextPageRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QPlaceSearchRequest>

/*
explicit QPlaceSearchReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * o = new QPlaceSearchReply ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


$deleteMethod=5,4,0

/*
QPlaceReply::Type type() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}


/*
QList<QPlaceSearchResult> results() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_RESULTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceSearchResult> list = obj->results ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPLACESEARCHRESULT" );
    #else
    pDynSym = hb_dynsymFindName( "QPLACESEARCHRESULT" );
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
        hb_itemPutPtr( pItem, (QPlaceSearchResult *) new QPlaceSearchResult ( list[i] ) );
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
QPlaceSearchRequest request() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchRequest * ptr = new QPlaceSearchRequest( obj->request () );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREQUEST", true );
  }
#endif
}


/*
QPlaceSearchRequest previousPageRequest() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_PREVIOUSPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchRequest * ptr = new QPlaceSearchRequest( obj->previousPageRequest () );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREQUEST", true );
  }
#endif
}


/*
QPlaceSearchRequest nextPageRequest() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_NEXTPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchRequest * ptr = new QPlaceSearchRequest( obj->nextPageRequest () );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREQUEST", true );
  }
#endif
}



#pragma ENDDUMP
