$header

#include "hbclass.ch"

CLASS QTapReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD tapDirection
   METHOD setTapDirection
   METHOD isDoubleTap
   METHOD setDoubleTap

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
TapDirection tapDirection() const
*/
HB_FUNC_STATIC( QTAPREADING_TAPDIRECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tapDirection () );
  }
#endif
}


/*
void setTapDirection(TapDirection tapDirection)
*/
HB_FUNC_STATIC( QTAPREADING_SETTAPDIRECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTapDirection ( (QTapReading::TapDirection) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isDoubleTap() const
*/
HB_FUNC_STATIC( QTAPREADING_ISDOUBLETAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isDoubleTap () );
  }
#endif
}


/*
void setDoubleTap(bool doubleTap)
*/
HB_FUNC_STATIC( QTAPREADING_SETDOUBLETAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapReading * obj = (QTapReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDoubleTap ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
