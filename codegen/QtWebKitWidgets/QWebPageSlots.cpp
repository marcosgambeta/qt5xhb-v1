%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQWebPage::applicationCacheQuotaExceeded(QWebSecurityOrigin* origin, quint64 defaultOriginQuota, quint64 totalSpaceNeeded)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "applicationCacheQuotaExceeded(QWebSecurityOrigin*,quint64,quint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM porigin = hb_itemPutPtr( NULL, (QWebSecurityOrigin *) origin );
    PHB_ITEM pdefaultOriginQuota = hb_itemPutNLL( NULL, defaultOriginQuota );
    PHB_ITEM ptotalSpaceNeeded = hb_itemPutNLL( NULL, totalSpaceNeeded );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, porigin, pdefaultOriginQuota, ptotalSpaceNeeded );
    hb_itemRelease( psender );
    hb_itemRelease( porigin );
    hb_itemRelease( pdefaultOriginQuota );
    hb_itemRelease( ptotalSpaceNeeded );
  }
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

void SlotsQWebPage::featurePermissionRequestCanceled(QWebFrame* frame, QWebPage::Feature feature)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "featurePermissionRequestCanceled(QWebFrame*,QWebPage::Feature)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QWebFrame *) frame );
    PHB_ITEM pfeature = hb_itemPutNI( NULL, (int) feature );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pframe, pfeature );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pfeature );
  }
}

void SlotsQWebPage::featurePermissionRequested(QWebFrame* frame, QWebPage::Feature feature)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "featurePermissionRequested(QWebFrame*,QWebPage::Feature)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QWebFrame *) frame );
    PHB_ITEM pfeature = hb_itemPutNI( NULL, (int) feature );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pframe, pfeature );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pfeature );
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

void SlotsQWebPage::viewportChangeRequested()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "viewportChangeRequested()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
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

$signalMethod=|applicationCacheQuotaExceeded(QWebSecurityOrigin*,quint64,quint64)
$signalMethod=|contentsChanged()
$signalMethod=|databaseQuotaExceeded(QWebFrame*,QString)
$signalMethod=|downloadRequested(QNetworkRequest)
$signalMethod=|featurePermissionRequestCanceled(QWebFrame*,QWebPage::Feature)
$signalMethod=|featurePermissionRequested(QWebFrame*,QWebPage::Feature)
$signalMethod=|frameCreated(QWebFrame*)
$signalMethod=|geometryChangeRequested(QRect)
$signalMethod=|linkClicked(QUrl)
$signalMethod=|linkHovered(QString,QString,QString)
$signalMethod=|loadFinished(bool)
$signalMethod=|loadProgress(int)
$signalMethod=|loadStarted()
$signalMethod=|menuBarVisibilityChangeRequested(bool)
$signalMethod=|microFocusChanged()
$signalMethod=|printRequested(QWebFrame*)
$signalMethod=|repaintRequested(QRect)
$signalMethod=|restoreFrameStateRequested(QWebFrame*)
$signalMethod=|saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)
$signalMethod=|scrollRequested(int,int,QRect)
$signalMethod=|selectionChanged()
$signalMethod=|statusBarMessage(QString)
$signalMethod=|statusBarVisibilityChangeRequested(bool)
$signalMethod=|toolBarVisibilityChangeRequested(bool)
$signalMethod=|unsupportedContent(QNetworkReply*)
$signalMethod=|viewportChangeRequested()
$signalMethod=|windowCloseRequested()

$endSlotsClass
