%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

$header

$includes

$beginSlotsClass
$signal=|applicationCacheQuotaExceeded( QWebSecurityOrigin * origin, quint64 defaultOriginQuota, quint64 totalSpaceNeeded )
$signal=|contentsChanged()
$signal=|databaseQuotaExceeded( QWebFrame * frame, QString databaseName )
$signal=|downloadRequested( const QNetworkRequest & request )
$signal=|featurePermissionRequestCanceled( QWebFrame * frame, QWebPage::Feature feature )
$signal=|featurePermissionRequested( QWebFrame * frame, QWebPage::Feature feature )
$signal=|frameCreated( QWebFrame * frame )
$signal=|geometryChangeRequested( const QRect & geom )
$signal=|linkClicked( const QUrl & url )
$signal=|linkHovered( const QString & link, const QString & title, const QString & textContent )
$signal=|loadFinished( bool ok )
$signal=|loadProgress( int progress )
$signal=|loadStarted()
$signal=|menuBarVisibilityChangeRequested( bool visible )
$signal=|microFocusChanged()
$signal=|printRequested( QWebFrame * frame )
$signal=|repaintRequested( const QRect & dirtyRect )
$signal=|restoreFrameStateRequested( QWebFrame * frame )
$signal=|saveFrameStateRequested( QWebFrame * frame, QWebHistoryItem * item )
$signal=|scrollRequested( int dx, int dy, const QRect & rectToScroll )
$signal=|selectionChanged()
$signal=|statusBarMessage( const QString & text )
$signal=|statusBarVisibilityChangeRequested( bool visible )
$signal=|toolBarVisibilityChangeRequested( bool visible )
$signal=|unsupportedContent( QNetworkReply * reply )
$signal=|viewportChangeRequested()
$signal=|windowCloseRequested()
$endSlotsClass
