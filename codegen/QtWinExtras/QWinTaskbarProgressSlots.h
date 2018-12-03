%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|valueChanged( int value )
$signal=5,2,0|minimumChanged( int minimum )
$signal=5,2,0|maximumChanged( int maximum )
$signal=5,2,0|visibilityChanged( bool visible )
$signal=5,2,0|pausedChanged( bool paused )
$signal=5,2,0|stoppedChanged( bool stopped )
$endSlotsClass
