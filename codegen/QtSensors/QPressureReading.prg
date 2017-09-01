$header

#include "hbclass.ch"

CLASS QPressureReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD pressure
   METHOD setPressure

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal pressure() const
*/
$method=5,1,0|qreal|pressure|

/*
void setPressure(qreal pressure)
*/
$method=5,1,0|void|setPressure|qreal

#pragma ENDDUMP
