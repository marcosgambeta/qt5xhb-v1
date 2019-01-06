%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
%% #ifndef QT_NO_NETWORKPROXY
$slot=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
%% #endif
$slot=|authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator )
$slot=|finished( QNetworkReply * reply )
%% #ifndef QT_NO_SSL
$slot=5,1,0|encrypted( QNetworkReply * reply )
$slot=|sslErrors( QNetworkReply * reply, const QList<QSslError> & errors )
$slot=5,5,0|preSharedKeyAuthenticationRequired( QNetworkReply * reply, QSslPreSharedKeyAuthenticator * authenticator )
%% #endif
%% #ifndef QT_NO_BEARERMANAGEMENT
$slot=|networkSessionConnected()
$slot=|networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible )
%% #endif
$endSlotsClass
