%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QVARIANT
#endif

CLASS QScriptEngineAgent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contextPop
   METHOD contextPush
   METHOD engine
   METHOD exceptionCatch
   METHOD exceptionThrow
   METHOD extension
   METHOD functionEntry
   METHOD functionExit
   METHOD positionChange
   METHOD scriptLoad
   METHOD scriptUnload
   METHOD supportsExtension

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

#include <QScriptEngine>

$prototype=QScriptEngineAgent(QScriptEngine * engine)
$constructor=|new|QScriptEngine *

$deleteMethod

$prototype=virtual void contextPop()
$virtualMethod=|void|contextPop|

$prototype=virtual void contextPush()
$virtualMethod=|void|contextPush|

$prototype=QScriptEngine * engine() const
$method=|QScriptEngine *|engine|

$prototype=virtual void exceptionCatch(qint64 scriptId, const QScriptValue & exception)
$virtualMethod=|void|exceptionCatch|qint64,const QScriptValue &

$prototype=virtual void exceptionThrow(qint64 scriptId, const QScriptValue & exception, bool hasHandler)
$virtualMethod=|void|exceptionThrow|qint64,const QScriptValue &,bool

$prototype=virtual QVariant extension(Extension extension, const QVariant & argument = QVariant())
$virtualMethod=|QVariant|extension|QScriptEngineAgent::Extension,const QVariant &=QVariant()

$prototype=virtual void functionEntry(qint64 scriptId)
$virtualMethod=|void|functionEntry|qint64

$prototype=virtual void functionExit(qint64 scriptId, const QScriptValue & returnValue)
$virtualMethod=|void|functionExit|qint64,const QScriptValue &

$prototype=virtual void positionChange(qint64 scriptId, int lineNumber, int columnNumber)
$virtualMethod=|void|positionChange|qint64,int,int

$prototype=virtual void scriptLoad(qint64 id, const QString & program, const QString & fileName, int baseLineNumber)
$virtualMethod=|void|scriptLoad|qint64,const QString &,const QString &,int

$prototype=virtual void scriptUnload(qint64 id)
$virtualMethod=|void|scriptUnload|qint64

$prototype=virtual bool supportsExtension(Extension extension) const
$virtualMethod=|bool|supportsExtension|QScriptEngineAgent::Extension

$extraMethods

#pragma ENDDUMP
