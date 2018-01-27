%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

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

$signalMethod=5,3,0|aboutToClose()
$signalMethod=5,3,0|connected()
$signalMethod=5,3,0|disconnected()
$signalMethod=5,3,0|stateChanged(QAbstractSocket::SocketState)
$signalMethod=5,3,0|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
$signalMethod=5,3,0|readChannelFinished()
$signalMethod=5,3,0|textFrameReceived(QString,bool)
$signalMethod=5,3,0|binaryFrameReceived(QByteArray,bool)
$signalMethod=5,3,0|textMessageReceived(QString)
$signalMethod=5,3,0|binaryMessageReceived(QByteArray)
$signalMethod=5,3,0|error(QAbstractSocket::SocketError)
$signalMethod=5,3,0|pong(quint64,QByteArray)
$signalMethod=5,3,0|bytesWritten(qint64)
$signalMethod=5,3,0|sslErrors(QList<QSslError>)
