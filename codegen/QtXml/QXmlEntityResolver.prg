$header

#include "hbclass.ch"

CLASS QXmlEntityResolver

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

$prototype=virtual QString errorString () const = 0
$virtualMethod=|QString|errorString|

$extraMethods

#pragma ENDDUMP
