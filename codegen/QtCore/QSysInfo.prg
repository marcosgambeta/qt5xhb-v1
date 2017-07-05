$header

#include "hbclass.ch"

CLASS QSysInfo

   DATA pointer
   DATA self_destruction INIT .F.

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

$extraMethods

#pragma ENDDUMP
