$header

#include "hbclass.ch"

CLASS QHideEvent INHERIT QEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHideEvent ()
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
