%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
$signal=|void error( QNetworkReply::NetworkError code )
$signal=|void finished()
$signal=|void metaDataChanged()
$signal=|void uploadProgress( qint64 bytesSent, qint64 bytesTotal )
%% #ifndef QT_NO_SSL
$signal=5,1,0|void encrypted()
$signal=|void sslErrors( const QList<QSslError> & errors )
$signal=5,5,0|void preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator * authenticator )
%% #endif
$signal=5,6,0|void redirected( const QUrl & url )
$signal=5,9,0|void redirectAllowed()
$endSlotsClass
