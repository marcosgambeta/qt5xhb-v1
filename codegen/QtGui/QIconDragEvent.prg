$header

#include "hbclass.ch"

CLASS QIconDragEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QIconDragEvent()
*/
HB_FUNC_STATIC( QICONDRAGEVENT_NEW )
{
  QIconDragEvent * o = new QIconDragEvent ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
