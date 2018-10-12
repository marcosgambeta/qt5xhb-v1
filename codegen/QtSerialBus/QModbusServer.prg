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

$includes

$prototype=explicit QModbusServer(QObject *parent = nullptr)
$prototype=QModbusServer(QModbusServerPrivate &dd, QObject *parent = nullptr) (protected)

$prototype=~QModbusServer()
$deleteMethod

$prototype=int serverAddress() const

$prototype=void setServerAddress(int serverAddress)

$prototype=virtual bool setMap(const QModbusDataUnitMap &map)

$prototype=virtual bool processesBroadcast() const

$prototype=virtual QVariant value(int option) const

$prototype=virtual bool setValue(int option, const QVariant &value)

$prototype=bool data(QModbusDataUnit *newData) const

$prototype=bool setData(const QModbusDataUnit &unit)

$prototype=bool setData(QModbusDataUnit::RegisterType table, quint16 address, quint16 data)

$prototype=bool data(QModbusDataUnit::RegisterType table, quint16 address, quint16 *data) const

$prototype=virtual bool writeData(const QModbusDataUnit &unit) (protected)

$prototype=virtual bool readData(QModbusDataUnit *newData) const (protected)

$prototype=virtual QModbusResponse processRequest(const QModbusPdu &request) (protected)

$prototype=virtual QModbusResponse processPrivateRequest(const QModbusPdu &request) (protected)

$beginSignals
$signal=|dataWritten(QModbusDataUnit::RegisterType,int,int)
$endSignals

#pragma ENDDUMP
