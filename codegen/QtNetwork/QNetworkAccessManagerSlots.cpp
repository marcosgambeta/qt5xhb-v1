%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
%% #ifndef QT_NO_NETWORKPROXY
$slot=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
%% #endif
$slot=|authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator )
$slot=|finished( QNetworkReply * reply )
%% #ifndef QT_NO_SSL
$slot=|encrypted( QNetworkReply * reply )
$slot=|sslErrors( QNetworkReply * reply, const QList<QSslError> & errors )
$slot=|preSharedKeyAuthenticationRequired( QNetworkReply * reply, QSslPreSharedKeyAuthenticator * authenticator )
%% #endif
%% #ifndef QT_NO_BEARERMANAGEMENT
$slot=|networkSessionConnected()
$slot=|networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible )
%% #endif
$endSlotsClass

%% #ifndef QT_NO_NETWORKPROXY
$signalMethod=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
%% #endif
$signalMethod=|authenticationRequired(QNetworkReply*,QAuthenticator*)
$signalMethod=|finished(QNetworkReply*)
%% #ifndef QT_NO_SSL
$signalMethod=|encrypted(QNetworkReply*)
$signalMethod=|sslErrors(QNetworkReply*,QList<QSslError>)
$signalMethod=|preSharedKeyAuthenticationRequired(QNetworkReply*,QSslPreSharedKeyAuthenticator*)
%% #endif
%% #ifndef QT_NO_BEARERMANAGEMENT
$signalMethod=|networkSessionConnected()
$signalMethod=|networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)
%% #endif
