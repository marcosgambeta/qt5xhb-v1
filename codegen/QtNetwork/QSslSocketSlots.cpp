%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|encrypted()
$slot=|encryptedBytesWritten( qint64 written )
$slot=|modeChanged( QSslSocket::SslMode mode )
$slot=|peerVerifyError( const QSslError & error )
$slot=5,5,0|preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator * authenticator )
$slot=|sslErrors( const QList<QSslError> & errors )
$endSlotsClass

$signalMethod=|encrypted()
$signalMethod=|encryptedBytesWritten(qint64)
$signalMethod=|modeChanged(QSslSocket::SslMode)
$signalMethod=|peerVerifyError(QSslError)
$signalMethod=5,5,0|preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)
$signalMethod=|sslErrors(QList<QSslError>)
