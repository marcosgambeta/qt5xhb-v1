/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QVARIANT
REQUEST QOBJECT

CLASS QDeclarativeExpression INHERIT QObject

   DATA class_id INIT Class_Id_QDeclarativeExpression
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD clearError
   METHOD context
   METHOD engine
   METHOD error
   METHOD evaluate
   METHOD expression
   METHOD hasError
   METHOD lineNumber
   METHOD notifyOnValueChanged
   METHOD scopeObject
   METHOD setExpression
   METHOD setNotifyOnValueChanged
   METHOD setSourceLocation
   METHOD sourceFile
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeExpression
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
#include <QDeclarativeExpression>
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
#include <QDeclarativeExpression>
#endif
#endif

/*
QDeclarativeExpression ()
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeExpression * o = new QDeclarativeExpression (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeExpression *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeContext * par1 = (QDeclarativeContext *) _qtxhb_itemGetPtr(1);
  QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
  QString par3 = QLatin1String( hb_parc(3) );
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qtxhb_itemGetPtr(4);
  QDeclarativeExpression * o = new QDeclarativeExpression ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeExpression *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDeclarativeExpression ()
//[2]QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVEEXPRESSION_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISQDECLARATIVECONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDECLARATIVEEXPRESSION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clearError ()
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_CLEARERROR )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearError (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDeclarativeContext * context () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_CONTEXT )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeContext * ptr = obj->context (  );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}


/*
QDeclarativeEngine * engine () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_ENGINE )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeEngine * ptr = obj->engine (  );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEENGINE" );
  }
}


/*
QDeclarativeError error () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_ERROR )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeError * ptr = new QDeclarativeError( obj->error (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEERROR" );
  }
}


/*
QVariant evaluate ( bool * valueIsUndefined = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_EVALUATE )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    QVariant * ptr = new QVariant( obj->evaluate ( &par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
    hb_storl( par1, 1 );
  }
}


/*
QString expression () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_EXPRESSION )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->expression (  ).toLatin1().data() );
  }
}


/*
bool hasError () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_HASERROR )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasError (  ) );
  }
}


/*
int lineNumber () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_LINENUMBER )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineNumber (  ) );
  }
}


/*
bool notifyOnValueChanged () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NOTIFYONVALUECHANGED )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->notifyOnValueChanged (  ) );
  }
}


/*
QObject * scopeObject () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SCOPEOBJECT )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->scopeObject (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
void setExpression ( const QString & expression )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SETEXPRESSION )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setExpression ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNotifyOnValueChanged ( bool notifyOnChange )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SETNOTIFYONVALUECHANGED )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotifyOnValueChanged ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSourceLocation ( const QString & url, int line )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SETSOURCELOCATION )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setSourceLocation ( par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString sourceFile () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SOURCEFILE )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->sourceFile (  ).toLatin1().data() );
  }
}




#pragma ENDDUMP
