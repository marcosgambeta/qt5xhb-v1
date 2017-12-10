$header

#include "hbclass.ch"

CLASS QCloseEvent INHERIT QEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCloseEvent ()
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
