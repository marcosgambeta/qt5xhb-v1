%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|aboutToClose()
$slot=|bytesWritten( qint64 bytes )
$slot=|readChannelFinished()
$slot=|readyRead()

$signalMethod=|aboutToClose()
$signalMethod=|bytesWritten(qint64)
$signalMethod=|readChannelFinished()
$signalMethod=|readyRead()

$endSlotsClass
