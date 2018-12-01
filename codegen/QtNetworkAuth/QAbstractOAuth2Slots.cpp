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
%% $slot=|authorizationCallbackReceived( const QVariantMap & data )
$slot=5,10,0|clientIdentifierSharedKeyChanged( const QString & clientIdentifierSharedKey )
$slot=5,10,0|error( const QString & error, const QString & errorDescription, const QUrl & uri )
$slot=5,10,0|expirationAtChanged( const QDateTime & expiration )
$slot=5,10,0|responseTypeChanged( const QString & responseType )
$slot=5,10,0|scopeChanged( const QString & scope )
$slot=5,10,0|stateChanged( const QString & state )
$slot=5,10,0|userAgentChanged( const QString & userAgent )
$endSlotsClass
