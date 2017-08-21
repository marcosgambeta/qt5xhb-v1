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

/*
QQmlIncubationController()
*/
$constructor=|new|

$deleteMethod

/*
QQmlEngine * engine() const
*/
$method=|QQmlEngine *|engine|

/*
void incubateFor(int msecs)
*/
$method=|void|incubateFor|int

/*
void incubateWhile(volatile bool * flag, int msecs = 0)
*/
%% TODO: verificar 'volatile bool'
$method=|void|incubateWhile|bool *,int=0

/*
int incubatingObjectCount() const
*/
$method=|int|incubatingObjectCount|

$extraMethods

#pragma ENDDUMP
