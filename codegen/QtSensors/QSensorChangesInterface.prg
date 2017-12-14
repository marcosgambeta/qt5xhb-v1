$header

#include "hbclass.ch"

CLASS QSensorChangesInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD sensorsChanged

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

$prototype=virtual void sensorsChanged() = 0
$virtualMethod=5,1,0|void|sensorsChanged|

$extraMethods

#pragma ENDDUMP
