%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

$beginSlotsClass
  void loadStarted();
  void loadProgress(int progress);
  void loadFinished(bool ok);
  void linkHovered(const QString &url);
  void selectionChanged();
  void geometryChangeRequested(const QRect& geom);
  void windowCloseRequested();
  void featurePermissionRequested(const QUrl &securityOrigin, QWebEnginePage::Feature feature);
  void featurePermissionRequestCanceled(const QUrl &securityOrigin, QWebEnginePage::Feature feature);
  void authenticationRequired(const QUrl &requestUrl, QAuthenticator *authenticator);
  void proxyAuthenticationRequired(const QUrl &requestUrl, QAuthenticator *authenticator, const QString &proxyHost);
  void titleChanged(const QString &title);
  void urlChanged(const QUrl &url);
  void iconUrlChanged(const QUrl &url);
$endSlotsClass
