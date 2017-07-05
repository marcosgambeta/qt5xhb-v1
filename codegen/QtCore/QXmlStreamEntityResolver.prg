$header

#include "hbclass.ch"

CLASS QXmlStreamEntityResolver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD resolveUndeclaredEntity

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
virtual QString resolveUndeclaredEntity(const QString & name)
*/
$method=|QString|resolveUndeclaredEntity|const QString &

$extraMethods

#pragma ENDDUMP
