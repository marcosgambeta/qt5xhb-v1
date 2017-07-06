$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

CLASS QPlaceDetailsReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD place

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QPlaceDetailsReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACEDETAILSREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceDetailsReply * o = new QPlaceDetailsReply ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,4,0

/*
QPlaceReply::Type type() const
*/
HB_FUNC_STATIC( QPLACEDETAILSREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceDetailsReply * obj = (QPlaceDetailsReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}


/*
QPlace place() const
*/
HB_FUNC_STATIC( QPLACEDETAILSREPLY_PLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceDetailsReply * obj = (QPlaceDetailsReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlace * ptr = new QPlace( obj->place () );
    _qt5xhb_createReturnClass ( ptr, "QPLACE", true );
  }
#endif
}



#pragma ENDDUMP
