$header

#include "hbclass.ch"

CLASS QTapReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

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

/*
TapDirection tapDirection() const
*/
$method=5,1,0|QTapReading::TapDirection|tapDirection|

/*
void setTapDirection(TapDirection tapDirection)
*/
$method=5,1,0|void|setTapDirection|QTapReading::TapDirection

/*
bool isDoubleTap() const
*/
$method=5,1,0|bool|isDoubleTap|

/*
void setDoubleTap(bool doubleTap)
*/
$method=5,1,0|void|setDoubleTap|bool

#pragma ENDDUMP
