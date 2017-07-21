$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QGraphicsSceneResizeEvent INHERIT QGraphicsSceneEvent

   METHOD new
   METHOD delete
   METHOD newSize
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsSceneMoveEvent ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEW )
{
  QGraphicsSceneResizeEvent * o = new QGraphicsSceneResizeEvent ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QSizeF newSize () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEWSIZE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->newSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QSizeF oldSize () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_OLDSIZE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->oldSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



#pragma ENDDUMP
