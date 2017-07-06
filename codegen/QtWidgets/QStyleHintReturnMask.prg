$header

#include "hbclass.ch"

CLASS QStyleHintReturnMask INHERIT QStyleHintReturn

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStyleHintReturnMask()
*/
HB_FUNC_STATIC( QSTYLEHINTRETURNMASK_NEW )
{
  QStyleHintReturnMask * o = new QStyleHintReturnMask ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
