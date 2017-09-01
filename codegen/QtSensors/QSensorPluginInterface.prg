$header

#include "hbclass.ch"

CLASS QSensorPluginInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD registerSensors

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
virtual void registerSensors() = 0
*/
$virtualMethod=5,1,0|void|registerSensors|

$extraMethods

#pragma ENDDUMP
