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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=explicit QModbusDevice(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=nullptr

$prototype=QModbusDevice(QModbusDevicePrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QModbusDevice()
$deleteMethod=5,8,0

$prototype=QVariant connectionParameter(int parameter) const
$method=5,8,0|QVariant|connectionParameter|int

$prototype=void setConnectionParameter(int parameter, const QVariant &value)
$method=5,8,0|void|setConnectionParameter|int,const QVariant &

$prototype=bool connectDevice()
$method=5,8,0|bool|connectDevice|

$prototype=void disconnectDevice()
$method=5,8,0|void|disconnectDevice|

$prototype=State state() const
$method=5,8,0|QModbusDevice::State|state|

$prototype=Error error() const
$method=5,8,0|QModbusDevice::Error|error|

$prototype=QString errorString() const
$method=5,8,0|QString|errorString|

$prototype=void setState(QModbusDevice::State newState) [protected]

$prototype=void setError(const QString &errorText, QModbusDevice::Error error) [protected]

$prototype=virtual bool open() = 0 [protected]

$prototype=virtual void close() = 0 [protected]

$beginSignals
$signal=5,8,0|errorOccurred(QModbusDevice::Error)
$signal=5,8,0|stateChanged(QModbusDevice::State)
$endSignals

#pragma ENDDUMP
