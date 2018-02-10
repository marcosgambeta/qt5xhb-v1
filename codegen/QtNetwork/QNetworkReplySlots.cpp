%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
$slot=|error( QNetworkReply::NetworkError code )
$slot=|finished()
$slot=|metaDataChanged()
$slot=|uploadProgress( qint64 bytesSent, qint64 bytesTotal )
%% #ifndef QT_NO_SSL
$slot=|encrypted();
$slot=|sslErrors( const QList<QSslError> & errors )
$slot=|preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator * authenticator )
%% #endif
$slot=|redirected( const QUrl & url )
$slot=|redirectAllowed()
$endSlotsClass

$signalMethod=|downloadProgress(qint64,qint64)
$signalMethod=|error(QNetworkReply::NetworkError)
$signalMethod=|finished()
$signalMethod=|metaDataChanged()
$signalMethod=|uploadProgress(qint64,qint64)
%% #ifndef QT_NO_SSL
$signalMethod=|encrypted()
$signalMethod=|sslErrors(QList<QSslError>)
$signalMethod=|preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)
%% #endif
$signalMethod=|redirected(QUrl)
$signalMethod=|redirectAllowed()
