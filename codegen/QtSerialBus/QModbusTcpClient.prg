%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QModbusClient

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QModbusTcpClient(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QModbusTcpClient(QModbusTcpClientPrivate &dd, QObject *parent = nullptr) (protected)

$prototype=~QModbusTcpClient()
$deleteMethod

$prototype=bool open() override (protected)

$prototype=void close() override (protected)

#pragma ENDDUMP
