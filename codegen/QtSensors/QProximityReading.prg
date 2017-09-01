$header

#include "hbclass.ch"

CLASS QProximityReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD close
   METHOD setClose

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
bool close() const
*/
$method=5,1,0|bool|close|

/*
void setClose(bool close)
*/
$method=5,1,0|void|setClose|bool

#pragma ENDDUMP
