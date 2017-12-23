$header

#include "hbclass.ch"

CLASS QAmbientTemperatureFilter INHERIT QSensorFilter

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=virtual bool filter(QAmbientTemperatureReading *reading) = 0
$virtualMethod=5,1,0|bool|filter|QAmbientTemperatureReading *

#pragma ENDDUMP
