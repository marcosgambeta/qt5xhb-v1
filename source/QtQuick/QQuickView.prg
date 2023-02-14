/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLCONTEXT
REQUEST QQMLENGINE
REQUEST QQUICKITEM
REQUEST QSIZE
REQUEST QURL
#endif

CLASS QQuickView INHERIT QQuickWindow

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

PROCEDURE destroyObject() CLASS QQuickView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQuick/QQuickView>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtQuick/QQuickView>
#endif

#include <QtCore/QList>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlContext>
#include <QtQuick/QQuickItem>

HB_FUNC_STATIC( QQUICKVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWINDOW(1)||HB_ISNIL(1)) )
  {
    /*
    QQuickView( QWindow * parent = 0 )
    */
    QQuickView * obj = new QQuickView( OPQWINDOW(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWINDOW(2) )
  {
    /*
    QQuickView( QQmlEngine * engine, QWindow * parent )
    */
    QQuickView * obj = new QQuickView( PQQMLENGINE(1), PQWINDOW(2) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWINDOW(2)||HB_ISNIL(2)) )
  {
    /*
    QQuickView( const QUrl & source, QWindow * parent = 0 )
    */
    QQuickView * obj = new QQuickView( *PQURL(1), OPQWINDOW(2,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QQUICKVIEW_DELETE )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ENGINE )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlEngine * ptr = obj->engine();
      Qt5xHb::createReturnQObjectClass(ptr, "QQMLENGINE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSize initialSize() const
*/
HB_FUNC_STATIC( QQUICKVIEW_INITIALSIZE )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->initialSize() );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QQuickView::ResizeMode resizeMode() const
*/
HB_FUNC_STATIC( QQUICKVIEW_RESIZEMODE )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->resizeMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QQmlContext * rootContext() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ROOTCONTEXT )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlContext * ptr = obj->rootContext();
      Qt5xHb::createReturnQObjectClass(ptr, "QQMLCONTEXT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QQuickItem * rootObject() const
*/
HB_FUNC_STATIC( QQUICKVIEW_ROOTOBJECT )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuickItem * ptr = obj->rootObject();
      Qt5xHb::createReturnQObjectClass(ptr, "QQUICKITEM");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setResizeMode( QQuickView::ResizeMode )
*/
HB_FUNC_STATIC( QQUICKVIEW_SETRESIZEMODE )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setResizeMode( (QQuickView::ResizeMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QUrl source() const
*/
HB_FUNC_STATIC( QQUICKVIEW_SOURCE )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->source() );
      Qt5xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QQuickView::Status status() const
*/
HB_FUNC_STATIC( QQUICKVIEW_STATUS )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->status() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSource( const QUrl & url )
*/
HB_FUNC_STATIC( QQUICKVIEW_SETSOURCE )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setSource( *PQURL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QQuickViewSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QQUICKVIEW_ONSTATUSCHANGED )
{
  QQuickViewSlots_connect_signal("statusChanged(QQuickView::Status)", "statusChanged(QQuickView::Status)");
}

#pragma ENDDUMP
