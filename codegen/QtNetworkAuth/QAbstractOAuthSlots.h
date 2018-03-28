%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,10,0

$beginSlotsClass
$signal=5,10,0|clientIdentifierChanged( const QString & clientIdentifier )
$signal=5,10,0|tokenChanged( const QString & token )
$signal=5,10,0|statusChanged( QAbstractOAuth::Status status )
$signal=5,10,0|authorizationUrlChanged( const QUrl & url )
$signal=5,10,0|extraTokensChanged( const QVariantMap & tokens )
$signal=5,10,0|contentTypeChanged( QAbstractOAuth::ContentType contentType )
%% $signal=|requestFailed( const QAbstractOAuth::Error error )
$signal=5,10,0|authorizeWithBrowser( const QUrl & url )
$signal=5,10,0|granted()
$signal=5,10,0|finished( QNetworkReply * reply )
$signal=5,10,0|replyDataReceived( const QByteArray & data )
$endSlotsClass
