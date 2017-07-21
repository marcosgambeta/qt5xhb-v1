$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneHelpEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHELPEVENT_SCENEPOS )
{
  QGraphicsSceneHelpEvent * obj = (QGraphicsSceneHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHELPEVENT_SCREENPOS )
{
  QGraphicsSceneHelpEvent * obj = (QGraphicsSceneHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}



#pragma ENDDUMP
