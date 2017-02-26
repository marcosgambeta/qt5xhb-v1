/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QQMLENGINE
REQUEST QSIZE
REQUEST QQMLCONTEXT
REQUEST QQUICKITEM
REQUEST QURL
#endif

CLASS QQuickView INHERIT QQuickWindow

   DATA class_id INIT Class_Id_QQuickView
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD engine
   METHOD initialSize
   METHOD resizeMode
   METHOD rootContext
   METHOD rootObject
   METHOD setResizeMode
   METHOD source
   METHOD status
   METHOD setSource
   METHOD onStatusChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QQuickView>
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
#include <QQuickView>
#endif
#endif

#include <QList>

/*
QQuickView(QWindow * parent = 0)
*/
HB_FUNC_STATIC( QQUICKVIEW_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWindow * par1 = ISNIL(1)? 0 : (QWindow *) _qtxhb_itemGetPtr(1);
  QQuickView * o = new QQuickView ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQuickView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQuickView(QQmlEngine * engine, QWindow * parent)
*/
HB_FUNC_STATIC( QQUICKVIEW_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlEngine * par1 = (QQmlEngine *) _qtxhb_itemGetPtr(1);
  QWindow * par2 = (QWindow *) _qtxhb_itemGetPtr(2);
  QQuickView * o = new QQuickView ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQuickView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QQuickView(const QUrl & source, QWindow * parent = 0)
*/
HB_FUNC_STATIC( QQUICKVIEW_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
  QWindow * par2 = ISNIL(2)? 0 : (QWindow *) _qtxhb_itemGetPtr(2);
  QQuickView * o = new QQuickView ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQuickView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QQuickView(QWindow * parent = 0)
//[2]QQuickView(QQmlEngine * engine, QWindow * parent)
//[3]QQuickView(const QUrl & source, QWindow * parent = 0)

HB_FUNC_STATIC( QQUICKVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWINDOW(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QQUICKVIEW_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWINDOW(2) )
  {
    HB_FUNC_EXEC( QQUICKVIEW_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QQUICKVIEW_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQUICKVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQuickView * obj = (QQuickView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ENGINE )
{
  QQuickView * obj = (QQuickView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlEngine * ptr = obj->engine (  );
    _qt4xhb_createReturnClass ( ptr, "QQMLENGINE" );
  }
}



/*
QSize initialSize() const
*/
HB_FUNC_STATIC( QQUICKVIEW_INITIALSIZE )
{
  QQuickView * obj = (QQuickView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->initialSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
ResizeMode resizeMode() const
*/
HB_FUNC_STATIC( QQUICKVIEW_RESIZEMODE )
{
  QQuickView * obj = (QQuickView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->resizeMode (  ) );
  }
}


/*
QQmlContext * rootContext() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ROOTCONTEXT )
{
  QQuickView * obj = (QQuickView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * ptr = obj->rootContext (  );
    _qt4xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
}


/*
QQuickItem * rootObject() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ROOTOBJECT )
{
  QQuickView * obj = (QQuickView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * ptr = obj->rootObject (  );
    _qt4xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
}


/*
void setResizeMode(ResizeMode)
*/
HB_FUNC_STATIC( QQUICKVIEW_SETRESIZEMODE )
{
  QQuickView * obj = (QQuickView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setResizeMode (  (QQuickView::ResizeMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl source() const
*/
HB_FUNC_STATIC( QQUICKVIEW_SOURCE )
{
  QQuickView * obj = (QQuickView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QQUICKVIEW_STATUS )
{
  QQuickView * obj = (QQuickView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status (  ) );
  }
}


/*
void setSource(const QUrl & url)
*/
HB_FUNC_STATIC( QQUICKVIEW_SETSOURCE )
{
  QQuickView * obj = (QQuickView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    obj->setSource ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
