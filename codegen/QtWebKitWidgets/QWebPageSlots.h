%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void applicationCacheQuotaExceeded( QWebSecurityOrigin * origin, quint64 defaultOriginQuota, quint64 totalSpaceNeeded )
$signal=|void contentsChanged()
$signal=|void databaseQuotaExceeded( QWebFrame * frame, QString databaseName )
$signal=|void downloadRequested( const QNetworkRequest & request )
$signal=|void featurePermissionRequestCanceled( QWebFrame * frame, QWebPage::Feature feature )
$signal=|void featurePermissionRequested( QWebFrame * frame, QWebPage::Feature feature )
$signal=|void frameCreated( QWebFrame * frame )
$signal=|void geometryChangeRequested( const QRect & geom )
$signal=|void linkClicked( const QUrl & url )
$signal=|void linkHovered( const QString & link, const QString & title, const QString & textContent )
$signal=|void loadFinished( bool ok )
$signal=|void loadProgress( int progress )
$signal=|void loadStarted()
$signal=|void menuBarVisibilityChangeRequested( bool visible )
$signal=|void microFocusChanged()
$signal=|void printRequested( QWebFrame * frame )
$signal=|void repaintRequested( const QRect & dirtyRect )
$signal=|void restoreFrameStateRequested( QWebFrame * frame )
$signal=|void saveFrameStateRequested( QWebFrame * frame, QWebHistoryItem * item )
$signal=|void scrollRequested( int dx, int dy, const QRect & rectToScroll )
$signal=|void selectionChanged()
$signal=|void statusBarMessage( const QString & text )
$signal=|void statusBarVisibilityChangeRequested( bool visible )
$signal=|void toolBarVisibilityChangeRequested( bool visible )
$signal=|void unsupportedContent( QNetworkReply * reply )
$signal=|void viewportChangeRequested()
$signal=|void windowCloseRequested()
$endSlotsClass
