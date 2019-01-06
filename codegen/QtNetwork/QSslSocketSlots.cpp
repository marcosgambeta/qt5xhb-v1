%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

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
