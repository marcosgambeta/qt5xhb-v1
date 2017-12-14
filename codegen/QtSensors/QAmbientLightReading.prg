$header

#include "hbclass.ch"

CLASS QAmbientLightReading INHERIT QSensorReading

   METHOD delete
   METHOD lightLevel
   METHOD setLightLevel

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=LightLevel lightLevel() const
$method=5,1,0|QAmbientLightReading::LightLevel|lightLevel|

$prototype=void setLightLevel(LightLevel lightLevel)
$method=5,1,0|void|setLightLevel|QAmbientLightReading::LightLevel

#pragma ENDDUMP
