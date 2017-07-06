$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

CLASS QPlaceResult INHERIT QPlaceSearchResult

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD distance
   METHOD setDistance
   METHOD place
   METHOD setPlace
   METHOD isSponsored
   METHOD setSponsored

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QPlaceResult()
*/
HB_FUNC_STATIC( QPLACERESULT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * o = new QPlaceResult ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


$deleteMethod=5,4,0

/*
qreal distance() const
*/
HB_FUNC_STATIC( QPLACERESULT_DISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->distance () );
  }
#endif
}

/*
void setDistance(qreal distance)
*/
HB_FUNC_STATIC( QPLACERESULT_SETDISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDistance ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlace place() const
*/
HB_FUNC_STATIC( QPLACERESULT_PLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlace * ptr = new QPlace( obj->place () );
    _qt5xhb_createReturnClass ( ptr, "QPLACE", true );
  }
#endif
}

/*
void setPlace(const QPlace &place)
*/
HB_FUNC_STATIC( QPLACERESULT_SETPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPlace ( *PQPLACE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isSponsored() const
*/
HB_FUNC_STATIC( QPLACERESULT_ISSPONSORED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSponsored () );
  }
#endif
}

/*
void setSponsored(bool sponsored)
*/
HB_FUNC_STATIC( QPLACERESULT_SETSPONSORED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceResult * obj = (QPlaceResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSponsored ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
