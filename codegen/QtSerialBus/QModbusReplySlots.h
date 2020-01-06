%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

$includes=5,8,0

$beginSlotsClass
$signal=5,8,0|finished()
$signal=5,8,0|errorOccurred( QModbusDevice::Error error )
$endSlotsClass
