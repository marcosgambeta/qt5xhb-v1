%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
%% $signal=|void authorizationCallbackReceived( const QVariantMap & data )
$signal=|void clientIdentifierSharedKeyChanged( const QString & clientIdentifierSharedKey )
$signal=|void error( const QString & error, const QString & errorDescription, const QUrl & uri )
$signal=|void expirationAtChanged( const QDateTime & expiration )
$signal=|void responseTypeChanged( const QString & responseType )
$signal=|void scopeChanged( const QString & scope )
$signal=|void stateChanged( const QString & state )
$signal=|void userAgentChanged( const QString & userAgent )
$endSlotsClass
