$header

#include "hbclass.ch"

CLASS QHoverEvent INHERIT QEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHoverEvent ( Type type, const QPoint & pos, const QPoint & oldPos )
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &

$deleteMethod

#pragma ENDDUMP
