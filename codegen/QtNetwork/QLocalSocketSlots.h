%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$signal=|connected()
$signal=|disconnected()
$signal=|error( QLocalSocket::LocalSocketError socketError )
$signal=|stateChanged( QLocalSocket::LocalSocketState socketState )
$endSlotsClass
