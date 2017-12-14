$header

#include "hbclass.ch"

CLASS QCompassFilter INHERIT QSensorFilter

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=virtual bool filter(QCompassReading *reading) = 0
$method=5,1,0|bool|filter|QCompassReading *

#pragma ENDDUMP
