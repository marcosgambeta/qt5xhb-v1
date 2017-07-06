$header

#include "hbclass.ch"

CLASS QInputEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD modifiers

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QINPUTEVENT_MODIFIERS )
{
  QInputEvent * obj = (QInputEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifiers () );
  }
}

#pragma ENDDUMP
