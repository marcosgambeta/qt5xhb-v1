/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QQMLCONTEXT
REQUEST QQMLENGINE
REQUEST QQMLERROR
REQUEST QVARIANT
REQUEST QOBJECT
#endif

CLASS QQmlExpression INHERIT QObject

   DATA class_id INIT Class_Id_QQmlExpression
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD clearError
   METHOD columnNumber
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

PROCEDURE destroyObject () CLASS QQmlExpression
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlExpression>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlExpression>
#endif

/*
QQmlExpression()
*/
HB_FUNC_STATIC( QQMLEXPRESSION_NEW1 )
{
  QQmlExpression * o = new QQmlExpression (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlExpression *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QQmlExpression(QQmlContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_NEW2 )
{
  QQmlContext * par1 = (QQmlContext *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
  QString par3 = QLatin1String( hb_parc(3) );
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qt5xhb_itemGetPtr(4);
  QQmlExpression * o = new QQmlExpression ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlExpression *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QQmlExpression(const QQmlScriptString & script, QQmlContext * ctxt = 0, QObject * scope = 0, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_NEW3 )
{
  QQmlScriptString * par1 = (QQmlScriptString *) _qt5xhb_itemGetPtr(1);
  QQmlContext * par2 = ISNIL(2)? 0 : (QQmlContext *) _qt5xhb_itemGetPtr(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qt5xhb_itemGetPtr(3);
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qt5xhb_itemGetPtr(4);
  QQmlExpression * o = new QQmlExpression ( *par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlExpression *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QQmlExpression()
//[2]QQmlExpression(QQmlContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0)
//[3]QQmlExpression(const QQmlScriptString & script, QQmlContext * ctxt = 0, QObject * scope = 0, QObject * parent = 0)

HB_FUNC_STATIC( QQMLEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLEXPRESSION_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISQQMLCONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QQMLEXPRESSION_NEW2 );
  }
  else if( ISBETWEEN(1,4) && ISQQMLSCRIPTSTRING(1) && (ISQQMLCONTEXT(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QQMLEXPRESSION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLEXPRESSION_DELETE )
{
  QQmlExpression * obj = (QQmlExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clearError()
*/
HB_FUNC_STATIC( QQMLEXPRESSION_CLEARERROR )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearError (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int columnNumber() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_COLUMNNUMBER )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnNumber (  ) );
  }
}


/*
QQmlContext * context() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_CONTEXT )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * ptr = obj->context (  );
    _qt5xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
}


/*
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_ENGINE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlEngine * ptr = obj->engine (  );
    _qt5xhb_createReturnClass ( ptr, "QQMLENGINE" );
  }
}


/*
QQmlError error() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_ERROR )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlError * ptr = new QQmlError( obj->error (  ) );
    _qt5xhb_createReturnClass ( ptr, "QQMLERROR" );
  }
}


/*
QVariant evaluate(bool * valueIsUndefined = 0)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_EVALUATE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    QVariant * ptr = new QVariant( obj->evaluate ( &par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    hb_storl( par1, 1 );
  }
}


/*
QString expression() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_EXPRESSION )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->expression (  ).toLatin1().data() );
  }
}


/*
bool hasError() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_HASERROR )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasError (  ) );
  }
}


/*
int lineNumber() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_LINENUMBER )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineNumber (  ) );
  }
}


/*
bool notifyOnValueChanged() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_NOTIFYONVALUECHANGED )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->notifyOnValueChanged (  ) );
  }
}


/*
QObject * scopeObject() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SCOPEOBJECT )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->scopeObject (  );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
void setExpression(const QString & expression)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SETEXPRESSION )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setExpression ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNotifyOnValueChanged(bool notifyOnChange)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SETNOTIFYONVALUECHANGED )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotifyOnValueChanged ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSourceLocation(const QString & url, int line, int column = 0)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SETSOURCELOCATION )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setSourceLocation ( par1, (int) hb_parni(2), (int) ISNIL(3)? 0 : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString sourceFile() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SOURCEFILE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->sourceFile (  ).toLatin1().data() );
  }
}




#pragma ENDDUMP
