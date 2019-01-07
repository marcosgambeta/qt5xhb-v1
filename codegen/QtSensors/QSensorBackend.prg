%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=virtual void start() = 0
$virtualMethod=5,1,0|void|start|

$prototype=virtual void stop() = 0
$virtualMethod=5,1,0|void|stop|

$prototype=virtual bool isFeatureSupported(QSensor::Feature feature) const
$virtualMethod=5,1,0|bool|isFeatureSupported|QSensor::Feature

$prototype=void addDataRate(qreal min, qreal max)
$method=5,1,0|void|addDataRate|qreal,qreal

$prototype=void setDataRates(const QSensor *otherSensor)
$method=5,1,0|void|setDataRates|const QSensor *

$prototype=void addOutputRange(qreal min, qreal max, qreal accuracy)
$method=5,1,0|void|addOutputRange|qreal,qreal,qreal

$prototype=void setDescription(const QString &description)
$method=5,1,0|void|setDescription|const QString &

$prototype=QSensorReading *reading() const
$method=5,1,0|QSensorReading *|reading|

$prototype=QSensor *sensor() const
$method=5,1,0|QSensor *|sensor|

$prototype=void newReadingAvailable()
$method=5,1,0|void|newReadingAvailable|

$prototype=void sensorStopped()
$method=5,1,0|void|sensorStopped|

$prototype=void sensorBusy()
$method=5,1,0|void|sensorBusy|

$prototype=void sensorError(int error)
$method=5,1,0|void|sensorError|int

#pragma ENDDUMP
