$header

#include "hbclass.ch"

CLASS QCompassReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD azimuth
   METHOD setAzimuth
   METHOD calibrationLevel
   METHOD setCalibrationLevel

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal azimuth() const
*/
$method=5,1,0|qreal|azimuth|

/*
void setAzimuth(qreal azimuth)
*/
$method=5,1,0|void|setAzimuth|qreal

/*
qreal calibrationLevel() const
*/
$method=5,1,0|qreal|calibrationLevel|

/*
void setCalibrationLevel(qreal calibrationLevel)
*/
$method=5,1,0|void|setCalibrationLevel|qreal

#pragma ENDDUMP
