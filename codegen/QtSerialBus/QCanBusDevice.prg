%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCanBusDevice(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

$prototype=virtual void setConfigurationParameter(int key, const QVariant &value)
$virtualMethod=|void|setConfigurationParameter|int,const QVariant &

$prototype=QVariant configurationParameter(int key) const
$method=|QVariant|configurationParameter|int

$prototype=QVector<int> configurationKeys() const
$method=|QVector<int>|configurationKeys|

$prototype=virtual bool writeFrame(const QCanBusFrame &frame) = 0
$virtualMethod=|bool|writeFrame|const QCanBusFrame &

$prototype=QCanBusFrame readFrame()
$method=|QCanBusFrame|readFrame|

$prototype=qint64 framesAvailable() const
$method=|qint64|framesAvailable|

$prototype=qint64 framesToWrite() const
$method=|qint64|framesToWrite|

$prototype=virtual bool waitForFramesWritten(int msecs)
$virtualMethod=|bool|waitForFramesWritten|int

$prototype=virtual bool waitForFramesReceived(int msecs)
$virtualMethod=|bool|waitForFramesReceived|int

$prototype=bool connectDevice()
$method=|bool|connectDevice|

$prototype=void disconnectDevice()
$method=|void|disconnectDevice|

$prototype=CanBusDeviceState state() const
$method=|CanBusDeviceState|state|

$prototype=CanBusError error() const
$method=|CanBusError|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=virtual QString interpretErrorFrame(const QCanBusFrame &errorFrame) = 0
$virtualMethod=|QString|interpretErrorFrame|const QCanBusFrame &

$beginSignals
$signal=|errorOccurred(QCanBusDevice::CanBusError)
$signal=|framesReceived()
$signal=|framesWritten(qint64)
$signal=|stateChanged(QCanBusDevice::CanBusDeviceState)
$endSignals

#pragma ENDDUMP
