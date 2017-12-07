$header

#include "hbclass.ch"

CLASS QDebugStateSaver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
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

$prototype=QDebugStateSaver(QDebug &dbg)
$constructor=|new|QDebug &

$deleteMethod

$extraMethods

#pragma ENDDUMP
