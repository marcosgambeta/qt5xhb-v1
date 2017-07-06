$header

#include "hbclass.ch"

CLASS QGeoServiceProviderFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$deleteMethod=5,4,0

$extraMethods

#pragma ENDDUMP
