%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

$includes=5,2,0

$beginSlotsClass
$slot=5,2,0|deviceDiscovered( const QBluetoothDeviceInfo & info )
$slot=5,2,0|finished()
$slot=5,2,0|error( QBluetoothDeviceDiscoveryAgent::Error error )
$slot=5,2,0|canceled()
$endSlotsClass
