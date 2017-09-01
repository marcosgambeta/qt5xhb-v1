$header

#include "hbclass.ch"

CLASS QSensorFilter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD filter

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
virtual bool filter(QSensorReading *reading) = 0
*/
$virtualMethod=5,1,0|bool|filter|QSensorReading *

$extraMethods

#pragma ENDDUMP
