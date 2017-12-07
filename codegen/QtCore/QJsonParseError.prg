$header

#include "hbclass.ch"

CLASS QJsonParseError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD errorString

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

$prototype=QString errorString() const
$method=|QString|errorString|

$extraMethods

#pragma ENDDUMP
