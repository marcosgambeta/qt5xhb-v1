/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QVARIANT
#endif

CLASS QScriptEngineAgent

   DATA pointer
   DATA class_id INIT Class_Id_QScriptEngineAgent
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QScriptEngineAgent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptEngineAgent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptEngineAgent>
#endif

/*
QScriptEngineAgent(QScriptEngine * engine)
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_NEW )
{
  QScriptEngine * par1 = (QScriptEngine *) _qt5xhb_itemGetPtr(1);
  QScriptEngineAgent * o = new QScriptEngineAgent ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSCRIPTENGINEAGENT_DELETE )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void contextPop()
*/
HB_FUNC_STATIC( QSCRIPTENGINEAGENT_CONTEXTPOP )
{
  QScriptEngineAgent * obj = (QScriptEngineAgent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->contextPop (  );
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
    obj->contextPush (  );
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
    QScriptEngine * ptr = obj->engine (  );
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
    QScriptValue * par2 = (QScriptValue *) _qt5xhb_itemGetPtr(2);
    obj->exceptionCatch ( (qint64) hb_parni(1), *par2 );
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
    QScriptValue * par2 = (QScriptValue *) _qt5xhb_itemGetPtr(2);
    obj->exceptionThrow ( (qint64) hb_parni(1), *par2, (bool) hb_parl(3) );
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
    int par1 = hb_parni(1);
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    QVariant * ptr = new QVariant( obj->extension (  (QScriptEngineAgent::Extension) par1, par2 ) );
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
    obj->functionEntry ( (qint64) hb_parni(1) );
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
    QScriptValue * par2 = (QScriptValue *) _qt5xhb_itemGetPtr(2);
    obj->functionExit ( (qint64) hb_parni(1), *par2 );
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
    obj->positionChange ( (qint64) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3) );
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
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    obj->scriptLoad ( (qint64) hb_parni(1), par2, par3, (int) hb_parni(4) );
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
    obj->scriptUnload ( (qint64) hb_parni(1) );
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
    int par1 = hb_parni(1);
    hb_retl( obj->supportsExtension (  (QScriptEngineAgent::Extension) par1 ) );
  }
}



HB_FUNC_STATIC( QSCRIPTENGINEAGENT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTENGINEAGENT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTENGINEAGENT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTENGINEAGENT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
