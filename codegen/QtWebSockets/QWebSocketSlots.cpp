%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebSockets

$header

$includes=5,3,0

$beginSlotsClass
$slot=5,3,0|aboutToClose()
$slot=5,3,0|connected()
$slot=5,3,0|disconnected()
$slot=5,3,0|stateChanged( QAbstractSocket::SocketState state )
$slot=5,3,0|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * pAuthenticator )
$slot=5,3,0|readChannelFinished()
$slot=5,3,0|textFrameReceived( const QString & frame, bool isLastFrame )
$slot=5,3,0|binaryFrameReceived( const QByteArray & frame, bool isLastFrame )
$slot=5,3,0|textMessageReceived( const QString & message )
$slot=5,3,0|binaryMessageReceived( const QByteArray & message )
$slot=5,3,0|error( QAbstractSocket::SocketError error )
$slot=5,3,0|pong( quint64 elapsedTime, const QByteArray & payload )
$slot=5,3,0|bytesWritten( qint64 bytes )
$slot=5,3,0|sslErrors( const QList<QSslError> & errors )
$endSlotsClass
