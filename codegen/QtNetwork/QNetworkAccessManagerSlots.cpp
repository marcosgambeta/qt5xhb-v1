%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator )
$slot=|finished( QNetworkReply * reply )
$slot=|networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible )
$slot=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )

$signalMethod=|authenticationRequired(QNetworkReply,QAuthenticator*)
$signalMethod=|finished(QNetworkReply*)
$signalMethod=|networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)
$signalMethod=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)

$endSlotsClass
