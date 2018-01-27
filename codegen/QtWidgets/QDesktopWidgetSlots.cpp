%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|resized( int screen )
$slot=|screenCountChanged( int newCount )
$slot=|workAreaResized( int screen )
$endSlotsClass

$signalMethod=|resized(int)
$signalMethod=|screenCountChanged(int)
$signalMethod=|workAreaResized(int)
