$header

#include "hbclass.ch"

CLASS QWinCompositionChangeEvent INHERIT QWinEvent

   METHOD new
   METHOD delete
   METHOD isCompositionEnabled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=explicit QWinCompositionChangeEvent(bool enabled)
$constructor=5,2,0|new|bool

$deleteMethod=5,2,0

$prototype=bool isCompositionEnabled() const
$method=5,2,0|bool|isCompositionEnabled|

#pragma ENDDUMP
