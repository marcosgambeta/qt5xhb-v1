$header

#include "hbclass.ch"

CLASS QIRProximityFilter INHERIT QSensorFilter

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
virtual bool filter(QIRProximityReading *reading) = 0
*/
$virtualMethod=5,1,0|bool|filter|QIRProximityReading *reading) = 0

#pragma ENDDUMP
