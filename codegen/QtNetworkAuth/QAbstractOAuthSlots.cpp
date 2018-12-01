%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth

$header

$includes=5,10,0

$beginSlotsClass
$slot=5,10,0|authorizationUrlChanged( const QUrl & url )
$slot=5,10,0|authorizeWithBrowser( const QUrl & url )
$slot=5,10,0|clientIdentifierChanged( const QString & clientIdentifier )
$slot=5,10,0|contentTypeChanged( QAbstractOAuth::ContentType contentType )
%% $slot=|extraTokensChanged( const QVariantMap & tokens )
$slot=5,10,0|finished( QNetworkReply * reply )
$slot=5,10,0|granted()
$slot=5,10,0|replyDataReceived( const QByteArray & data )
%% $slot=|requestFailed( const QAbstractOAuth::Error error )
$slot=5,10,0|statusChanged( QAbstractOAuth::Status status )
$slot=5,10,0|tokenChanged( const QString & token )
$endSlotsClass
