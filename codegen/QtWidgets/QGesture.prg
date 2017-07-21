$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGesture INHERIT QObject

   METHOD new
   METHOD delete
   METHOD gestureCancelPolicy
   METHOD gestureType
   METHOD hasHotSpot
   METHOD hotSpot
   METHOD setGestureCancelPolicy
   METHOD setHotSpot
   METHOD state
   METHOD unsetHotSpot

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGesture(QObject * parent = 0)
*/
HB_FUNC_STATIC( QGESTURE_NEW )
{
  QGesture * o = new QGesture ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
GestureCancelPolicy gestureCancelPolicy() const
*/
HB_FUNC_STATIC( QGESTURE_GESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->gestureCancelPolicy () );
  }
}

/*
Qt::GestureType gestureType() const
*/
HB_FUNC_STATIC( QGESTURE_GESTURETYPE )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->gestureType () );
  }
}

/*
bool hasHotSpot() const
*/
$method=|bool|hasHotSpot|

/*
QPointF hotSpot() const
*/
HB_FUNC_STATIC( QGESTURE_HOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->hotSpot () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setGestureCancelPolicy(GestureCancelPolicy policy)
*/
HB_FUNC_STATIC( QGESTURE_SETGESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGestureCancelPolicy ( (QGesture::GestureCancelPolicy) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHotSpot(const QPointF & value)
*/
HB_FUNC_STATIC( QGESTURE_SETHOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setHotSpot ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::GestureState state() const
*/
HB_FUNC_STATIC( QGESTURE_STATE )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->state () );
  }
}

/*
void unsetHotSpot()
*/
HB_FUNC_STATIC( QGESTURE_UNSETHOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetHotSpot ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
