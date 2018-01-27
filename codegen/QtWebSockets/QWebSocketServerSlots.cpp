%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=5,3,0|acceptError( QAbstractSocket::SocketError socketError )
$slot=5,3,0|serverError( QWebSocketProtocol::CloseCode closeCode )
$slot=5,3,0|originAuthenticationRequired( QWebSocketCorsAuthenticator * pAuthenticator )
$slot=5,3,0|newConnection()
$slot=5,3,0|peerVerifyError( const QSslError & error )
$slot=5,3,0|sslErrors( const QList<QSslError> & errors )
$slot=5,3,0|closed()
$endSlotsClass

$signalMethod=5,3,0|acceptError(QAbstractSocket::SocketError)
$signalMethod=5,3,0|serverError(QWebSocketProtocol::CloseCode)
$signalMethod=5,3,0|originAuthenticationRequired(QWebSocketCorsAuthenticator*)
$signalMethod=5,3,0|newConnection()
$signalMethod=5,3,0|peerVerifyError(QSslError)
$signalMethod=5,3,0|sslErrors(QList<QSslError>)
$signalMethod=5,3,0|closed()
