$header

#include "hbclass.ch"

CLASS QHideEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QHideEvent ()
*/
HB_FUNC_STATIC( QHIDEEVENT_NEW )
{
  QHideEvent * o = new QHideEvent ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
