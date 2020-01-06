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
$slot=|connected()
$slot=|disconnected()
$slot=|error( QAbstractSocket::SocketError socketError )
$slot=|hostFound()
%% #ifndef QT_NO_NETWORKPROXY
$slot=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
%% #endif
$slot=|stateChanged( QAbstractSocket::SocketState socketState )
$endSlotsClass
