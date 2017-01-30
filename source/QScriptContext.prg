/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSCRIPTVALUE
REQUEST QSCRIPTENGINE

CLASS QScriptContext

   DATA pointer
   DATA class_id INIT Class_Id_QScriptContext
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScriptContext>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScriptContext>
#endif
#endif

#include <QStringList>

HB_FUNC_STATIC( QSCRIPTCONTEXT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QScriptValue activationObject() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ACTIVATIONOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->activationObject (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue argument(int index) const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ARGUMENT )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->argument ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
int argumentCount() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ARGUMENTCOUNT )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->argumentCount (  ) );
  }
}


/*
QScriptValue argumentsObject() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ARGUMENTSOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->argumentsObject (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QStringList backtrace() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_BACKTRACE )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->backtrace (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QScriptValue callee() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_CALLEE )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->callee (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptEngine * engine() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ENGINE )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * ptr = obj->engine (  );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
bool isCalledAsConstructor() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ISCALLEDASCONSTRUCTOR )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCalledAsConstructor (  ) );
  }
}


/*
QScriptContext * parentContext() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_PARENTCONTEXT )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptContext * ptr = obj->parentContext (  );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT" );
  }
}


/*
void setActivationObject(const QScriptValue & activation)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_SETACTIVATIONOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    obj->setActivationObject ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setThisObject(const QScriptValue & thisObject)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_SETTHISOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    obj->setThisObject ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ExecutionState state() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_STATE )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
QScriptValue thisObject() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_THISOBJECT )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->thisObject (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue throwError(Error error, const QString & text)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWERROR1 )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QScriptValue * ptr = new QScriptValue( obj->throwError (  (QScriptContext::Error) par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

/*
QScriptValue throwError(const QString & text)
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWERROR2 )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QScriptValue * ptr = new QScriptValue( obj->throwError ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
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
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    QScriptValue * ptr = new QScriptValue( obj->throwValue ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QString toString() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_TOSTRING )
{
  QScriptContext * obj = (QScriptContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
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
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QSCRIPTCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCONTEXT_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
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