$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneMouseEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD button
   METHOD buttonDownPos
   METHOD buttonDownScenePos
   METHOD buttonDownScreenPos
   METHOD buttons
   METHOD lastPos
   METHOD lastScenePos
   METHOD lastScreenPos
   METHOD modifiers
   METHOD pos
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
Qt::MouseButton button () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTON )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->button () );
  }
}


/*
QPointF buttonDownPos ( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->buttonDownPos ( (Qt::MouseButton) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF buttonDownScenePos ( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNSCENEPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->buttonDownScenePos ( (Qt::MouseButton) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint buttonDownScreenPos ( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNSCREENPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->buttonDownScreenPos ( (Qt::MouseButton) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
Qt::MouseButtons buttons () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_BUTTONS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->buttons () );
  }
}


/*
QPointF lastPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_LASTPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF lastScenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_LASTSCENEPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastScenePos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint lastScreenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_LASTSCREENPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->lastScreenPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_MODIFIERS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifiers () );
  }
}


/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_POS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_SCENEPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOUSEEVENT_SCREENPOS )
{
  QGraphicsSceneMouseEvent * obj = (QGraphicsSceneMouseEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}



#pragma ENDDUMP
