$header

#include "hbclass.ch"

CLASS QHolsterReading INHERIT QSensorReading

   METHOD delete
   METHOD holstered
   METHOD setHolstered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=bool holstered() const
$method=5,1,0|bool|holstered|

$prototype=void setHolstered(bool holstered)
$method=5,1,0|void|setHolstered|bool

#pragma ENDDUMP
