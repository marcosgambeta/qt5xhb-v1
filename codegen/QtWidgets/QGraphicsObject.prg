$header

#include "hbclass.ch"

CLASS QGraphicsObject INHERIT QObject,QGraphicsItem

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD grabGesture
   METHOD ungrabGesture

   METHOD onEnabledChanged
   METHOD onOpacityChanged
   METHOD onParentChanged
   METHOD onRotationChanged
   METHOD onScaleChanged
   METHOD onVisibleChanged
   METHOD onXChanged
   METHOD onYChanged
   METHOD onZChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
*/
HB_FUNC_STATIC( QGRAPHICSOBJECT_GRABGESTURE )
{
  QGraphicsObject * obj = (QGraphicsObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::GestureFlags() : hb_parni(2);
    obj->grabGesture ( (Qt::GestureType) hb_parni(1), (Qt::GestureFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void ungrabGesture ( Qt::GestureType gesture )
*/
HB_FUNC_STATIC( QGRAPHICSOBJECT_UNGRABGESTURE )
{
  QGraphicsObject * obj = (QGraphicsObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ungrabGesture ( (Qt::GestureType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
