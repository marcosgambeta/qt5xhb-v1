$header

#include "hbclass.ch"

CLASS QAccelerometerFilter INHERIT QSensorFilter

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual bool filter(QAccelerometerReading *reading) = 0
*/
$method=5,1,0|bool|filter|QAccelerometerReading *

#pragma ENDDUMP
