%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|applicationCacheQuotaExceeded( QWebSecurityOrigin * origin, quint64 defaultOriginQuota, quint64 totalSpaceNeeded )
$slot=|contentsChanged()
$slot=|databaseQuotaExceeded( QWebFrame * frame, QString databaseName )
$slot=|downloadRequested( const QNetworkRequest & request )
$slot=|featurePermissionRequestCanceled( QWebFrame * frame, QWebPage::Feature feature )
$slot=|featurePermissionRequested( QWebFrame * frame, QWebPage::Feature feature )
$slot=|frameCreated( QWebFrame * frame )
$slot=|geometryChangeRequested( const QRect & geom )
$slot=|linkClicked( const QUrl & url )
$slot=|linkHovered( const QString & link, const QString & title, const QString & textContent )
$slot=|loadFinished( bool ok )
$slot=|loadProgress( int progress )
$slot=|loadStarted()
$slot=|menuBarVisibilityChangeRequested( bool visible )
$slot=|microFocusChanged()
$slot=|printRequested( QWebFrame * frame )
$slot=|repaintRequested( const QRect & dirtyRect )
$slot=|restoreFrameStateRequested( QWebFrame * frame )
$slot=|saveFrameStateRequested( QWebFrame * frame, QWebHistoryItem * item )
$slot=|scrollRequested( int dx, int dy, const QRect & rectToScroll )
$slot=|selectionChanged()
$slot=|statusBarMessage( const QString & text )
$slot=|statusBarVisibilityChangeRequested( bool visible )
$slot=|toolBarVisibilityChangeRequested( bool visible )
$slot=|unsupportedContent( QNetworkReply * reply )
$slot=|viewportChangeRequested()
$slot=|windowCloseRequested()
$endSlotsClass
