%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|connected()
$signal=|disconnected()
$signal=|error( QAbstractSocket::SocketError socketError )
$signal=|hostFound()
%% #ifndef QT_NO_NETWORKPROXY
$signal=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
%% #endif
$signal=|stateChanged( QAbstractSocket::SocketState socketState )
$endSlotsClass
