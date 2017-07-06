$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QGraphicsSceneEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEEVENT_WIDGET )
{
  QGraphicsSceneEvent * obj = (QGraphicsSceneEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}



#pragma ENDDUMP
