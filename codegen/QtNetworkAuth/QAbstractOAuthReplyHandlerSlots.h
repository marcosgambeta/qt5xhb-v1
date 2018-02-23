%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void callbackDataReceived( const QByteArray & data )
%% $signal=|void callbackReceived( const QVariantMap & values )
$signal=|void replyDataReceived( const QByteArray & data )
%% $signal=|void tokensReceived( const QVariantMap & tokens )
$endSlotsClass
