/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLENGINE
REQUEST QSIZE
REQUEST QQMLCONTEXT
REQUEST QQUICKITEM
REQUEST QURL
#endif

CLASS QQuickView INHERIT QQuickWindow

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
#include <QQuickView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQuickView>
#endif

#include <QList>

/*
QQuickView(QWindow * parent = 0)
*/
HB_FUNC_STATIC( QQUICKVIEW_NEW1 )
{
  QWindow * par1 = ISNIL(1)? 0 : (QWindow *) _qt5xhb_itemGetPtr(1);
  QQuickView * o = new QQuickView ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQuickView(QQmlEngine * engine, QWindow * parent)
*/
HB_FUNC_STATIC( QQUICKVIEW_NEW2 )
{
  QQmlEngine * par1 = (QQmlEngine *) _qt5xhb_itemGetPtr(1);
  QWindow * par2 = (QWindow *) _qt5xhb_itemGetPtr(2);
  QQuickView * o = new QQuickView ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQuickView(const QUrl & source, QWindow * parent = 0)
*/
HB_FUNC_STATIC( QQUICKVIEW_NEW3 )
{
  QWindow * par2 = ISNIL(2)? 0 : (QWindow *) _qt5xhb_itemGetPtr(2);
  QQuickView * o = new QQuickView ( *PQURL(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
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
}

/*
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ENGINE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QQMLENGINE" );
  }
}



/*
QSize initialSize() const
*/
HB_FUNC_STATIC( QQUICKVIEW_INITIALSIZE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->initialSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
ResizeMode resizeMode() const
*/
HB_FUNC_STATIC( QQUICKVIEW_RESIZEMODE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->resizeMode () );
  }
}


/*
QQmlContext * rootContext() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ROOTCONTEXT )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * ptr = obj->rootContext ();
    _qt5xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
}


/*
QQuickItem * rootObject() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ROOTOBJECT )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * ptr = obj->rootObject ();
    _qt5xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
}


/*
void setResizeMode(ResizeMode)
*/
HB_FUNC_STATIC( QQUICKVIEW_SETRESIZEMODE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResizeMode ( (QQuickView::ResizeMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl source() const
*/
HB_FUNC_STATIC( QQUICKVIEW_SOURCE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QQUICKVIEW_STATUS )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}


/*
void setSource(const QUrl & url)
*/
HB_FUNC_STATIC( QQUICKVIEW_SETSOURCE )
{
  QQuickView * obj = (QQuickView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSource ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
