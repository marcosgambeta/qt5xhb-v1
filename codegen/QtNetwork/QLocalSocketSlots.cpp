%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|connected()

$slot=|disconnected()
$slot=|error( QLocalSocket::LocalSocketError socketError )
$slot=|stateChanged( QLocalSocket::LocalSocketState socketState )

$signalMethod=|connected()
$signalMethod=|disconnected()
$signalMethod=|error(QLocalSocket::LocalSocketError)
$signalMethod=|stateChanged(QLocalSocket::LocalSocketState)

$endSlotsClass
