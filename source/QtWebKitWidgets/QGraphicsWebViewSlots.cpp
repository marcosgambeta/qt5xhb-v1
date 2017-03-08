/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QGraphicsWebViewSlots.h"


static SlotsQGraphicsWebView * s = NULL;

SlotsQGraphicsWebView::SlotsQGraphicsWebView(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsWebView::~SlotsQGraphicsWebView()
{
}

void SlotsQGraphicsWebView::iconChanged ()
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

void SlotsQGraphicsWebView::linkClicked ( const QUrl & url )
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

void SlotsQGraphicsWebView::loadFinished ( bool ok )
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

void SlotsQGraphicsWebView::loadProgress ( int progress )
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

void SlotsQGraphicsWebView::loadStarted ()
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

void SlotsQGraphicsWebView::statusBarMessage ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusBarMessage(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, (const char *) text.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void SlotsQGraphicsWebView::titleChanged ( const QString & title )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptitle = hb_itemPutC( NULL, (const char *) title.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptitle );
    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}

void SlotsQGraphicsWebView::urlChanged ( const QUrl & url )
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

HB_FUNC( QGRAPHICSWEBVIEW_ONICONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "iconChanged()", "iconChanged()" ) );
}

HB_FUNC( QGRAPHICSWEBVIEW_ONLINKCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkClicked(QUrl)", "linkClicked(QUrl)" ) );
}

HB_FUNC( QGRAPHICSWEBVIEW_ONLOADFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadFinished(bool)", "loadFinished(bool)" ) );
}

HB_FUNC( QGRAPHICSWEBVIEW_ONLOADPROGRESS )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadProgress(int)", "loadProgress(int)" ) );
}

HB_FUNC( QGRAPHICSWEBVIEW_ONLOADSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadStarted()", "loadStarted()" ) );
}

HB_FUNC( QGRAPHICSWEBVIEW_ONSTATUSBARMESSAGE )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusBarMessage(QString)", "statusBarMessage(QString)" ) );
}

HB_FUNC( QGRAPHICSWEBVIEW_ONTITLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "titleChanged(QString)", "titleChanged(QString)" ) );
}

HB_FUNC( QGRAPHICSWEBVIEW_ONURLCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsWebView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "urlChanged(QUrl)", "urlChanged(QUrl)" ) );
}
