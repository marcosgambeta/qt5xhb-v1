%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|callbackDataReceived( const QByteArray & data )
%% $slot=|callbackReceived( const QVariantMap & values )
$slot=|replyDataReceived( const QByteArray & data )
%% $slot=|tokensReceived( const QVariantMap & tokens )
$endSlotsClass

$signalMethod=|callbackDataReceived(QByteArray)
%% $signalMethod=|callbackReceived(QVariantMap)
$signalMethod=|replyDataReceived(QByteArray)
%% $signalMethod=|tokensReceived(QVariantMap)