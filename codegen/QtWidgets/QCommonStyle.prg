$header

#include "hbclass.ch"

CLASS QCommonStyle INHERIT QStyle

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCommonStyle ()
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
