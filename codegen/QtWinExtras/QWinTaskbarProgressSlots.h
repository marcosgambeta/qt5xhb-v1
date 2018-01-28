%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|void valueChanged( int value );
$signal=5,2,0|void minimumChanged( int minimum );
$signal=5,2,0|void maximumChanged( int maximum );
$signal=5,2,0|void visibilityChanged( bool visible );
$signal=5,2,0|void pausedChanged( bool paused );
$signal=5,2,0|void stoppedChanged( bool stopped );
$endSlotsClass
