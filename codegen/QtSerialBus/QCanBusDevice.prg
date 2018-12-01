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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=explicit QCanBusDevice(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=nullptr

%% $deleteMethod

$prototype=virtual void setConfigurationParameter(int key, const QVariant &value)
$virtualMethod=5,8,0|void|setConfigurationParameter|int,const QVariant &

$prototype=QVariant configurationParameter(int key) const
$method=5,8,0|QVariant|configurationParameter|int

$prototype=QVector<int> configurationKeys() const
$method=5,8,0|QVector<int>|configurationKeys|

$prototype=virtual bool writeFrame(const QCanBusFrame &frame) = 0
$virtualMethod=5,8,0|bool|writeFrame|const QCanBusFrame &

$prototype=QCanBusFrame readFrame()
$method=5,8,0|QCanBusFrame|readFrame|

$prototype=qint64 framesAvailable() const
$method=5,8,0|qint64|framesAvailable|

$prototype=qint64 framesToWrite() const
$method=5,8,0|qint64|framesToWrite|

$prototype=virtual bool waitForFramesWritten(int msecs)
$virtualMethod=5,8,0|bool|waitForFramesWritten|int

$prototype=virtual bool waitForFramesReceived(int msecs)
$virtualMethod=5,8,0|bool|waitForFramesReceived|int

$prototype=bool connectDevice()
$method=5,8,0|bool|connectDevice|

$prototype=void disconnectDevice()
$method=5,8,0|void|disconnectDevice|

$prototype=CanBusDeviceState state() const
$method=5,8,0|QCanBusDevice::CanBusDeviceState|state|

$prototype=CanBusError error() const
$method=5,8,0|QCanBusDevice::CanBusError|error|

$prototype=QString errorString() const
$method=5,8,0|QString|errorString|

$prototype=virtual QString interpretErrorFrame(const QCanBusFrame &errorFrame) = 0
$virtualMethod=5,8,0|QString|interpretErrorFrame|const QCanBusFrame &

$prototype=void QCanBusDevice::clear(QCanBusDevice::Directions direction)
$method=5,12,0|void|clear|QCanBusDevice::Directions

$prototype=QVector<QCanBusFrame> QCanBusDevice::readAllFrames()
$method=5,12,0|QVector<QCanBusFrame>|readAllFrames|

$beginSignals
$signal=5,8,0|errorOccurred(QCanBusDevice::CanBusError)
$signal=5,8,0|framesReceived()
$signal=5,8,0|framesWritten(qint64)
$signal=5,8,0|stateChanged(QCanBusDevice::CanBusDeviceState)
$endSignals

#pragma ENDDUMP
