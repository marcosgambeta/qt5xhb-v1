%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|clientIdentifierChanged( const QString & clientIdentifier )
$signal=|tokenChanged( const QString & token )
$signal=|statusChanged( QAbstractOAuth::Status status )
$signal=|authorizationUrlChanged( const QUrl & url )
$signal=|extraTokensChanged( const QVariantMap & tokens )
$signal=|contentTypeChanged( QAbstractOAuth::ContentType contentType )
%% $signal=|requestFailed( const QAbstractOAuth::Error error )
$signal=|authorizeWithBrowser( const QUrl & url )
$signal=|granted()
$signal=|finished( QNetworkReply * reply )
$signal=|replyDataReceived( const QByteArray & data )
$endSlotsClass
