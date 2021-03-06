/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QSIZE
REQUEST QURL
REQUEST QWEBENGINEHISTORY
REQUEST QWEBENGINEPAGE
#endif

CLASS QWebEngineView INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD page
   METHOD setPage
   METHOD load
   METHOD setHtml
   METHOD setContent
   METHOD history
   METHOD title
   METHOD url
   METHOD setUrl
   METHOD iconUrl
   METHOD hasSelection
   METHOD selectedText
   METHOD pageAction
   METHOD triggerPageAction
   METHOD zoomFactor
   METHOD setZoomFactor
   METHOD sizeHint
   METHOD stop
   METHOD back
   METHOD forward
   METHOD reload

   METHOD onLoadStarted
   METHOD onLoadProgress
   METHOD onLoadFinished
   METHOD onTitleChanged
   METHOD onSelectionChanged
   METHOD onUrlChanged
   METHOD onIconUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebEngineView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebEngineWidgets/QWebEngineView>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebEngineWidgets/QWebEngineView>
#endif
#endif

#include <QtWidgets/QAction>

/*
explicit QWebEngineView(QWidget* parent = 0)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||HB_ISNIL(1)) )
  {
    QWebEngineView * obj = new QWebEngineView( OPQWIDGET(1,0) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QWebEnginePage* page() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_PAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebEnginePage * ptr = obj->page();
      Qt5xHb::createReturnQObjectClass( ptr, "QWEBENGINEPAGE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPage(QWebEnginePage* page)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETPAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWEBENGINEPAGE(1) )
    {
#endif
      obj->setPage( PQWEBENGINEPAGE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void load(const QUrl& url)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_LOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->load( *PQURL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setHtml(const QString& html, const QUrl& baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETHTML )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISCHAR(1) && (ISQURL(2)||HB_ISNIL(2)) )
    {
#endif
      obj->setHtml( PQSTRING(1), HB_ISNIL(2)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setContent(const QByteArray& data, const QString& mimeType = QString(), const QUrl& baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETCONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && (ISCHAR(2)||HB_ISNIL(2)) && (ISQURL(3)||HB_ISNIL(3)) )
    {
#endif
      obj->setContent( *PQBYTEARRAY(1), OPQSTRING(2,QString()), HB_ISNIL(3)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QWebEngineHistory* history() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_HISTORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebEngineHistory * ptr = obj->history();
      Qt5xHb::createReturnClass( ptr, "QWEBENGINEHISTORY", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString title() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->title() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->url() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setUrl( *PQURL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QUrl iconUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_ICONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->iconUrl() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool hasSelection() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_HASSELECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasSelection() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString selectedText() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SELECTEDTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->selectedText() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QAction* pageAction(QWebEnginePage::WebAction action) const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_PAGEACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_ACTION
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QAction * ptr = obj->pageAction( (QWebEnginePage::WebAction) hb_parni(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
void triggerPageAction(QWebEnginePage::WebAction action, bool checked = false)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_TRIGGERPAGEACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (ISLOG(2)||HB_ISNIL(2)) )
    {
#endif
      obj->triggerPageAction( (QWebEnginePage::WebAction) hb_parni(1), OPBOOL(2,false) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal zoomFactor() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_ZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->zoomFactor() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setZoomFactor(qreal factor)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setZoomFactor( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void findText(const QString &subString, QWebEnginePage::FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
*/

/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SIZEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void stop()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void back()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_BACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->back();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void forward()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_FORWARD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->forward();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void reload()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_RELOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reload();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QWebEngineViewSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QWEBENGINEVIEW_ONLOADSTARTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "loadStarted()", "loadStarted()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONLOADPROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "loadProgress(int)", "loadProgress(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONLOADFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "loadFinished(bool)", "loadFinished(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONTITLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "titleChanged(QString)", "titleChanged(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONSELECTIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "selectionChanged()", "selectionChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "urlChanged(QUrl)", "urlChanged(QUrl)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEVIEW_ONICONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineViewSlots_connect_signal( "iconUrlChanged(QUrl)", "iconUrlChanged(QUrl)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
