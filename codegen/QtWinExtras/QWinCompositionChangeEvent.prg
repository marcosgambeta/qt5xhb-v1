$header

#include "hbclass.ch"

CLASS QWinCompositionChangeEvent INHERIT QWinEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isCompositionEnabled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinCompositionChangeEvent(bool enabled)
*/
$constructor=5,2,0|new|bool

$deleteMethod=5,2,0

/*
bool isCompositionEnabled() const
*/
$method=5,2,0|bool|isCompositionEnabled|

#pragma ENDDUMP
