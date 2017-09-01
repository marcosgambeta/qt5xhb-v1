$header

#include "hbclass.ch"

CLASS QHolsterReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD holstered
   METHOD setHolstered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
bool holstered() const
*/
$method=5,1,0|bool|holstered|

/*
void setHolstered(bool holstered)
*/
$method=5,1,0|void|setHolstered|bool

#pragma ENDDUMP
