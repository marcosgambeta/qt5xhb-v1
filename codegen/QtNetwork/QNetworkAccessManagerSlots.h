%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
%% #ifndef QT_NO_NETWORKPROXY
$signal=|void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator );
%% #endif
$signal=|void authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator );
$signal=|void finished( QNetworkReply * reply );
%% #ifndef QT_NO_SSL
$signal=5,1,0|void encrypted( QNetworkReply * reply );
$signal=|void sslErrors( QNetworkReply * reply, const QList<QSslError> & errors );
$signal=5,5,0|void preSharedKeyAuthenticationRequired( QNetworkReply * reply, QSslPreSharedKeyAuthenticator * authenticator );
%% #endif
%% #ifndef QT_NO_BEARERMANAGEMENT
$signal=|void networkSessionConnected();
$signal=|void networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible );
%% #endif
$endSlotsClass
