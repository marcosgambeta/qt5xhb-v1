/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QWebFrameSlots.h"


static SlotsQWebFrame * s = NULL;

SlotsQWebFrame::SlotsQWebFrame(QObject *parent) : QObject(parent)
{
}

SlotsQWebFrame::~SlotsQWebFrame()
{
}

void SlotsQWebFrame::contentsSizeChanged ( const QSize & size )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsSizeChanged(QSize)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psize = hb_itemPutPtr( NULL, (QSize *) &size );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

void SlotsQWebFrame::iconChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "iconChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQWebFrame::initialLayoutCompleted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "initialLayoutCompleted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQWebFrame::javaScriptWindowObjectCleared ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "javaScriptWindowObjectCleared()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQWebFrame::loadFinished ( bool ok )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadFinished(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pok = hb_itemPutL( NULL, ok );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pok );
    hb_itemRelease( psender );
    hb_itemRelease( pok );
  }
}

void SlotsQWebFrame::loadStarted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQWebFrame::pageChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pageChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQWebFrame::titleChanged ( const QString & title )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptitle );
    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}

void SlotsQWebFrame::urlChanged ( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "urlChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}

HB_FUNC( QWEBFRAME_ONCONTENTSSIZECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebFrame(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsSizeChanged(QSize)", "contentsSizeChanged(QSize)" ) );
}

HB_FUNC( QWEBFRAME_ONICONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebFrame(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "iconChanged()", "iconChanged()" ) );
}

HB_FUNC( QWEBFRAME_ONINITIALLAYOUTCOMPLETED )
{
  if( s == NULL )
  {
    s = new SlotsQWebFrame(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "initialLayoutCompleted()", "initialLayoutCompleted()" ) );
}

HB_FUNC( QWEBFRAME_ONJAVASCRIPTWINDOWOBJECTCLEARED )
{
  if( s == NULL )
  {
    s = new SlotsQWebFrame(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "javaScriptWindowObjectCleared()", "javaScriptWindowObjectCleared()" ) );
}

HB_FUNC( QWEBFRAME_ONLOADFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQWebFrame(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadFinished(bool)", "loadFinished(bool)" ) );
}

HB_FUNC( QWEBFRAME_ONLOADSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebFrame(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadStarted()", "loadStarted()" ) );
}

HB_FUNC( QWEBFRAME_ONPAGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebFrame(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "pageChanged()", "pageChanged()" ) );
}

HB_FUNC( QWEBFRAME_ONTITLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebFrame(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "titleChanged(QString)", "titleChanged(QString)" ) );
}

HB_FUNC( QWEBFRAME_ONURLCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebFrame(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "urlChanged(QUrl)", "urlChanged(QUrl)" ) );
}
