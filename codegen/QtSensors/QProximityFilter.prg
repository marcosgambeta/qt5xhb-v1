$header

#include "hbclass.ch"

CLASS QProximityFilter INHERIT QSensorFilter

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=virtual bool filter(QProximityReading *reading) = 0
$virtualMethod=5,1,0|bool|filter|QProximityReading *

#pragma ENDDUMP
