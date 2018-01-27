%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=5,2,0|finished( QBluetoothTransferReply * r )
$slot=5,2,0|transferProgress( qint64 bytesTransferred, qint64 bytesTotal )

$signalMethod=5,2,0|finished(QBluetoothTransferReply*)
$signalMethod=5,2,0|transferProgress(qint64,qint64)

$endSlotsClass
