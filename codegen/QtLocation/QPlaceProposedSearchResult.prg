$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESEARCHREQUEST
#endif

CLASS QPlaceProposedSearchResult INHERIT QPlaceSearchResult

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD searchRequest
   METHOD setSearchRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QPlaceSearchRequest>

/*
QPlaceProposedSearchResult()
*/
HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceProposedSearchResult * o = new QPlaceProposedSearchResult ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


$deleteMethod=5,4,0

/*
QPlaceSearchRequest searchRequest() const
*/
HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_SEARCHREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceProposedSearchResult * obj = (QPlaceProposedSearchResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchRequest * ptr = new QPlaceSearchRequest( obj->searchRequest () );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREQUEST", true );
  }
#endif
}

/*
void setSearchRequest(const QPlaceSearchRequest &request)
*/
HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_SETSEARCHREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceProposedSearchResult * obj = (QPlaceProposedSearchResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSearchRequest ( *PQPLACESEARCHREQUEST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
