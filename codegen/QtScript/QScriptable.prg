%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QScriptValue argument(int index) const
$method=|QScriptValue|argument|int

$prototype=int argumentCount() const
$method=|int|argumentCount|

$prototype=QScriptContext * context() const
$method=|QScriptContext *|context|

$prototype=QScriptEngine * engine() const
$method=|QScriptEngine *|engine|

$prototype=QScriptValue thisObject() const
$method=|QScriptValue|thisObject|

$extraMethods

#pragma ENDDUMP
