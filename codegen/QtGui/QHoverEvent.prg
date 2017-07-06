$header

#include "hbclass.ch"

CLASS QHoverEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QHoverEvent ( Type type, const QPoint & pos, const QPoint & oldPos )
*/
HB_FUNC_STATIC( QHOVEREVENT_NEW )
{
  QHoverEvent * o = new QHoverEvent ( (QEvent::Type) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
