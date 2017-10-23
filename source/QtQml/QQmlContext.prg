/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QQMLENGINE
#endif

CLASS QQmlContext INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD baseUrl
   METHOD contextObject
   METHOD contextProperty
   METHOD engine
   METHOD isValid
   METHOD nameForObject
   METHOD parentContext
   METHOD resolvedUrl
   METHOD setBaseUrl
   METHOD setContextObject
   METHOD setContextProperty1
   METHOD setContextProperty2
   METHOD setContextProperty

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlContext>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlContext>
#endif

/*
QQmlContext(QQmlEngine * engine, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCONTEXT_NEW1 )
{
  QQmlEngine * par1 = (QQmlEngine *) _qt5xhb_itemGetPtr(1);
  QQmlContext * o = new QQmlContext ( par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlContext(QQmlContext * parentContext, QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLCONTEXT_NEW2 )
{
  QQmlContext * par1 = (QQmlContext *) _qt5xhb_itemGetPtr(1);
  QQmlContext * o = new QQmlContext ( par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QQmlContext(QQmlEngine * engine, QObject * parent = 0)
//[2]QQmlContext(QQmlContext * parentContext, QObject * parent = 0)

HB_FUNC_STATIC( QQMLCONTEXT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QQMLCONTEXT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQQMLCONTEXT(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QQMLCONTEXT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLCONTEXT_DELETE )
{
  QQmlContext * obj = (QQmlContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QUrl baseUrl() const
*/
HB_FUNC_STATIC( QQMLCONTEXT_BASEURL )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->baseUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QObject * contextObject() const
*/
HB_FUNC_STATIC( QQMLCONTEXT_CONTEXTOBJECT )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->contextObject ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QVariant contextProperty(const QString & name) const
*/
HB_FUNC_STATIC( QQMLCONTEXT_CONTEXTPROPERTY )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->contextProperty ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQMLCONTEXT_ENGINE )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QQMLENGINE" );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QQMLCONTEXT_ISVALID )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QString nameForObject(QObject * object) const
*/
HB_FUNC_STATIC( QQMLCONTEXT_NAMEFOROBJECT )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->nameForObject ( PQOBJECT(1) ) );
  }
}


/*
QQmlContext * parentContext() const
*/
HB_FUNC_STATIC( QQMLCONTEXT_PARENTCONTEXT )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * ptr = obj->parentContext ();
    _qt5xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
}


/*
QUrl resolvedUrl(const QUrl & src)
*/
HB_FUNC_STATIC( QQMLCONTEXT_RESOLVEDURL )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->resolvedUrl ( *PQURL(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void setBaseUrl(const QUrl & baseUrl)
*/
HB_FUNC_STATIC( QQMLCONTEXT_SETBASEURL )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBaseUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContextObject(QObject * object)
*/
HB_FUNC_STATIC( QQMLCONTEXT_SETCONTEXTOBJECT )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContextObject ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContextProperty(const QString & name, QObject * value)
*/
HB_FUNC_STATIC( QQMLCONTEXT_SETCONTEXTPROPERTY1 )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContextProperty ( PQSTRING(1), PQOBJECT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContextProperty(const QString & name, const QVariant & value)
*/
HB_FUNC_STATIC( QQMLCONTEXT_SETCONTEXTPROPERTY2 )
{
  QQmlContext * obj = (QQmlContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContextProperty ( PQSTRING(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setContextProperty(const QString & name, QObject * value)
//[2]void setContextProperty(const QString & name, const QVariant & value)

HB_FUNC_STATIC( QQMLCONTEXT_SETCONTEXTPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QQMLCONTEXT_SETCONTEXTPROPERTY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QQMLCONTEXT_SETCONTEXTPROPERTY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
