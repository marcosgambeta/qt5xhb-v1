$header

#include "hbclass.ch"

CLASS QQmlPropertyValueSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setTarget

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

/*
virtual void setTarget(const QQmlProperty & property) = 0
*/
$virtualMethod=|void|setTarget|const QQmlProperty &

$extraMethods

#pragma ENDDUMP
