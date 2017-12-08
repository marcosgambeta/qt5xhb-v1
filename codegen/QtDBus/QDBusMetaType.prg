$header

#include "hbclass.ch"

CLASS QDBusMetaType

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD demarshall
   METHOD signatureToType
   METHOD typeToSignature

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

$prototype=static bool demarshall(const QDBusArgument &, int id, void *data)
$staticMethod=|bool|demarshall|const QDBusArgument &,int,void *

$prototype=static int signatureToType(const char *signature)
$staticMethod=|int|signatureToType|const char *

$prototype=static const char *typeToSignature(int type)
$staticMethod=|const char *|typeToSignature|int

$extraMethods

#pragma ENDDUMP
