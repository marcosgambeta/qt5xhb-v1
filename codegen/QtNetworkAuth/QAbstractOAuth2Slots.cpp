%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
%% $slot=|authorizationCallbackReceived( const QVariantMap & data )
$slot=|clientIdentifierSharedKeyChanged( const QString & clientIdentifierSharedKey )
$slot=|error( const QString & error, const QString & errorDescription, const QUrl & uri )
$slot=|expirationAtChanged( const QDateTime & expiration )
$slot=|responseTypeChanged( const QString & responseType )
$slot=|scopeChanged( const QString & scope )
$slot=|stateChanged( const QString & state )
$slot=|userAgentChanged( const QString & userAgent )
$endSlotsClass
