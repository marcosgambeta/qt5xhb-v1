$header

#include "hbclass.ch"

CLASS QDragLeaveEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDragLeaveEvent ()
*/
HB_FUNC_STATIC( QDRAGLEAVEEVENT_NEW )
{
  QDragLeaveEvent * o = new QDragLeaveEvent ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
