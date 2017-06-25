/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QWebPageSlots.h"


static SlotsQWebPage * s = NULL;

SlotsQWebPage::SlotsQWebPage(QObject *parent) : QObject(parent)
{
}

SlotsQWebPage::~SlotsQWebPage()
{
}

void SlotsQWebPage::contentsChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQWebPage::databaseQuotaExceeded ( QWebFrame * frame, QString databaseName )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "databaseQuotaExceeded(QWebFrame*,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QWebFrame *) frame );
    PHB_ITEM pdatabaseName = hb_itemPutC( NULL, (const char *) databaseName.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pframe, pdatabaseName );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pdatabaseName );
  }
}

void SlotsQWebPage::downloadRequested ( const QNetworkRequest & request )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "downloadRequested(QNetworkRequest)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prequest = hb_itemPutPtr( NULL, (QNetworkRequest *) &request );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prequest );
    hb_itemRelease( psender );
    hb_itemRelease( prequest );
  }
}

void SlotsQWebPage::frameCreated ( QWebFrame * frame )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "frameCreated(QWebFrame*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QWebFrame *) frame );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pframe );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void SlotsQWebPage::geometryChangeRequested ( const QRect & geom )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "geometryChangeRequested(QRect)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pgeom = hb_itemPutPtr( NULL, (QRect *) &geom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pgeom );
    hb_itemRelease( psender );
    hb_itemRelease( pgeom );
  }
}

void SlotsQWebPage::linkClicked ( const QUrl & url )
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

void SlotsQWebPage::linkHovered ( const QString & link, const QString & title, const QString & textContent )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkHovered(QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING(link) );
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );
    PHB_ITEM ptextContent = hb_itemPutC( NULL, QSTRINGTOSTRING(textContent) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, plink, ptitle, ptextContent );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
    hb_itemRelease( ptitle );
    hb_itemRelease( ptextContent );
  }
}

void SlotsQWebPage::loadFinished ( bool ok )
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

void SlotsQWebPage::loadProgress ( int progress )
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

void SlotsQWebPage::loadStarted ()
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

void SlotsQWebPage::menuBarVisibilityChangeRequested ( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "menuBarVisibilityChangeRequested(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void SlotsQWebPage::microFocusChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "microFocusChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQWebPage::printRequested ( QWebFrame * frame )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "printRequested(QWebFrame*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QWebFrame *) frame );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pframe );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void SlotsQWebPage::repaintRequested ( const QRect & dirtyRect )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "repaintRequested(QRect)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdirtyRect = hb_itemPutPtr( NULL, (QRect *) &dirtyRect );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdirtyRect );
    hb_itemRelease( psender );
    hb_itemRelease( pdirtyRect );
  }
}

void SlotsQWebPage::restoreFrameStateRequested ( QWebFrame * frame )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "restoreFrameStateRequested(QWebFrame*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QWebFrame *) frame );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pframe );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void SlotsQWebPage::saveFrameStateRequested ( QWebFrame * frame, QWebHistoryItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QWebFrame *) frame );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QWebHistoryItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pframe, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pitem );
  }
}

void SlotsQWebPage::scrollRequested ( int dx, int dy, const QRect & rectToScroll )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "scrollRequested(int,int,QRect)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdx = hb_itemPutNI( NULL, dx );
    PHB_ITEM pdy = hb_itemPutNI( NULL, dy );
    PHB_ITEM prectToScroll = hb_itemPutPtr( NULL, (QRect *) &rectToScroll );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pdx, pdy, prectToScroll );
    hb_itemRelease( psender );
    hb_itemRelease( pdx );
    hb_itemRelease( pdy );
    hb_itemRelease( prectToScroll );
  }
}

void SlotsQWebPage::selectionChanged ()
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

void SlotsQWebPage::statusBarMessage ( const QString & text )
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

void SlotsQWebPage::statusBarVisibilityChangeRequested ( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusBarVisibilityChangeRequested(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void SlotsQWebPage::toolBarVisibilityChangeRequested ( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "toolBarVisibilityChangeRequested(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void SlotsQWebPage::unsupportedContent ( QNetworkReply * reply )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "unsupportedContent(QNetworkReply*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QNetworkReply *) reply );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preply );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
}

void SlotsQWebPage::windowCloseRequested ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowCloseRequested()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QWEBPAGE_ONCONTENTSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsChanged()", "contentsChanged()" ) );
}

HB_FUNC( QWEBPAGE_ONDATABASEQUOTAEXCEEDED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "databaseQuotaExceeded(QWebFrame*,QString)", "databaseQuotaExceeded(QWebFrame*,QString)" ) );
}

HB_FUNC( QWEBPAGE_ONDOWNLOADREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "downloadRequested(QNetworkRequest)", "downloadRequested(QNetworkRequest)" ) );
}

HB_FUNC( QWEBPAGE_ONFRAMECREATED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "frameCreated(QWebFrame*)", "frameCreated(QWebFrame*)" ) );
}

HB_FUNC( QWEBPAGE_ONGEOMETRYCHANGEREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "geometryChangeRequested(QRect)", "geometryChangeRequested(QRect)" ) );
}

HB_FUNC( QWEBPAGE_ONLINKCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkClicked(QUrl)", "linkClicked(QUrl)" ) );
}

HB_FUNC( QWEBPAGE_ONLINKHOVERED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkHovered(QString,QString,QString)", "linkHovered(QString,QString,QString)" ) );
}

HB_FUNC( QWEBPAGE_ONLOADFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadFinished(bool)", "loadFinished(bool)" ) );
}

HB_FUNC( QWEBPAGE_ONLOADPROGRESS )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadProgress(int)", "loadProgress(int)" ) );
}

HB_FUNC( QWEBPAGE_ONLOADSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadStarted()", "loadStarted()" ) );
}

HB_FUNC( QWEBPAGE_OMMENUBARVISIBILITYCHANGEREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "menuBarVisibilityChangeRequested(bool)", "menuBarVisibilityChangeRequested(bool)" ) );
}

HB_FUNC( QWEBPAGE_OMMICROFOCUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "microFocusChanged()", "microFocusChanged()" ) );
}

HB_FUNC( QWEBPAGE_ONPRINTREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "printRequested(QWebFrame*)", "printRequested(QWebFrame*)" ) );
}

HB_FUNC( QWEBPAGE_ONREPAINTREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "repaintRequested(QRect)", "repaintRequested(QRect)" ) );
}

HB_FUNC( QWEBPAGE_ONRESTOREFRAMESTATEREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "restoreFrameStateRequested(QWebFrame*)", "restoreFrameStateRequested(QWebFrame*)" ) );
}

HB_FUNC( QWEBPAGE_ONSAVEFRAMESTATEREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)", "saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)" ) );
}

HB_FUNC( QWEBPAGE_ONSCROLLREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "scrollRequested(int,int,QRect)", "scrollRequested(int,int,QRect)" ) );
}

HB_FUNC( QWEBPAGE_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );
}

HB_FUNC( QWEBPAGE_ONSTATUSBARMESSAGE )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusBarMessage(QString)", "statusBarMessage(QString)" ) );
}

HB_FUNC( QWEBPAGE_ONSTATUSBARVISIBILITYCHANGEREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusBarVisibilityChangeRequested(bool)", "statusBarVisibilityChangeRequested(bool)" ) );
}

HB_FUNC( QWEBPAGE_ONTOOLBARVISIBILITYCHANGEREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "toolBarVisibilityChangeRequested(bool)", "toolBarVisibilityChangeRequested(bool)" ) );
}

HB_FUNC( QWEBPAGE_ONUNSUPPORTEDCONTENT )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "unsupportedContent(QNetworkReply*)", "unsupportedContent(QNetworkReply*)" ) );
}

HB_FUNC( QWEBPAGE_ONWINDOWCLOSEREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWebPage(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "windowCloseRequested()", "windowCloseRequested()" ) );
}
