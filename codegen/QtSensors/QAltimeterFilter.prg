$header

#include "hbclass.ch"

CLASS QAltimeterFilter INHERIT QSensorFilter

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual bool filter(QAltimeterReading *reading) = 0
*/
$method=5,1,0|bool|filter|QAltimeterReading *

#pragma ENDDUMP
