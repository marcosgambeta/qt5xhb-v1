/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTENGINEAGENT
REQUEST QSCRIPTCONTEXT
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTSYNTAXCHECKRESULT
#endif

CLASS QScriptEngine INHERIT QObject

   //DATA class_id INIT Class_Id_QScriptEngine
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD abortEvaluation
   METHOD agent
   METHOD availableExtensions
   METHOD clearExceptions
   METHOD collectGarbage
   METHOD currentContext
   METHOD defaultPrototype
   METHOD evaluate1
   METHOD evaluate2
   METHOD evaluate
   METHOD globalObject
   METHOD hasUncaughtException
   METHOD importExtension
   METHOD importedExtensions
   METHOD installTranslatorFunctions
   METHOD isEvaluating
   METHOD newArray
   METHOD newDate
   METHOD newObject1
   METHOD newObject2
   METHOD newObject
   METHOD newQMetaObject
   METHOD newQObject
   METHOD newRegExp1
   METHOD newRegExp2
   METHOD newRegExp
   METHOD newVariant1
   METHOD newVariant2
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

PROCEDURE destroyObject () CLASS QScriptEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptEngine>
#endif

#include <QStringList>

/*
QScriptEngine()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEW1 )
{
  QScriptEngine * o = new QScriptEngine (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptEngine(QObject * parent)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEW2 )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QScriptEngine * o = new QScriptEngine ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QScriptEngine()
//[2]QScriptEngine(QObject * parent)

HB_FUNC_STATIC( QSCRIPTENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTENGINE_DELETE )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void abortEvaluation(const QScriptValue & result = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_ABORTEVALUATION )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    obj->abortEvaluation ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptEngineAgent * agent() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_AGENT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngineAgent * ptr = obj->agent (  );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTENGINEAGENT" );
  }
}


/*
QStringList availableExtensions() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_AVAILABLEEXTENSIONS )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->availableExtensions (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void clearExceptions()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CLEAREXCEPTIONS )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearExceptions (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void collectGarbage()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_COLLECTGARBAGE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->collectGarbage (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptContext * currentContext() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CURRENTCONTEXT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptContext * ptr = obj->currentContext (  );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT" );
  }
}


/*
QScriptValue defaultPrototype(int metaTypeId) const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_DEFAULTPROTOTYPE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->defaultPrototype ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE1 )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QScriptValue * ptr = new QScriptValue( obj->evaluate ( par1, par2, (int) ISNIL(3)? 1 : hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

/*
QScriptValue evaluate(const QScriptProgram & program)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE2 )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptProgram * par1 = (QScriptProgram *) _qt5xhb_itemGetPtr(1);
    QScriptValue * ptr = new QScriptValue( obj->evaluate ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
//[2]QScriptValue evaluate(const QScriptProgram & program)

HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_EVALUATE1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_EVALUATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
QScriptValue globalObject() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_GLOBALOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->globalObject (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
bool hasUncaughtException() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_HASUNCAUGHTEXCEPTION )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasUncaughtException (  ) );
  }
}


/*
QScriptValue importExtension(const QString & extension)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_IMPORTEXTENSION )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QScriptValue * ptr = new QScriptValue( obj->importExtension ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QStringList importedExtensions() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_IMPORTEDEXTENSIONS )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->importedExtensions (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void installTranslatorFunctions(const QScriptValue & object = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_INSTALLTRANSLATORFUNCTIONS )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue par1 = ISNIL(1)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(1);
    obj->installTranslatorFunctions ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEvaluating() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_ISEVALUATING )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEvaluating (  ) );
  }
}


/*
QScriptValue newArray(uint length = 0)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWARRAY )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->newArray ( (uint) ISNIL(1)? 0 : hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}



/*
QScriptValue newDate(const QDateTime & value)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWDATE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qt5xhb_itemGetPtr(1);
    QScriptValue * ptr = new QScriptValue( obj->newDate ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}




/*
QScriptValue newObject()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWOBJECT1 )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->newObject (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

/*
QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWOBJECT2 )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptClass * par1 = (QScriptClass *) _qt5xhb_itemGetPtr(1);
    QScriptValue par2 = ISNIL(2)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(2);
    QScriptValue * ptr = new QScriptValue( obj->newObject ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue newObject()
//[2]QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())

HB_FUNC_STATIC( QSCRIPTENGINE_NEWOBJECT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWOBJECT1 );
  }
  else if( ISBETWEEN(1,2) && ISQSCRIPTCLASS(1) && (ISQSCRIPTVALUE(2)||ISNIL(2))  )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWOBJECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWQMETAOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * par1 = (const QMetaObject *) _qt5xhb_itemGetPtr(1);
    QScriptValue par2 = ISNIL(2)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(2);
    QScriptValue * ptr = new QScriptValue( obj->newQMetaObject ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}



//[1]QScriptValue newQObject(QObject * object, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
//[2]QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWQOBJECT )
{
  // TODO: implementar
}

/*
QScriptValue newRegExp(const QRegExp & regexp)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP1 )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegExp * par1 = (QRegExp *) _qt5xhb_itemGetPtr(1);
    QScriptValue * ptr = new QScriptValue( obj->newRegExp ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

/*
QScriptValue newRegExp(const QString & pattern, const QString & flags)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP2 )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QScriptValue * ptr = new QScriptValue( obj->newRegExp ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue newRegExp(const QRegExp & regexp)
//[2]QScriptValue newRegExp(const QString & pattern, const QString & flags)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWREGEXP1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWREGEXP2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newVariant(const QVariant & value)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT1 )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
    QScriptValue * ptr = new QScriptValue( obj->newVariant ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

/*
QScriptValue newVariant(const QScriptValue & object, const QVariant & value)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT2 )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    QScriptValue * ptr = new QScriptValue( obj->newVariant ( *par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue newVariant(const QVariant & value)
//[2]QScriptValue newVariant(const QScriptValue & object, const QVariant & value)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWVARIANT1 );
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWVARIANT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue nullValue()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NULLVALUE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->nullValue (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
void popContext()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_POPCONTEXT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->popContext (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int processEventsInterval() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_PROCESSEVENTSINTERVAL )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->processEventsInterval (  ) );
  }
}


/*
QScriptContext * pushContext()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_PUSHCONTEXT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptContext * ptr = obj->pushContext (  );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT" );
  }
}


/*
void reportAdditionalMemoryCost(int size)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_REPORTADDITIONALMEMORYCOST )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reportAdditionalMemoryCost ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setAgent(QScriptEngineAgent * agent)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETAGENT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngineAgent * par1 = (QScriptEngineAgent *) _qt5xhb_itemGetPtr(1);
    obj->setAgent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultPrototype(int metaTypeId, const QScriptValue & prototype)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETDEFAULTPROTOTYPE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par2 = (QScriptValue *) _qt5xhb_itemGetPtr(2);
    obj->setDefaultPrototype ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGlobalObject(const QScriptValue & object)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETGLOBALOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    obj->setGlobalObject ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProcessEventsInterval(int interval)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETPROCESSEVENTSINTERVAL )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProcessEventsInterval ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptValue toObject(const QScriptValue & value)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_TOOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    QScriptValue * ptr = new QScriptValue( obj->toObject ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}



/*
QScriptString toStringHandle(const QString & str)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_TOSTRINGHANDLE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QScriptString * ptr = new QScriptString( obj->toStringHandle ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTSTRING" );
  }
}


/*
QScriptValue uncaughtException() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTION )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->uncaughtException (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QStringList uncaughtExceptionBacktrace() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTIONBACKTRACE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->uncaughtExceptionBacktrace (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
int uncaughtExceptionLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTIONLINENUMBER )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->uncaughtExceptionLineNumber (  ) );
  }
}


/*
QScriptValue undefinedValue()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNDEFINEDVALUE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->undefinedValue (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
static QScriptSyntaxCheckResult checkSyntax(const QString & program)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CHECKSYNTAX )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QScriptSyntaxCheckResult * ptr = new QScriptSyntaxCheckResult( QScriptEngine::checkSyntax ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QSCRIPTSYNTAXCHECKRESULT" );
}




#pragma ENDDUMP
