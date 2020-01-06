%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

$includes=5,2,0

$beginSlotsClass
$slot=5,2,0|serviceDiscovered( const QBluetoothServiceInfo & info )
$slot=5,2,0|finished()
$slot=5,2,0|canceled()
$slot=5,2,0|error( QBluetoothServiceDiscoveryAgent::Error error )
$endSlotsClass
