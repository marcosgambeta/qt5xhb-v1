%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|buttonClicked( QAbstractButton * button )
$slot=|buttonClicked( int id )
$slot=|buttonPressed( QAbstractButton * button )
$slot=|buttonPressed( int id )
$slot=|buttonReleased( QAbstractButton * button )
$slot=|buttonReleased( int id )
$endSlotsClass

$beginGroup
$signalMethod=|buttonClicked(QAbstractButton*)
$signalMethod=|buttonClicked(int)
$endGroup
$beginGroup
$signalMethod=|buttonPressed(QAbstractButton*)
$signalMethod=|buttonPressed(int)
$endGroup
$beginGroup
$signalMethod=|buttonReleased(QAbstractButton*)
$signalMethod=|buttonReleased(int)
$endGroup
