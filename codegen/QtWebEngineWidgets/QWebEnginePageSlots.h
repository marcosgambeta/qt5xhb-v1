%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets

$header

$includes=5,4,0

$beginSlotsClass
$signal=5,4,0|loadStarted()
$signal=5,4,0|loadProgress( int progress )
$signal=5,4,0|loadFinished( bool ok )
$signal=5,4,0|linkHovered( const QString & url )
$signal=5,4,0|selectionChanged()
$signal=5,4,0|geometryChangeRequested( const QRect & geom )
$signal=5,4,0|windowCloseRequested()
$signal=5,4,0|featurePermissionRequested( const QUrl & securityOrigin, QWebEnginePage::Feature feature )
$signal=5,4,0|featurePermissionRequestCanceled( const QUrl & securityOrigin, QWebEnginePage::Feature feature )
$signal=5,4,0|authenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator )
$signal=5,4,0|proxyAuthenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator, const QString & proxyHost )
$signal=5,4,0|titleChanged( const QString & title )
$signal=5,4,0|urlChanged( const QUrl & url )
$signal=5,4,0|iconUrlChanged( const QUrl & url )
$endSlotsClass
