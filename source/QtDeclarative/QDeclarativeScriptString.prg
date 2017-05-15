/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QOBJECT
#endif

CLASS QDeclarativeScriptString

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD context
   METHOD scopeObject
   METHOD script
   METHOD setContext
   METHOD setScopeObject
   METHOD setScript

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeScriptString
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeScriptString>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeScriptString>
#endif

/*
QDeclarativeScriptString ()
*/
void QDeclarativeScriptString_new1 ()
{
  QDeclarativeScriptString * o = new QDeclarativeScriptString ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDeclarativeScriptString ( const QDeclarativeScriptString & other )
*/
void QDeclarativeScriptString_new2 ()
{
  QDeclarativeScriptString * par1 = (QDeclarativeScriptString *) _qt5xhb_itemGetPtr(1);
  QDeclarativeScriptString * o = new QDeclarativeScriptString ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QDeclarativeScriptString ()
//[2]QDeclarativeScriptString ( const QDeclarativeScriptString & other )

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeScriptString_new1();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVESCRIPTSTRING(1) )
  {
    QDeclarativeScriptString_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDeclarativeContext * context () const
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_CONTEXT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDeclarativeContext * ptr = obj->context ();
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}

/*
QObject * scopeObject () const
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SCOPEOBJECT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->scopeObject ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QString script () const
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SCRIPT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->script ().toLatin1().data() );
  }
}

/*
void setContext ( QDeclarativeContext * context )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETCONTEXT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDECLARATIVECONTEXT(1) )
    {
      QDeclarativeContext * par1 = (QDeclarativeContext *) _qt5xhb_itemGetPtr(1);
      obj->setContext ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScopeObject ( QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETSCOPEOBJECT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
      obj->setScopeObject ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScript ( const QString & script )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETSCRIPT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setScript ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEWFROM )
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

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVESCRIPTSTRING_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVESCRIPTSTRING_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETSELFDESTRUCTION )
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
