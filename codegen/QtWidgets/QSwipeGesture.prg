$header

#include "hbclass.ch"

CLASS QSwipeGesture INHERIT QGesture

   METHOD delete
   METHOD horizontalDirection
   METHOD setSwipeAngle
   METHOD swipeAngle
   METHOD verticalDirection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
SwipeDirection horizontalDirection() const
*/
HB_FUNC_STATIC( QSWIPEGESTURE_HORIZONTALDIRECTION )
{
  QSwipeGesture * obj = (QSwipeGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->horizontalDirection () );
  }
}

/*
void setSwipeAngle(qreal value)
*/
HB_FUNC_STATIC( QSWIPEGESTURE_SETSWIPEANGLE )
{
  QSwipeGesture * obj = (QSwipeGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSwipeAngle ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal swipeAngle() const
*/
HB_FUNC_STATIC( QSWIPEGESTURE_SWIPEANGLE )
{
  QSwipeGesture * obj = (QSwipeGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->swipeAngle () );
  }
}

/*
SwipeDirection verticalDirection() const
*/
HB_FUNC_STATIC( QSWIPEGESTURE_VERTICALDIRECTION )
{
  QSwipeGesture * obj = (QSwipeGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->verticalDirection () );
  }
}

#pragma ENDDUMP
