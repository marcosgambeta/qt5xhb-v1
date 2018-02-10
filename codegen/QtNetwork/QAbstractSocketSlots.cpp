%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|connected()
$slot=|disconnected()
$slot=|error( QAbstractSocket::SocketError socketError )
$slot=|hostFound()
%% #ifndef QT_NO_NETWORKPROXY
$slot=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
%% #endif
$slot=|stateChanged( QAbstractSocket::SocketState socketState )
$endSlotsClass

$signalMethod=|connected()
$signalMethod=|disconnected()
$signalMethod=|error(QAbstractSocket::SocketError)
$signalMethod=|hostFound()
%% #ifndef QT_NO_NETWORKPROXY
$signalMethod=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
%% #endif
$signalMethod=|stateChanged(QAbstractSocket::SocketState)
