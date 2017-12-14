$header

#include "hbclass.ch"

CLASS QTiltReading INHERIT QSensorReading

   METHOD delete
   METHOD yRotation
   METHOD setYRotation
   METHOD xRotation
   METHOD setXRotation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal yRotation() const
$method=5,1,0|qreal|yRotation|

$prototype=void setYRotation(qreal y)
$method=5,1,0|void|setYRotation|qreal

$prototype=qreal xRotation() const
$method=5,1,0|qreal|xRotation|

$prototype=void setXRotation(qreal x)
$method=5,1,0|void|setXRotation|qreal

#pragma ENDDUMP
