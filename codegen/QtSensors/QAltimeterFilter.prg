$header

#include "hbclass.ch"

CLASS QAltimeterFilter INHERIT QSensorFilter

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=virtual bool filter(QAltimeterReading *reading) = 0
$virtualMethod=5,1,0|bool|filter|QAltimeterReading *

#pragma ENDDUMP
