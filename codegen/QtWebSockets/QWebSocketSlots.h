%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,3,0

$beginSlotsClass
$signal=5,3,0|void aboutToClose()
$signal=5,3,0|void connected()
$signal=5,3,0|void disconnected()
$signal=5,3,0|void stateChanged( QAbstractSocket::SocketState state )
$signal=5,3,0|void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * pAuthenticator )
$signal=5,3,0|void readChannelFinished()
$signal=5,3,0|void textFrameReceived( const QString & frame, bool isLastFrame )
$signal=5,3,0|void binaryFrameReceived( const QByteArray & frame, bool isLastFrame )
$signal=5,3,0|void textMessageReceived( const QString & message )
$signal=5,3,0|void binaryMessageReceived( const QByteArray & message )
$signal=5,3,0|void error( QAbstractSocket::SocketError error )
$signal=5,3,0|void pong( quint64 elapsedTime, const QByteArray & payload )
$signal=5,3,0|void bytesWritten( qint64 bytes )
$signal=5,3,0|void sslErrors( const QList<QSslError> & errors )
$endSlotsClass
