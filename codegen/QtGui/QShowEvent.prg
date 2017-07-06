$header

#include "hbclass.ch"

CLASS QShowEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QShowEvent()
*/
HB_FUNC_STATIC( QSHOWEVENT_NEW )
{
  QShowEvent * o = new QShowEvent ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
