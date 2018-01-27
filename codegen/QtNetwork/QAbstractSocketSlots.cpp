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
$slot=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
$slot=|stateChanged( QAbstractSocket::SocketState socketState )
$endSlotsClass

$signalMethod=|connected()
$signalMethod=|disconnected()
$signalMethod=|error(QAbstractSocket::SocketError)
$signalMethod=|hostFound()
$signalMethod=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
$signalMethod=|stateChanged(QAbstractSocket::SocketState)
