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
$signal=|downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
$signal=|error( QNetworkReply::NetworkError code )
$signal=|finished()
$signal=|metaDataChanged()
$signal=|uploadProgress( qint64 bytesSent, qint64 bytesTotal )
%% #ifndef QT_NO_SSL
$signal=5,1,0|encrypted()
$signal=|sslErrors( const QList<QSslError> & errors )
$signal=5,5,0|preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator * authenticator )
%% #endif
$signal=5,6,0|redirected( const QUrl & url )
$signal=5,9,0|redirectAllowed()
$endSlotsClass
