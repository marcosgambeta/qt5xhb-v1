%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|authorizationUrlChanged( const QUrl & url )
$slot=|authorizeWithBrowser( const QUrl & url )
$slot=|clientIdentifierChanged( const QString & clientIdentifier )
$slot=|contentTypeChanged( QAbstractOAuth::ContentType contentType )
%% $slot=|extraTokensChanged( const QVariantMap & tokens )
$slot=|finished( QNetworkReply * reply )
$slot=|granted()
$slot=|replyDataReceived( const QByteArray & data )
$slot=|requestFailed( const QAbstractOAuth::Error error )
$slot=|statusChanged( QAbstractOAuth::Status status )
$slot=|tokenChanged( const QString & token )
$endSlotsClass

$signalMethod=|authorizationUrlChanged(QUrl)
$signalMethod=|authorizeWithBrowser(QUrl)
$signalMethod=|clientIdentifierChanged(QString)
$signalMethod=|contentTypeChanged(QAbstractOAuth::ContentType)
%% $signalMethod=|extraTokensChanged(QVariantMap)
$signalMethod=|finished(QNetworkReply*)
$signalMethod=|granted()
$signalMethod=|replyDataReceived(QByteArray)
$signalMethod=|requestFailed(QAbstractOAuth::Error)
$signalMethod=|statusChanged(QAbstractOAuth::Status)
$signalMethod=|tokenChanged(QString)
