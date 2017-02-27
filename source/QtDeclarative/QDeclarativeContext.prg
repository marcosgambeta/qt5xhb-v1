/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QURL
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QDECLARATIVEENGINE
#endif

CLASS QDeclarativeContext INHERIT QObject

   DATA class_id INIT Class_Id_QDeclarativeContext
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD baseUrl
   METHOD contextObject
   METHOD contextProperty
   METHOD engine
   METHOD isValid
   METHOD parentContext
   METHOD resolvedUrl
   METHOD setBaseUrl
   METHOD setContextObject
   METHOD setContextProperty1
   METHOD setContextProperty2
   METHOD setContextProperty
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDeclarativeContext>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDeclarativeContext>
#endif
#endif

/*
QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeEngine * par1 = (QDeclarativeEngine *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QDeclarativeContext * o = new QDeclarativeContext ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeContext *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeContext * par1 = (QDeclarativeContext *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QDeclarativeContext * o = new QDeclarativeContext ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeContext *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = 0 )
//[2]QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVECONTEXT_NEW )
{
  if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECONTEXT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQDECLARATIVECONTEXT(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDECLARATIVECONTEXT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVECONTEXT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDeclarativeContext * obj = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QUrl baseUrl () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_BASEURL )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->baseUrl (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QObject * contextObject () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_CONTEXTOBJECT )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->contextObject (  );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QVariant contextProperty ( const QString & name ) const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_CONTEXTPROPERTY )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->contextProperty ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QDeclarativeEngine * engine () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_ENGINE )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeEngine * ptr = obj->engine (  );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVEENGINE" );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_ISVALID )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QDeclarativeContext * parentContext () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_PARENTCONTEXT )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeContext * ptr = obj->parentContext (  );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}


/*
QUrl resolvedUrl ( const QUrl & src )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_RESOLVEDURL )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->resolvedUrl ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void setBaseUrl ( const QUrl & baseUrl )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETBASEURL )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setBaseUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContextObject ( QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETCONTEXTOBJECT )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    obj->setContextObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContextProperty ( const QString & name, QObject * value )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY1 )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
    obj->setContextProperty ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContextProperty ( const QString & name, const QVariant & value )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY2 )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setContextProperty ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setContextProperty ( const QString & name, QObject * value )
//[2]void setContextProperty ( const QString & name, const QVariant & value )

HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
