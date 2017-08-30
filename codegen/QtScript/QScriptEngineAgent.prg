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

/*
QScriptEngineAgent(QScriptEngine * engine)
*/
$constructor=|new|QScriptEngine *

$deleteMethod

/*
virtual void contextPop()
*/
$virtualMethod=|void|contextPop|

/*
virtual void contextPush()
*/
$virtualMethod=|void|contextPush|

/*
QScriptEngine * engine() const
*/
$method=|QScriptEngine *|engine|

/*
virtual void exceptionCatch(qint64 scriptId, const QScriptValue & exception)
*/
$virtualMethod=|void|exceptionCatch|qint64,const QScriptValue &

/*
virtual void exceptionThrow(qint64 scriptId, const QScriptValue & exception, bool hasHandler)
*/
$virtualMethod=|void|exceptionThrow|qint64,const QScriptValue &,bool

/*
virtual QVariant extension(Extension extension, const QVariant & argument = QVariant())
*/
$virtualMethod=|QVariant|extension|QScriptEngineAgent::Extension,const QVariant &=QVariant()

/*
virtual void functionEntry(qint64 scriptId)
*/
$virtualMethod=|void|functionEntry|qint64

/*
virtual void functionExit(qint64 scriptId, const QScriptValue & returnValue)
*/
$virtualMethod=|void|functionExit|qint64,const QScriptValue &

/*
virtual void positionChange(qint64 scriptId, int lineNumber, int columnNumber)
*/
$virtualMethod=|void|positionChange|qint64,int,int

/*
virtual void scriptLoad(qint64 id, const QString & program, const QString & fileName, int baseLineNumber)
*/
$virtualMethod=|void|scriptLoad|qint64,const QString &,const QString &,int

/*
virtual void scriptUnload(qint64 id)
*/
$virtualMethod=|void|scriptUnload|qint64

/*
virtual bool supportsExtension(Extension extension) const
*/
$virtualMethod=|bool|supportsExtension|QScriptEngineAgent::Extension

$extraMethods

#pragma ENDDUMP
