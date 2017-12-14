$header

#include "hbclass.ch"

CLASS QRotationReading INHERIT QSensorReading

   METHOD delete
   METHOD x
   METHOD y
   METHOD z
   METHOD setFromEuler

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal x() const
$method=5,1,0|qreal|x|

$prototype=qreal y() const
$method=5,1,0|qreal|y|

$prototype=qreal z() const
$method=5,1,0|qreal|z|

$prototype=void setFromEuler(qreal x, qreal y, qreal z)
$method=5,1,0|void|setFromEuler|qreal,qreal,qreal

#pragma ENDDUMP
