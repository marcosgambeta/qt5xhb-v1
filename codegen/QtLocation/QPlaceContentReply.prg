$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACECONTENTREQUEST
#endif

CLASS QPlaceContentReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD totalCount
   METHOD request
   METHOD previousPageRequest
   METHOD nextPageRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QPlaceContentReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * o = new QPlaceContentReply ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


$deleteMethod=5,4,0

/*
QPlaceReply::Type type() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}



/*
int totalCount() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_TOTALCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->totalCount () );
  }
#endif
}


/*
QPlaceContentRequest request() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceContentRequest * ptr = new QPlaceContentRequest( obj->request () );
    _qt5xhb_createReturnClass ( ptr, "QPLACECONTENTREQUEST", true );
  }
#endif
}


/*
QPlaceContentRequest previousPageRequest() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_PREVIOUSPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceContentRequest * ptr = new QPlaceContentRequest( obj->previousPageRequest () );
    _qt5xhb_createReturnClass ( ptr, "QPLACECONTENTREQUEST", true );
  }
#endif
}


/*
QPlaceContentRequest nextPageRequest() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_NEXTPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceContentRequest * ptr = new QPlaceContentRequest( obj->nextPageRequest () );
    _qt5xhb_createReturnClass ( ptr, "QPLACECONTENTREQUEST", true );
  }
#endif
}



#pragma ENDDUMP
