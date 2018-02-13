%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void connected()
$signal=|void disconnected()
$signal=|void error( QAbstractSocket::SocketError socketError )
$signal=|void hostFound()
%% #ifndef QT_NO_NETWORKPROXY
$signal=|void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
%% #endif
$signal=|void stateChanged( QAbstractSocket::SocketState socketState )
$endSlotsClass
