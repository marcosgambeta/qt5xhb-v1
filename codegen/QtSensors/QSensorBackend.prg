$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORREADING
REQUEST QSENSOR
#endif

CLASS QSensorBackend INHERIT QObject

   METHOD delete
   METHOD start
   METHOD stop
   METHOD isFeatureSupported
   METHOD addDataRate
   METHOD setDataRates
   METHOD addOutputRange
   METHOD setDescription
   METHOD reading
   METHOD sensor
   METHOD newReadingAvailable
   METHOD sensorStopped
   METHOD sensorBusy
   METHOD sensorError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual void start() = 0
*/
$virtualMethod=5,1,0|void|start|

/*
virtual void stop() = 0
*/
$virtualMethod=5,1,0|void|stop|

/*
virtual bool isFeatureSupported(QSensor::Feature feature) const
*/
$virtualMethod=5,1,0|bool|isFeatureSupported|QSensor::Feature

/*
void addDataRate(qreal min, qreal max)
*/
$method=5,1,0|void|addDataRate|qreal,qreal

/*
void setDataRates(const QSensor *otherSensor)
*/
$method=5,1,0|void|setDataRates|const QSensor *

/*
void addOutputRange(qreal min, qreal max, qreal accuracy)
*/
$method=5,1,0|void|addOutputRange|qreal,qreal,qreal

/*
void setDescription(const QString &description)
*/
$method=5,1,0|void|setDescription|const QString &

/*
QSensorReading *reading() const
*/
$method=5,1,0|QSensorReading *|reading|

/*
QSensor *sensor() const
*/
$method=5,1,0|QSensor *|sensor|

/*
void newReadingAvailable()
*/
$method=5,1,0|void|newReadingAvailable|

/*
void sensorStopped()
*/
$method=5,1,0|void|sensorStopped|

/*
void sensorBusy()
*/
$method=5,1,0|void|sensorBusy|

/*
void sensorError(int error)
*/
$method=5,1,0|void|sensorError|int

#pragma ENDDUMP
