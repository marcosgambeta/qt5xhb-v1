$header

#include "hbclass.ch"

CLASS QIRProximityReading INHERIT QSensorReading

   METHOD delete
   METHOD reflectance
   METHOD setReflectance

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal reflectance() const
$method=5,1,0|qreal|reflectance|

$prototype=void setReflectance(qreal reflectance)
$method=5,1,0|void|setReflectance|qreal

#pragma ENDDUMP
