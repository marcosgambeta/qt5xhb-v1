$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLENGINE
#endif

CLASS QQmlIncubationController

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD incubateFor
   METHOD incubateWhile
   METHOD incubatingObjectCount

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

$prototype=QQmlIncubationController()
$constructor=|new|

$deleteMethod

$prototype=QQmlEngine * engine() const
$method=|QQmlEngine *|engine|

$prototype=void incubateFor(int msecs)
$method=|void|incubateFor|int

$prototype=void incubateWhile(volatile bool * flag, int msecs = 0)
%% TODO: verificar 'volatile bool'
$method=|void|incubateWhile|bool *,int=0

$prototype=int incubatingObjectCount() const
$method=|int|incubatingObjectCount|

$extraMethods

#pragma ENDDUMP
