$header

#include "hbclass.ch"

CLASS QCloseEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QCloseEvent ()
*/
HB_FUNC_STATIC( QCLOSEEVENT_NEW )
{
  QCloseEvent * o = new QCloseEvent ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
