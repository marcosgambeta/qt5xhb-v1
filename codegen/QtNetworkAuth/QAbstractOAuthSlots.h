%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void clientIdentifierChanged( const QString & clientIdentifier )
$signal=|void tokenChanged( const QString & token )
$signal=|void statusChanged( QAbstractOAuth::Status status )
$signal=|void authorizationUrlChanged( const QUrl & url )
$signal=|void extraTokensChanged( const QVariantMap & tokens )
$signal=|void contentTypeChanged( QAbstractOAuth::ContentType contentType )
$signal=|void requestFailed( const QAbstractOAuth::Error error )
$signal=|void authorizeWithBrowser( const QUrl & url )
$signal=|void granted()
$signal=|void finished( QNetworkReply * reply )
$signal=|void replyDataReceived( const QByteArray & data )
$endSlotsClass
