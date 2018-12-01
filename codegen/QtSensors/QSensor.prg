%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QSensor(const QByteArray &type, QObject *parent = 0)
$constructor=5,1,0|new|const QByteArray &,QObject *=0

$deleteMethod=5,1,0

$prototype=QByteArray identifier() const
$method=5,1,0|QByteArray|identifier|

$prototype=void setIdentifier(const QByteArray &identifier)
$method=5,1,0|void|setIdentifier|const QByteArray &

$prototype=QByteArray type() const
$method=5,1,0|QByteArray|type|

$prototype=bool connectToBackend()
$method=5,1,0|bool|connectToBackend|

$prototype=bool isConnectedToBackend() const
$method=5,1,0|bool|isConnectedToBackend|

$prototype=bool isBusy() const
$method=5,1,0|bool|isBusy|

$prototype=void setActive(bool active)
$method=5,1,0|void|setActive|bool

$prototype=bool isActive() const
$method=5,1,0|bool|isActive|

$prototype=bool isAlwaysOn() const
$method=5,1,0|bool|isAlwaysOn|

$prototype=void setAlwaysOn(bool alwaysOn)
$method=5,1,0|void|setAlwaysOn|bool

$prototype=bool skipDuplicates() const
$method=5,1,0|bool|skipDuplicates|

$prototype=void setSkipDuplicates(bool skipDuplicates)
$method=5,1,0|void|setSkipDuplicates|bool

$prototype=qrangelist availableDataRates() const
%% TODO: implementar
%% $method=5,1,0|qrangelist|availableDataRates|

$prototype=int dataRate() const
$method=5,1,0|int|dataRate|

$prototype=void setDataRate(int rate)
$method=5,1,0|void|setDataRate|int

$prototype=qoutputrangelist outputRanges() const
%% TODO: implementar
%% $method=5,1,0|qoutputrangelist|outputRanges|

$prototype=int outputRange() const
$method=5,1,0|int|outputRange|

$prototype=void setOutputRange(int index)
$method=5,1,0|void|setOutputRange|int

$prototype=QString description() const
$method=5,1,0|QString|description|

$prototype=int error() const
$method=5,1,0|int|error|

$prototype=void addFilter(QSensorFilter *filter)
$method=5,1,0|void|addFilter|QSensorFilter *

$prototype=void removeFilter(QSensorFilter *filter)
$method=5,1,0|void|removeFilter|QSensorFilter *

$prototype=QList<QSensorFilter*> filters() const
%% TODO: implementar
%% $method=5,1,0|QList<QSensorFilter *>|filters|

$prototype=QSensorReading *reading() const
$method=5,1,0|QSensorReading *|reading|

$prototype=bool isFeatureSupported(Feature feature) const
$method=5,1,0|bool|isFeatureSupported|QSensor::Feature

$prototype=AxesOrientationMode axesOrientationMode() const
$method=5,1,0|QSensor::AxesOrientationMode|axesOrientationMode|

$prototype=void setAxesOrientationMode(AxesOrientationMode axesOrientationMode)
$method=5,1,0|void|setAxesOrientationMode|QSensor::AxesOrientationMode

$prototype=int currentOrientation() const
$method=5,1,0|int|currentOrientation|

$prototype=void setCurrentOrientation(int currentOrientation)
$method=5,1,0|void|setCurrentOrientation|int

$prototype=int userOrientation() const
$method=5,1,0|int|userOrientation|

$prototype=void setUserOrientation(int userOrientation)
$method=5,1,0|void|setUserOrientation|int

$prototype=int maxBufferSize() const
$method=5,1,0|int|maxBufferSize|

$prototype=void setMaxBufferSize(int maxBufferSize)
$method=5,1,0|void|setMaxBufferSize|int

$prototype=int efficientBufferSize() const
$method=5,1,0|int|efficientBufferSize|

$prototype=void setEfficientBufferSize(int efficientBufferSize)
$method=5,1,0|void|setEfficientBufferSize|int

$prototype=int bufferSize() const
$method=5,1,0|int|bufferSize|

$prototype=void setBufferSize(int bufferSize)
$method=5,1,0|void|setBufferSize|int

$prototype=bool start()
$method=5,1,0|bool|start|

$prototype=void stop()
$method=5,1,0|void|stop|

$prototype=static QList<QByteArray> sensorTypes()
$staticMethod=|QList<QByteArray>|sensorTypes|

$prototype=static QList<QByteArray> sensorsForType(const QByteArray &type)
$staticMethod=|QList<QByteArray>|sensorsForType|const QByteArray &

$prototype=static QByteArray defaultSensorForType(const QByteArray &type)
$staticMethod=5,1,0|QByteArray|defaultSensorForType|const QByteArray &

$beginSignals
$signal=5,1,0|busyChanged()
$signal=5,1,0|activeChanged()
$signal=5,1,0|readingChanged()
$signal=5,1,0|sensorError(int)
$signal=5,1,0|availableSensorsChanged()
$signal=5,1,0|alwaysOnChanged()
$signal=5,1,0|dataRateChanged()
$signal=5,1,0|skipDuplicatesChanged(bool)
$signal=5,1,0|axesOrientationModeChanged(QSensor::AxesOrientationMode)
$signal=5,1,0|currentOrientationChanged(int)
$signal=5,1,0|userOrientationChanged(int)
$signal=5,1,0|maxBufferSizeChanged(int)
$signal=5,1,0|efficientBufferSizeChanged(int)
$signal=5,1,0|bufferSizeChanged(int)
$endSignals

#pragma ENDDUMP
