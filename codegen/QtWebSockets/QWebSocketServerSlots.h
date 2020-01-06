%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebSockets

$header

$includes=5,3,0

$beginSlotsClass
$signal=5,3,0|acceptError( QAbstractSocket::SocketError socketError )
$signal=5,3,0|serverError( QWebSocketProtocol::CloseCode closeCode )
$signal=5,3,0|originAuthenticationRequired( QWebSocketCorsAuthenticator * pAuthenticator )
$signal=5,3,0|newConnection()
$signal=5,3,0|peerVerifyError( const QSslError & error )
$signal=5,3,0|sslErrors( const QList<QSslError> & errors )
$signal=5,3,0|closed()
$endSlotsClass
