$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTENGINEAGENT
REQUEST QSCRIPTCONTEXT
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTSYNTAXCHECKRESULT
#endif

CLASS QScriptEngine INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD abortEvaluation
   METHOD agent
   METHOD availableExtensions
   METHOD clearExceptions
   METHOD collectGarbage
   METHOD currentContext
   METHOD defaultPrototype
   METHOD evaluate
   METHOD globalObject
   METHOD hasUncaughtException
   METHOD importExtension
   METHOD importedExtensions
   METHOD installTranslatorFunctions
   METHOD isEvaluating
   METHOD newArray
   METHOD newDate
   METHOD newObject
   METHOD newQMetaObject
   METHOD newQObject
   METHOD newRegExp
   METHOD newVariant
   METHOD nullValue
   METHOD popContext
   METHOD processEventsInterval
   METHOD pushContext
   METHOD reportAdditionalMemoryCost
   METHOD setAgent
   METHOD setDefaultPrototype
   METHOD setGlobalObject
   METHOD setProcessEventsInterval
   METHOD toObject
   METHOD toStringHandle
   METHOD uncaughtException
   METHOD uncaughtExceptionBacktrace
   METHOD uncaughtExceptionLineNumber
   METHOD undefinedValue
   METHOD checkSyntax

   METHOD onSignalHandlerException

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QScriptEngine()
*/
$internalConstructor=|new1|

/*
QScriptEngine(QObject * parent)
*/
$internalConstructor=|new2|QObject *

//[1]QScriptEngine()
//[2]QScriptEngine(QObject * parent)

HB_FUNC_STATIC( QSCRIPTENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScriptEngine_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QScriptEngine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void abortEvaluation(const QScriptValue & result = QScriptValue())
*/
$method=|void|abortEvaluation|const QScriptValue &=QScriptValue()

/*
QScriptEngineAgent * agent() const
*/
$method=|QScriptEngineAgent *|agent|

/*
QStringList availableExtensions() const
*/
$method=|QStringList|availableExtensions|

/*
void clearExceptions()
*/
$method=|void|clearExceptions|

/*
void collectGarbage()
*/
$method=|void|collectGarbage|

/*
QScriptContext * currentContext() const
*/
$method=|QScriptContext *|currentContext|

/*
QScriptValue defaultPrototype(int metaTypeId) const
*/
$method=|QScriptValue|defaultPrototype|int

/*
QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
*/
$internalMethod=|QScriptValue|evaluate,evaluate1|const QString &,const QString &=QString(),int=1

/*
QScriptValue evaluate(const QScriptProgram & program)
*/
$internalMethod=|QScriptValue|evaluate,evaluate2|const QScriptProgram &

//[1]QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
//[2]QScriptValue evaluate(const QScriptProgram & program)

HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QScriptEngine_evaluate1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    QScriptEngine_evaluate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue globalObject() const
*/
$method=|QScriptValue|globalObject|

/*
bool hasUncaughtException() const
*/
$method=|bool|hasUncaughtException|

/*
QScriptValue importExtension(const QString & extension)
*/
$method=|QScriptValue|importExtension|const QString &

/*
QStringList importedExtensions() const
*/
$method=|QStringList|importedExtensions|

/*
void installTranslatorFunctions(const QScriptValue & object = QScriptValue())
*/
$method=|void|installTranslatorFunctions|const QScriptValue &=QScriptValue()

/*
bool isEvaluating() const
*/
$method=|bool|isEvaluating|

/*
QScriptValue newArray(uint length = 0)
*/
$method=|QScriptValue|newArray|uint=0

/*
QScriptValue newDate(const QDateTime & value)
*/
$method=|QScriptValue|newDate|const QDateTime &

/*
QScriptValue newObject()
*/
$internalMethod=|QScriptValue|newObject,newObject1|

/*
QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())
*/
$internalMethod=|QScriptValue|newObject,newObject2|QScriptClass *,const QScriptValue &=QScriptValue()

//[1]QScriptValue newObject()
//[2]QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())

HB_FUNC_STATIC( QSCRIPTENGINE_NEWOBJECT )
{
  if( ISNUMPAR(0) )
  {
    QScriptEngine_newObject1();
  }
  else if( ISBETWEEN(1,2) && ISQSCRIPTCLASS(1) && (ISQSCRIPTVALUE(2)||ISNIL(2))  )
  {
    QScriptEngine_newObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor = QScriptValue())
*/
$method=|QScriptValue|newQMetaObject|const QMetaObject *,const QScriptValue &=QScriptValue()

/*
QScriptValue newQObject(QObject * object, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
*/
$internalMethod=|QScriptValue|newQObject,newQObject1|QObject *,QScriptEngine::ValueOwnership=QScriptEngine::QtOwnership,const QObjectWrapOptions &=0

/*
QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
*/
$internalMethod=|QScriptValue|newQObject,newQObject2|const QScriptValue &,QObject *,QScriptEngine::ValueOwnership=QScriptEngine::QtOwnership,const QObjectWrapOptions &=0

//[1]QScriptValue newQObject(QObject * object, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
//[2]QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWQOBJECT )
{
  if( ISBETWEEN(1,3) && ISQOBJECT(1) && ISOPTNUM(2) && (ISQOBJECTWRAPOPTIONS(3)||ISNIL(3)) )
  {
    QScriptEngine_newQObject1();
  }
  else if( ISBETWEEN(2,4) && ISQSCRIPTVALUR(1) && ISQOBJECT(2) && ISOPTNUM(3) && (ISQOBJECTWRAPOPTIONS(4)||ISNIL(4)) )
  {
    QScriptEngine_newQObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newRegExp(const QRegExp & regexp)
*/
$internalMethod=|QScriptValue|newRegExp,newRegExp1|const QRegExp &

/*
QScriptValue newRegExp(const QString & pattern, const QString & flags)
*/
$internalMethod=|QScriptValue|newRegExp,newRegExp2|const QString &,const QString &

//[1]QScriptValue newRegExp(const QRegExp & regexp)
//[2]QScriptValue newRegExp(const QString & pattern, const QString & flags)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QScriptEngine_newRegExp1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QScriptEngine_newRegExp2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newVariant(const QVariant & value)
*/
$internalMethod=|QScriptValue|newVariant,newVariant1|const QVariant &

/*
QScriptValue newVariant(const QScriptValue & object, const QVariant & value)
*/
$internalMethod=|QScriptValue|newVariant,newVariant2|const QScriptValue &,const QVariant &

//[1]QScriptValue newVariant(const QVariant & value)
//[2]QScriptValue newVariant(const QScriptValue & object, const QVariant & value)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QScriptEngine_newVariant1();
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQVARIANT(2) )
  {
    QScriptEngine_newVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue nullValue()
*/
$method=|QScriptValue|nullValue|

/*
void popContext()
*/
$method=|void|popContext|

/*
int processEventsInterval() const
*/
$method=|int|processEventsInterval|

/*
QScriptContext * pushContext()
*/
$method=|QScriptContext *|pushContext|

/*
void reportAdditionalMemoryCost(int size)
*/
$method=|void|reportAdditionalMemoryCost|int

/*
void setAgent(QScriptEngineAgent * agent)
*/
$method=|void|setAgent|QScriptEngineAgent *

/*
void setDefaultPrototype(int metaTypeId, const QScriptValue & prototype)
*/
$method=|void|setDefaultPrototype|int,const QScriptValue &

/*
void setGlobalObject(const QScriptValue & object)
*/
$method=|void|setGlobalObject|const QScriptValue &

/*
void setProcessEventsInterval(int interval)
*/
$method=|void|setProcessEventsInterval|int

/*
QScriptValue toObject(const QScriptValue & value)
*/
$method=|QScriptValue|toObject|const QScriptValue &

/*
QScriptString toStringHandle(const QString & str)
*/
$method=|QScriptString|toStringHandle|const QString &

/*
QScriptValue uncaughtException() const
*/
$method=|QScriptValue|uncaughtException|

/*
QStringList uncaughtExceptionBacktrace() const
*/
$method=|QStringList|uncaughtExceptionBacktrace|

/*
int uncaughtExceptionLineNumber() const
*/
$method=|int|uncaughtExceptionLineNumber|

/*
QScriptValue undefinedValue()
*/
$method=|QScriptValue|undefinedValue|

/*
static QScriptSyntaxCheckResult checkSyntax(const QString & program)
*/
$staticMethod=|QScriptSyntaxCheckResult|checkSyntax|const QString &

#pragma ENDDUMP
