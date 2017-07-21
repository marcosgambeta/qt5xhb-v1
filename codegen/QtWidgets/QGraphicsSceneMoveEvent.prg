$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGraphicsSceneMoveEvent INHERIT QGraphicsSceneEvent

   METHOD new
   METHOD delete
   METHOD newPos
   METHOD oldPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsSceneMoveEvent ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_NEW )
{
  QGraphicsSceneMoveEvent * o = new QGraphicsSceneMoveEvent ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QPointF newPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_NEWPOS )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->newPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF oldPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_OLDPOS )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->oldPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}



#pragma ENDDUMP
