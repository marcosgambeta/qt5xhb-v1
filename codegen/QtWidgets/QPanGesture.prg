$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QPanGesture INHERIT QGesture

   METHOD delete
   METHOD acceleration
   METHOD delta
   METHOD lastOffset
   METHOD offset
   METHOD setAcceleration
   METHOD setLastOffset
   METHOD setOffset

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
qreal acceleration() const
*/
HB_FUNC_STATIC( QPANGESTURE_ACCELERATION )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->acceleration () );
  }
}

/*
QPointF delta() const
*/
HB_FUNC_STATIC( QPANGESTURE_DELTA )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->delta () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF lastOffset() const
*/
HB_FUNC_STATIC( QPANGESTURE_LASTOFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastOffset () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF offset() const
*/
HB_FUNC_STATIC( QPANGESTURE_OFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->offset () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setAcceleration(qreal value)
*/
HB_FUNC_STATIC( QPANGESTURE_SETACCELERATION )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAcceleration ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLastOffset(const QPointF & value)
*/
HB_FUNC_STATIC( QPANGESTURE_SETLASTOFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLastOffset ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset(const QPointF & value)
*/
HB_FUNC_STATIC( QPANGESTURE_SETOFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setOffset ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
