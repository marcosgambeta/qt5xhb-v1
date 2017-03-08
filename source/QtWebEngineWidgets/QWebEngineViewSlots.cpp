/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QWebEngineViewSlots.h"


static SlotsQWebEngineView * s = NULL;

SlotsQWebEngineView::SlotsQWebEngineView(QObject *parent) : QObject(parent)
{
}

SlotsQWebEngineView::~SlotsQWebEngineView()
{
}

void SlotsQWebEngineView::loadStarted()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebEngineView::loadProgress(int progress)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
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
#endif
}

void SlotsQWebEngineView::loadFinished(bool b)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadFinished(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pb = hb_itemPutL( NULL, b );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pb );
    hb_itemRelease( psender );
    hb_itemRelease( pb );
  }
#endif
}

void SlotsQWebEngineView::titleChanged(const QString& title)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
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
#endif
}

void SlotsQWebEngineView::selectionChanged()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebEngineView::urlChanged(const QUrl& url)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
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
#endif
}

void SlotsQWebEngineView::iconUrlChanged(const QUrl& url)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "iconUrlChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
#endif
}

HB_FUNC( QWEBENGINEVIEW_ONLOADSTARTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEngineView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadStarted()", "loadStarted()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEVIEW_ONLOADPROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEngineView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadProgress(int)", "loadProgress(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEVIEW_ONLOADFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEngineView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadFinished(bool)", "loadFinished(bool)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEVIEW_ONTITLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEngineView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "titleChanged(QString)", "titleChanged(QString)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEVIEW_ONSELECTIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEngineView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEVIEW_ONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEngineView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "urlChanged(QUrl)", "urlChanged(QUrl)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBENGINEVIEW_ONICONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebEngineView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "iconUrlChanged(QUrl)", "iconUrlChanged(QUrl)" ) );
#else
  hb_retl(false);
#endif
}
