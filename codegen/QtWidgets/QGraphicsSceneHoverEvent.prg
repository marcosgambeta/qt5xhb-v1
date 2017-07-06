$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneHoverEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD delete
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
QPointF lastPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_LASTPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF lastScenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_LASTSCENEPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastScenePos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint lastScreenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_LASTSCREENPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->lastScreenPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_MODIFIERS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifiers () );
  }
}


/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_POS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_SCENEPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_SCREENPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}



#pragma ENDDUMP
