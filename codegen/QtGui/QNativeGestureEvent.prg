$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QNativeGestureEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD gestureType
   METHOD value
   METHOD pos
   METHOD globalPos
   METHOD localPos
   METHOD windowPos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QNativeGestureEvent(Qt::NativeGestureType type, const QPointF &localPos, const QPointF &windowPos,const QPointF &screenPos, qreal value, ulong sequenceId, quint64 intArgument)
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_NEW )
{
  ulong par6 = hb_parnl(6);
  QNativeGestureEvent * o = new QNativeGestureEvent ( (Qt::NativeGestureType) hb_parni(1), *PQPOINTF(2), *PQPOINTF(3), *PQPOINTF(4), PQREAL(5), par6, PQUINT64(7) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
Qt::NativeGestureType gestureType() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_GESTURETYPE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->gestureType () );
  }
}


/*
qreal value() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_VALUE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->value () );
  }
}


/*
const QPoint pos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_POS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPoint globalPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_GLOBALPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPointF &localPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_LOCALPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->localPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &windowPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_WINDOWPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->windowPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &screenPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_SCREENPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->screenPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}



#pragma ENDDUMP
