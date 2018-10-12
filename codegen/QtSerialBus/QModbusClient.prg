%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QModbusDevice

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes5,8,0

$prototype=explicit QModbusClient(QObject *parent = nullptr)
$prototype=QModbusClient(QModbusClientPrivate &dd, QObject *parent = nullptr) (protected)

$prototype=~QModbusClient()
$deleteMethod=5,8,0

%%
%% Q_PROPERTY(int timeout READ timeout WRITE setTimeout NOTIFY timeoutChanged)
%%

$prototype=int timeout() const
$prototype=void setTimeout(int newTimeout)

%%
%%
%%

$prototype=QModbusReply *sendReadRequest(const QModbusDataUnit &read, int serverAddress)
$prototype=QModbusReply *sendWriteRequest(const QModbusDataUnit &write, int serverAddress)
$prototype=QModbusReply *sendReadWriteRequest(const QModbusDataUnit &read, const QModbusDataUnit &write, int serverAddress)
$prototype=QModbusReply *sendRawRequest(const QModbusRequest &request, int serverAddress)
$prototype=int numberOfRetries() const
$prototype=void setNumberOfRetries(int number)
$prototype=virtual bool processResponse(const QModbusResponse &response, QModbusDataUnit *data) (protected)
$prototype=virtual bool processPrivateResponse(const QModbusResponse &response, QModbusDataUnit *data) (protected)

$beginSignals
$signal=5,8,0|timeoutChanged(int)
$endSignals

#pragma ENDDUMP
