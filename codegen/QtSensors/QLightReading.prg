$header

#include "hbclass.ch"

CLASS QLightReading INHERIT QSensorReading

   METHOD delete
   METHOD lux
   METHOD setLux

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal lux() const
$method=5,1,0|qreal|lux|

$prototype=void setLux(qreal lux)
$method=5,1,0|void|setLux|qreal

#pragma ENDDUMP
