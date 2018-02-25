%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,3,0

$beginSlotsClass
$signal=5,3,0|aboutToClose()
$signal=5,3,0|connected()
$signal=5,3,0|disconnected()
$signal=5,3,0|stateChanged( QAbstractSocket::SocketState state )
$signal=5,3,0|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * pAuthenticator )
$signal=5,3,0|readChannelFinished()
$signal=5,3,0|textFrameReceived( const QString & frame, bool isLastFrame )
$signal=5,3,0|binaryFrameReceived( const QByteArray & frame, bool isLastFrame )
$signal=5,3,0|textMessageReceived( const QString & message )
$signal=5,3,0|binaryMessageReceived( const QByteArray & message )
$signal=5,3,0|error( QAbstractSocket::SocketError error )
$signal=5,3,0|pong( quint64 elapsedTime, const QByteArray & payload )
$signal=5,3,0|bytesWritten( qint64 bytes )
$signal=5,3,0|sslErrors( const QList<QSslError> & errors )
$endSlotsClass
