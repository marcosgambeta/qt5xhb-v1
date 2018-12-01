%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$signal=|encrypted()
$signal=|encryptedBytesWritten( qint64 written )
$signal=|modeChanged( QSslSocket::SslMode mode )
$signal=|peerVerifyError( const QSslError & error )
$signal=5,5,0|preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator *authenticator )
$signal=|sslErrors( const QList<QSslError> & errors )
$endSlotsClass
