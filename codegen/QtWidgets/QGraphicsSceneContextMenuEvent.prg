$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneContextMenuEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD modifiers
   METHOD pos
   METHOD reason
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_MODIFIERS )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifiers () );
  }
}


/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_POS )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
Reason reason () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_REASON )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->reason () );
  }
}


/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_SCENEPOS )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_SCREENPOS )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}



#pragma ENDDUMP
