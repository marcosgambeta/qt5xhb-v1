%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
%% $signal=|authorizationCallbackReceived( const QVariantMap & data )
$signal=|clientIdentifierSharedKeyChanged( const QString & clientIdentifierSharedKey )
$signal=|error( const QString & error, const QString & errorDescription, const QUrl & uri )
$signal=|expirationAtChanged( const QDateTime & expiration )
$signal=|responseTypeChanged( const QString & responseType )
$signal=|scopeChanged( const QString & scope )
$signal=|stateChanged( const QString & state )
$signal=|userAgentChanged( const QString & userAgent )
$endSlotsClass
