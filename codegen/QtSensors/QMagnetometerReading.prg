$header

#include "hbclass.ch"

CLASS QMagnetometerReading INHERIT QSensorReading

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

$prototype=qreal x() const
$method=5,1,0|qreal|x|

$prototype=void setX(qreal x)
$method=5,1,0|void|setX|qreal

$prototype=qreal y() const
$method=5,1,0|qreal|y|

$prototype=void setY(qreal y)
$method=5,1,0|void|setY|qreal

$prototype=qreal z() const
$method=5,1,0|qreal|z|

$prototype=void setZ(qreal z)
$method=5,1,0|void|setZ|qreal

$prototype=qreal calibrationLevel() const
$method=5,1,0|qreal|calibrationLevel|

$prototype=void setCalibrationLevel(qreal calibrationLevel)
$method=5,1,0|void|setCalibrationLevel|qreal

#pragma ENDDUMP
