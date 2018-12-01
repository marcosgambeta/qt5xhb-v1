%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QModbusClient

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=explicit QModbusRtuSerialMaster(QObject *parent = nullptr)
$prototype=QModbusRtuSerialMaster(QModbusRtuSerialMasterPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QModbusRtuSerialMaster()
$deleteMethod=5,8,0

$prototype=int interFrameDelay() const

$prototype=void setInterFrameDelay(int microseconds)

$prototype=void close() override [protected]

$prototype=bool open() override [protected]

#pragma ENDDUMP
