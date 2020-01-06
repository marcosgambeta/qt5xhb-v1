%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

$header

$includes

$beginSlotsClass
$slot=|traceIdChanged( int traceId )
$slot=|channelsChanged()
$slot=|lengthChanged( int length )
$slot=|finalChanged( bool isFinal )
$slot=|canceledChanged( bool isCanceled )
$slot=|opacityChanged( qreal opacity )
$endSlotsClass
