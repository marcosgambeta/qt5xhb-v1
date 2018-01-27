%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|finished()
$slot=|frameChanged( int frame )
$slot=|stateChanged( QTimeLine::State newState )
$slot=|valueChanged( qreal value )
$endSlotsClass

$signalMethod=|finished()
$signalMethod=|frameChanged(int)
$signalMethod=|stateChanged(QTimeLine::State)
$signalMethod=|valueChanged(qreal)
