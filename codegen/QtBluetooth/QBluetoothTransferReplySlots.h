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
$signal=5,2,0|finished( QBluetoothTransferReply * r )
$signal=5,2,0|transferProgress( qint64 bytesTransferred, qint64 bytesTotal )
$endSlotsClass
