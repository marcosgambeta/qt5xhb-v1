$header

#include "hbclass.ch"

CLASS QRotationFilter INHERIT QSensorFilter

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
virtual bool filter(QRotationReading *reading) = 0
*/
$virtualMethod=5,1,0|bool|filter|QRotationReading *

#pragma ENDDUMP
