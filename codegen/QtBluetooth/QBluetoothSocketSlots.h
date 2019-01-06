%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|connected()
$signal=5,2,0|disconnected()
$signal=5,2,0|error( QBluetoothSocket::SocketError error )
$signal=5,2,0|stateChanged( QBluetoothSocket::SocketState state )
$endSlotsClass
