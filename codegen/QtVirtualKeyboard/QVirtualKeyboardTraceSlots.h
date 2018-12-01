%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

$header

$includes

$beginSlotsClass
$signal=|traceIdChanged( int traceId )
$signal=|channelsChanged()
$signal=|lengthChanged( int length )
$signal=|finalChanged( bool isFinal )
$signal=|canceledChanged( bool isCanceled )
$signal=|opacityChanged( qreal opacity )
$endSlotsClass
