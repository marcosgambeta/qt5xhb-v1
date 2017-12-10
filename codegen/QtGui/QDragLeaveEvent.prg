$header

#include "hbclass.ch"

CLASS QDragLeaveEvent INHERIT QEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDragLeaveEvent ()
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
