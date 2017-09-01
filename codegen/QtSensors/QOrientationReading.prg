$header

#include "hbclass.ch"

CLASS QOrientationReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD orientation
   METHOD setOrientation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
Orientation orientation() const
*/
$method=5,1,0|QOrientationReading::Orientation|orientation|

/*
void setOrientation(Orientation orientation)
*/
$method=5,1,0|void|setOrientation|QOrientationReading::Orientation

#pragma ENDDUMP
