/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTENGINE
#endif

CLASS QScriptContext

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activationObject
   METHOD argument
   METHOD argumentCount
   METHOD argumentsObject
   METHOD backtrace
   METHOD callee
   METHOD engine
   METHOD isCalledAsConstructor
   METHOD parentContext
   METHOD setActivationObject
   METHOD setThisObject
   METHOD state
   METHOD thisObject
   METHOD throwError1
   METHOD throwError2
   METHOD throwError
   METHOD throwValue
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptContext>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptContext>
#endif

#include <QStringList>

HB_FUNC_STATIC( QSCRIPTCONTEXT_DELETE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScriptValue activationObject() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ACTIVATIONOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->activationObject () );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue argument(int index) const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ARGUMENT )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->argument ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
int argumentCount() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ARGUMENTCOUNT )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->argumentCount () );
  }
}


/*
QScriptValue argumentsObject() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ARGUMENTSOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->argumentsObject () );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QStringList backtrace() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_BACKTRACE )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->backtrace ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QScriptValue callee() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_CALLEE )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->callee () );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptEngine * engine() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ENGINE )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
bool isCalledAsConstructor() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ISCALLEDASCONSTRUCTOR )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCalledAsConstructor () );
  }
}


/*
QScriptContext * parentContext() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_PARENTCONTEXT )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptContext * ptr = obj->parentContext ();
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT" );
  }
}


/*
void setActivationObject(const QScriptValue & activation)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_SETACTIVATIONOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    obj->setActivationObject ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setThisObject(const QScriptValue & thisObject)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_SETTHISOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    obj->setThisObject ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ExecutionState state() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_STATE )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
QScriptValue thisObject() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_THISOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->thisObject () );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue throwError(Error error, const QString & text)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWERROR1 )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QScriptValue * ptr = new QScriptValue( obj->throwError (  (QScriptContext::Error) par1, PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

/*
QScriptValue throwError(const QString & text)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWERROR2 )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->throwError ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue throwError(Error error, const QString & text)
//[2]QScriptValue throwError(const QString & text)

HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWERROR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXT_THROWERROR1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXT_THROWERROR2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue throwValue(const QScriptValue & value)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWVALUE )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    QScriptValue * ptr = new QScriptValue( obj->throwValue ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QString toString() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_TOSTRING )
{
  QScriptContext * obj = (QScriptContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->toString () ) );
  }
}



HB_FUNC_STATIC( QSCRIPTCONTEXT_NEWFROM )
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

HB_FUNC_STATIC( QSCRIPTCONTEXT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCONTEXT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCONTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTCONTEXT_SETSELFDESTRUCTION )
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