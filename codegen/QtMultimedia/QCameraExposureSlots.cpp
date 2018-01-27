%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|apertureChanged( qreal value )
$slot=|apertureRangeChanged()
$slot=|exposureCompensationChanged( qreal value )
$slot=|flashReady( bool ready )
$slot=|isoSensitivityChanged( int value )
$slot=|shutterSpeedChanged( qreal speed )
$slot=|shutterSpeedRangeChanged()

$signalMethod=|apertureChanged(qreal)
$signalMethod=|apertureRangeChanged()
$signalMethod=|exposureCompensationChanged(qreal)
$signalMethod=|flashReady(bool)
$signalMethod=|isoSensitivityChanged(int)
$signalMethod=|shutterSpeedChanged(qreal)
$signalMethod=|shutterSpeedRangeChanged()

$endSlotsClass
