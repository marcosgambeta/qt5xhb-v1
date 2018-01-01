/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QWebViewSlots.h"


static SlotsQWebView * s = NULL;

SlotsQWebView::SlotsQWebView(QObject *parent) : QObject(parent)
{
}

SlotsQWebView::~SlotsQWebView()
{
}

void SlotsQWebView::iconChanged ()
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

void SlotsQWebView::linkClicked ( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkClicked(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}

void SlotsQWebView::loadFinished ( bool ok )
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

void SlotsQWebView::loadProgress ( int progress )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadProgress(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogress = hb_itemPutNI( NULL, progress );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogress );
    hb_itemRelease( psender );
    hb_itemRelease( pprogress );
  }
}

void SlotsQWebView::loadStarted ()
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

void SlotsQWebView::selectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQWebView::statusBarMessage ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusBarMessage(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void SlotsQWebView::titleChanged ( const QString & title )
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

void SlotsQWebView::urlChanged ( const QUrl & url )
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

HB_FUNC( QWEBVIEW_ONICONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "iconChanged()", "iconChanged()" ) );
}

HB_FUNC( QWEBVIEW_ONLINKCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkClicked(QUrl)", "linkClicked(QUrl)" ) );
}

HB_FUNC( QWEBVIEW_ONLOADFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadFinished(bool)", "loadFinished(bool)" ) );
}

HB_FUNC( QWEBVIEW_ONLOADPROGRESS )
{
  if( s == NULL )
  {
    s = new SlotsQWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadProgress(int)", "loadProgress(int)" ) );
}

HB_FUNC( QWEBVIEW_ONLOADSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadStarted()", "loadStarted()" ) );
}

HB_FUNC( QWEBVIEW_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );
}

HB_FUNC( QWEBVIEW_ONSTATUSBARMESSAGE )
{
  if( s == NULL )
  {
    s = new SlotsQWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusBarMessage(QString)", "statusBarMessage(QString)" ) );
}

HB_FUNC( QWEBVIEW_ONTITLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "titleChanged(QString)", "titleChanged(QString)" ) );
}

HB_FUNC( QWEBVIEW_ONURLCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "urlChanged(QUrl)", "urlChanged(QUrl)" ) );
}
