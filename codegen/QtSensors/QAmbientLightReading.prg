$header

#include "hbclass.ch"

CLASS QAmbientLightReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD lightLevel
   METHOD setLightLevel

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
LightLevel lightLevel() const
*/
$method=5,1,0|QAmbientLightReading::LightLevel|lightLevel|

/*
void setLightLevel(LightLevel lightLevel)
*/
$method=5,1,0|void|setLightLevel|QAmbientLightReading::LightLevel

#pragma ENDDUMP
