%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

$includes

$beginSlotsClass
$signal=|currentLoopChanged( int currentLoop )
$signal=|directionChanged( QAbstractAnimation::Direction newDirection )
$signal=|finished()
$signal=|stateChanged( QAbstractAnimation::State newState, QAbstractAnimation::State oldState )
$endSlotsClass
