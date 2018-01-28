%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void encrypted();
$signal=|void encryptedBytesWritten( qint64 written );
$signal=|void modeChanged( QSslSocket::SslMode mode );
$signal=|void peerVerifyError( const QSslError & error );
$signal=|void sslErrors( const QList<QSslError> & errors );
$endSlotsClass
