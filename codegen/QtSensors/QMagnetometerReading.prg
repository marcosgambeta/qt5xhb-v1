$header

#include "hbclass.ch"

CLASS QMagnetometerReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD x
   METHOD setX
   METHOD y
   METHOD setY
   METHOD z
   METHOD setZ
   METHOD calibrationLevel
   METHOD setCalibrationLevel

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal x() const
*/
$method=5,1,0|qreal|x|

/*
void setX(qreal x)
*/
$method=5,1,0|void|setX|qreal

/*
qreal y() const
*/
$method=5,1,0|qreal|y|

/*
void setY(qreal y)
*/
$method=5,1,0|void|setY|qreal

/*
qreal z() const
*/
$method=5,1,0|qreal|z|

/*
void setZ(qreal z)
*/
$method=5,1,0|void|setZ|qreal

/*
qreal calibrationLevel() const
*/
$method=5,1,0|qreal|calibrationLevel|

/*
void setCalibrationLevel(qreal calibrationLevel)
*/
$method=5,1,0|void|setCalibrationLevel|qreal

#pragma ENDDUMP
