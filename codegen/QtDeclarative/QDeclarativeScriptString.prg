$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QOBJECT
#endif

CLASS QDeclarativeScriptString

   DATA pointer
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

$destructor

#pragma BEGINDUMP

$includes

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
  QDeclarativeScriptString * o = new QDeclarativeScriptString ( *PQDECLARATIVESCRIPTSTRING(1) );
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
    RQSTRING( obj->script () );
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
      obj->setScopeObject ( PQOBJECT(1) );
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

$extraMethods

#pragma ENDDUMP
