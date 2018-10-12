%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|errorOccurred( QCanBusDevice::CanBusError )
$signal=|framesReceived()
$signal=|framesWritten( qint64 framesCount )
$signal=|stateChanged( QCanBusDevice::CanBusDeviceState state )
$endSlotsClass
