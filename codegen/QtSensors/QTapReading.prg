$header

#include "hbclass.ch"

CLASS QTapReading INHERIT QSensorReading

   METHOD delete
   METHOD tapDirection
   METHOD setTapDirection
   METHOD isDoubleTap
   METHOD setDoubleTap

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=TapDirection tapDirection() const
$method=5,1,0|QTapReading::TapDirection|tapDirection|

$prototype=void setTapDirection(TapDirection tapDirection)
$method=5,1,0|void|setTapDirection|QTapReading::TapDirection

$prototype=bool isDoubleTap() const
$method=5,1,0|bool|isDoubleTap|

$prototype=void setDoubleTap(bool doubleTap)
$method=5,1,0|void|setDoubleTap|bool

#pragma ENDDUMP
