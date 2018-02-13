%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,3,0

$beginSlotsClass
$signal=5,3,0|void acceptError( QAbstractSocket::SocketError socketError )
$signal=5,3,0|void serverError( QWebSocketProtocol::CloseCode closeCode )
$signal=5,3,0|void originAuthenticationRequired( QWebSocketCorsAuthenticator * pAuthenticator )
$signal=5,3,0|void newConnection()
$signal=5,3,0|void peerVerifyError( const QSslError & error )
$signal=5,3,0|void sslErrors( const QList<QSslError> & errors )
$signal=5,3,0|void closed()
$endSlotsClass
