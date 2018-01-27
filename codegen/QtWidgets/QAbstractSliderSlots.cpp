%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|actionTriggered( int action )
$slot=|rangeChanged( int min, int max )
$slot=|sliderMoved( int value )
$slot=|sliderPressed()
$slot=|sliderReleased()
$slot=|valueChanged( int value )
$endSlotsClass

$signalMethod=|actionTriggered(int)
$signalMethod=|rangeChanged(int,int)
$signalMethod=|sliderMoved(int)
$signalMethod=|sliderPressed()
$signalMethod=|sliderReleased()
$signalMethod=|valueChanged(int)
