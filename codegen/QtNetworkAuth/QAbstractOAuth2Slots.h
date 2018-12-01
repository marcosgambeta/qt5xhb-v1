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
%% $signal=|authorizationCallbackReceived( const QVariantMap & data )
$signal=5,10,0|clientIdentifierSharedKeyChanged( const QString & clientIdentifierSharedKey )
$signal=5,10,0|error( const QString & error, const QString & errorDescription, const QUrl & uri )
$signal=5,10,0|expirationAtChanged( const QDateTime & expiration )
$signal=5,10,0|responseTypeChanged( const QString & responseType )
$signal=5,10,0|scopeChanged( const QString & scope )
$signal=5,10,0|stateChanged( const QString & state )
$signal=5,10,0|userAgentChanged( const QString & userAgent )
$endSlotsClass
