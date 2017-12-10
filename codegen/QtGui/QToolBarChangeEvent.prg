$header

#include "hbclass.ch"

CLASS QToolBarChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD toggle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QToolBarChangeEvent(bool t)
$constructor=|new|bool

$deleteMethod

$prototype=bool toggle() const
$method=|bool|toggle|

#pragma ENDDUMP
