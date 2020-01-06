%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
%% #ifndef QT_NO_NETWORKPROXY
$signal=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
%% #endif
$signal=|authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator )
$signal=|finished( QNetworkReply * reply )
%% #ifndef QT_NO_SSL
$signal=5,1,0|encrypted( QNetworkReply * reply )
$signal=|sslErrors( QNetworkReply * reply, const QList<QSslError> & errors )
$signal=5,5,0|preSharedKeyAuthenticationRequired( QNetworkReply * reply, QSslPreSharedKeyAuthenticator * authenticator )
%% #endif
%% #ifndef QT_NO_BEARERMANAGEMENT
$signal=|networkSessionConnected()
$signal=|networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible )
%% #endif
$endSlotsClass
