%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|callbackDataReceived( const QByteArray & data )
%% $signal=|callbackReceived( const QVariantMap & values )
$signal=|replyDataReceived( const QByteArray & data )
%% $signal=|tokensReceived( const QVariantMap & tokens )
$endSlotsClass
