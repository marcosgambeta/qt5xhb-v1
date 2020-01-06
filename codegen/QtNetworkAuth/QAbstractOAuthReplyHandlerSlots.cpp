%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth

$header

$includes=5,10,0

$beginSlotsClass
$slot=5,10,0|callbackDataReceived( const QByteArray & data )
%% $slot=|callbackReceived( const QVariantMap & values )
$slot=5,10,0|replyDataReceived( const QByteArray & data )
%% $slot=|tokensReceived( const QVariantMap & tokens )
$endSlotsClass
