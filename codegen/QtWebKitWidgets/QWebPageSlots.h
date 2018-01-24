%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void applicationCacheQuotaExceeded ( QWebSecurityOrigin * origin, quint64 defaultOriginQuota, quint64 totalSpaceNeeded );
  void contentsChanged ();
  void databaseQuotaExceeded ( QWebFrame * frame, QString databaseName );
  void downloadRequested ( const QNetworkRequest & request );
  void featurePermissionRequestCanceled ( QWebFrame * frame, QWebPage::Feature feature );
  void featurePermissionRequested ( QWebFrame * frame, QWebPage::Feature feature );
  void frameCreated ( QWebFrame * frame );
  void geometryChangeRequested ( const QRect & geom );
  void linkClicked ( const QUrl & url );
  void linkHovered ( const QString & link, const QString & title, const QString & textContent );
  void loadFinished ( bool ok );
  void loadProgress ( int progress );
  void loadStarted ();
  void menuBarVisibilityChangeRequested ( bool visible );
  void microFocusChanged ();
  void printRequested ( QWebFrame * frame );
  void repaintRequested ( const QRect & dirtyRect );
  void restoreFrameStateRequested ( QWebFrame * frame );
  void saveFrameStateRequested ( QWebFrame * frame, QWebHistoryItem * item );
  void scrollRequested ( int dx, int dy, const QRect & rectToScroll );
  void selectionChanged ();
  void statusBarMessage ( const QString & text );
  void statusBarVisibilityChangeRequested ( bool visible );
  void toolBarVisibilityChangeRequested ( bool visible );
  void unsupportedContent ( QNetworkReply * reply );
  void viewportChangeRequested ();
  void windowCloseRequested ();
$endSlotsClass
