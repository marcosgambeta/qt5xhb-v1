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
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_NEW )
{
  QScriptEngine * par1 = (QScriptEngine *) _qt5xhb_itemGetPtr(1);
  QScriptEngineAgent * o = new QScriptEngineAgent ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual void contextPop()
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_CONTEXTPOP )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->contextPop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void contextPush()
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_CONTEXTPUSH )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->contextPush ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptEngine * engine() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_ENGINE )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
virtual void exceptionCatch(qint64 scriptId, const QScriptValue & exception)
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_EXCEPTIONCATCH )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->exceptionCatch ( PQINT64(1), *PQSCRIPTVALUE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void exceptionThrow(qint64 scriptId, const QScriptValue & exception, bool hasHandler)
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_EXCEPTIONTHROW )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->exceptionThrow ( PQINT64(1), *PQSCRIPTVALUE(2), PBOOL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant extension(Extension extension, const QVariant & argument = QVariant())
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_EXTENSION )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    QVariant * ptr = new QVariant( obj->extension ( (QScriptEngineAgent::Extension) hb_parni(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void functionEntry(qint64 scriptId)
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_FUNCTIONENTRY )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->functionEntry ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void functionExit(qint64 scriptId, const QScriptValue & returnValue)
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_FUNCTIONEXIT )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->functionExit ( PQINT64(1), *PQSCRIPTVALUE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void positionChange(qint64 scriptId, int lineNumber, int columnNumber)
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_POSITIONCHANGE )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->positionChange ( PQINT64(1), PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void scriptLoad(qint64 id, const QString & program, const QString & fileName, int baseLineNumber)
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SCRIPTLOAD )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->scriptLoad ( PQINT64(1), PQSTRING(2), PQSTRING(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void scriptUnload(qint64 id)
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SCRIPTUNLOAD )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->scriptUnload ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool supportsExtension(Extension extension) const
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SUPPORTSEXTENSION )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->supportsExtension ( (QScriptEngineAgent::Extension) hb_parni(1) ) );
  }
}



$extraMethods

#pragma ENDDUMP
