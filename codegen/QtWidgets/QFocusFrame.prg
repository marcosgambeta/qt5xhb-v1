$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QFocusFrame INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD setWidget
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFocusFrame ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFOCUSFRAME_NEW )
{
  QFocusFrame * o = new QFocusFrame ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QFOCUSFRAME_SETWIDGET )
{
  QFocusFrame * obj = (QFocusFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QFOCUSFRAME_WIDGET )
{
  QFocusFrame * obj = (QFocusFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}



#pragma ENDDUMP
