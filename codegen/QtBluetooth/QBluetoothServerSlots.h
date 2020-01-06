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
$signal=5,2,0|newConnection()
$signal=5,2,0|error( QBluetoothServer::Error error )
$endSlotsClass
