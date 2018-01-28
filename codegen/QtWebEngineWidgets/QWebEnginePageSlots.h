%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

$beginSlotsClass
$signal=5,4,0|void loadStarted();
$signal=5,4,0|void loadProgress( int progress );
$signal=5,4,0|void loadFinished( bool ok );
$signal=5,4,0|void linkHovered( const QString & url );
$signal=5,4,0|void selectionChanged();
$signal=5,4,0|void geometryChangeRequested( const QRect & geom );
$signal=5,4,0|void windowCloseRequested();
$signal=5,4,0|void featurePermissionRequested( const QUrl & securityOrigin, QWebEnginePage::Feature feature );
$signal=5,4,0|void featurePermissionRequestCanceled( const QUrl & securityOrigin, QWebEnginePage::Feature feature );
$signal=5,4,0|void authenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator );
$signal=5,4,0|void proxyAuthenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator, const QString & proxyHost );
$signal=5,4,0|void titleChanged( const QString & title );
$signal=5,4,0|void urlChanged( const QUrl & url );
$signal=5,4,0|void iconUrlChanged( const QUrl & url );
$endSlotsClass
