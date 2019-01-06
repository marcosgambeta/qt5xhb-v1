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
$slot=|downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
$slot=|error( QNetworkReply::NetworkError code )
$slot=|finished()
$slot=|metaDataChanged()
$slot=|uploadProgress( qint64 bytesSent, qint64 bytesTotal )
%% #ifndef QT_NO_SSL
$slot=5,1,0|encrypted()
$slot=|sslErrors( const QList<QSslError> & errors )
$slot=5,5,0|preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator * authenticator )
%% #endif
$slot=5,6,0|redirected( const QUrl & url )
$slot=5,9,0|redirectAllowed()
$endSlotsClass
