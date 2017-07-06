$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QPOINTF
REQUEST QPOINT
REQUEST QWIDGET
#endif

CLASS QGraphicsSceneDragDropEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD acceptProposedAction
   METHOD buttons
   METHOD dropAction
   METHOD mimeData
   METHOD modifiers
   METHOD pos
   METHOD possibleActions
   METHOD proposedAction
   METHOD scenePos
   METHOD screenPos
   METHOD setDropAction
   METHOD source

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void acceptProposedAction ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_ACCEPTPROPOSEDACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->acceptProposedAction ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::MouseButtons buttons () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_BUTTONS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->buttons () );
  }
}


/*
Qt::DropAction dropAction () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_DROPACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->dropAction () );
  }
}


/*
const QMimeData * mimeData () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_MIMEDATA )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMimeData * ptr = obj->mimeData ();
    _qt5xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}


/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_MODIFIERS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifiers () );
  }
}


/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_POS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
Qt::DropActions possibleActions () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_POSSIBLEACTIONS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->possibleActions () );
  }
}


/*
Qt::DropAction proposedAction () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_PROPOSEDACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->proposedAction () );
  }
}


/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SCENEPOS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SCREENPOS )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
void setDropAction ( Qt::DropAction action )
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SETDROPACTION )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDropAction ( (Qt::DropAction) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * source () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEDRAGDROPEVENT_SOURCE )
{
  QGraphicsSceneDragDropEvent * obj = (QGraphicsSceneDragDropEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->source ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}



#pragma ENDDUMP
