$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTCONTEXT
REQUEST QSCRIPTENGINE
#endif

CLASS QScriptable

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD argument
   METHOD argumentCount
   METHOD context
   METHOD engine
   METHOD thisObject

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

#include <QScriptValue>

$deleteMethod

/*
QScriptValue argument(int index) const
*/
$method=|QScriptValue|argument|int

/*
int argumentCount() const
*/
$method=|int|argumentCount|

/*
QScriptContext * context() const
*/
$method=|QScriptContext *|context|

/*
QScriptEngine * engine() const
*/
$method=|QScriptEngine *|engine|

/*
QScriptValue thisObject() const
*/
$method=|QScriptValue|thisObject|

$extraMethods

#pragma ENDDUMP
