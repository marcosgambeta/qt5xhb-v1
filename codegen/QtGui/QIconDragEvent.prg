$header

#include "hbclass.ch"

CLASS QIconDragEvent INHERIT QEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QIconDragEvent()
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
