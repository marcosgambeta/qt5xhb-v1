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

$prototype=explicit QModbusServer(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=nullptr

$prototype=QModbusServer(QModbusServerPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QModbusServer()
$deleteMethod=5,8,0

$prototype=int serverAddress() const
$method=5,8,0|int|serverAddress|

$prototype=void setServerAddress(int serverAddress)
$method=5,8,0|void|setServerAddress|int

$prototype=virtual bool setMap(const QModbusDataUnitMap &map)
%% TODO: $virtualMethod=5,8,0|bool|setMap|const QModbusDataUnitMap &

$prototype=virtual bool processesBroadcast() const
$virtualMethod=5,8,0|bool|processesBroadcast|

$prototype=virtual QVariant value(int option) const
$virtualMethod=5,8,0|QVariant|value|int

$prototype=virtual bool setValue(int option, const QVariant &value)
$virtualMethod=5,8,0|bool|setValue|int,const QVariant &

$prototype=bool data(QModbusDataUnit *newData) const
%% TODO: $method=5,8,0|bool|data|QModbusDataUnit *

$prototype=bool setData(const QModbusDataUnit &unit)
%% TODO: $method=5,8,0|bool|setData|const QModbusDataUnit &

$prototype=bool setData(QModbusDataUnit::RegisterType table, quint16 address, quint16 data)
$method=5,8,0|bool|setData|QModbusDataUnit::RegisterType,quint16,quint16

$prototype=bool data(QModbusDataUnit::RegisterType table, quint16 address, quint16 *data) const
%% TODO: $method=5,8,0|bool|data|QModbusDataUnit::RegisterType,quint16,quint16 *

$prototype=virtual bool writeData(const QModbusDataUnit &unit) [protected]

$prototype=virtual bool readData(QModbusDataUnit *newData) const [protected]

$prototype=virtual QModbusResponse processRequest(const QModbusPdu &request) [protected]

$prototype=virtual QModbusResponse processPrivateRequest(const QModbusPdu &request) [protected]

$beginSignals
$signal=5,8,0|dataWritten(QModbusDataUnit::RegisterType,int,int)
$endSignals

#pragma ENDDUMP
