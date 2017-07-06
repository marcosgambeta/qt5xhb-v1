$header

#include "hbclass.ch"

CLASS QDeclarativePropertyValueSource

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

$includes

$deleteMethod

$extraMethods

#pragma ENDDUMP
