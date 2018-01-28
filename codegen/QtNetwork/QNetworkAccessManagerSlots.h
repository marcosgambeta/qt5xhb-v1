%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator );
$signal=|void finished( QNetworkReply * reply );
$signal=|void networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible );
$signal=|void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator );
$endSlotsClass
