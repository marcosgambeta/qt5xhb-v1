%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QModbusDevice

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=explicit QModbusClient(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=nullptr

$prototype=QModbusClient(QModbusClientPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QModbusClient()
$deleteMethod=5,8,0

%%
%% Q_PROPERTY(int timeout READ timeout WRITE setTimeout NOTIFY timeoutChanged)
%%

$prototype=int timeout() const
$method=5,8,0|int|timeout|

$prototype=void setTimeout(int newTimeout)
$method=5,8,0|void|setTimeout|int

%%
%%
%%

$prototype=QModbusReply *sendReadRequest(const QModbusDataUnit &read, int serverAddress)
%% TODO: $method=5,8,0|QModbusReply *|sendReadRequest|const QModbusDataUnit &,int

$prototype=QModbusReply *sendWriteRequest(const QModbusDataUnit &write, int serverAddress)
%% TODO: $method=5,8,0|QModbusReply *|sendWriteRequest|const QModbusDataUnit &,int

$prototype=QModbusReply *sendReadWriteRequest(const QModbusDataUnit &read, const QModbusDataUnit &write, int serverAddress)
%% TODO: $method=5,8,0|QModbusReply *|sendReadWriteRequest|const QModbusDataUnit &,const QModbusDataUnit &,int

$prototype=QModbusReply *sendRawRequest(const QModbusRequest &request, int serverAddress)
%% TODO: $method=5,8,0|QModbusReply *|sendRawRequest|const QModbusRequest &,int

$prototype=int numberOfRetries() const
$method=5,8,0|int|numberOfRetries|

$prototype=void setNumberOfRetries(int number)
$method=5,8,0|void|setNumberOfRetries|int

$prototype=virtual bool processResponse(const QModbusResponse &response, QModbusDataUnit *data) [protected]

$prototype=virtual bool processPrivateResponse(const QModbusResponse &response, QModbusDataUnit *data) [protected]

$beginSignals
$signal=5,8,0|timeoutChanged(int)
$endSignals

#pragma ENDDUMP
