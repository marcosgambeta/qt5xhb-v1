$header

#include "hbclass.ch"

CLASS QStyleHintReturn

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

$prototype=QStyleHintReturn(int version = QStyleOption::Version, int type = SH_Default)
$constructor=|new|int=QStyleOption::Version,int=QStyleHintReturn::SH_Default)

$deleteMethod

$extraMethods

#pragma ENDDUMP
