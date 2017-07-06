$header

#include "hbclass.ch"

CLASS QStyleHintReturnVariant INHERIT QStyleHintReturn

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStyleHintReturnVariant()
*/
HB_FUNC_STATIC( QSTYLEHINTRETURNVARIANT_NEW )
{
  QStyleHintReturnVariant * o = new QStyleHintReturnVariant ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
