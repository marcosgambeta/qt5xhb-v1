%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=5,2,0|deviceDiscovered( const QBluetoothDeviceInfo & info )
$slot=5,2,0|finished()
$slot=5,2,0|error( QBluetoothDeviceDiscoveryAgent::Error error )
$slot=5,2,0|canceled()
$endSlotsClass

$signalMethod=5,2,0|deviceDiscovered(QBluetoothDeviceInfo)
$signalMethod=5,2,0|finished()
$signalMethod=5,2,0|error(QBluetoothDeviceDiscoveryAgent::Error)
$signalMethod=5,2,0|canceled()
