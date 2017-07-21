$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCELEROMETERREADING
#endif

CLASS QAccelerometer INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accelerationMode
   METHOD setAccelerationMode
   METHOD reading

   METHOD onAccelerationModeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QAccelerometer(QObject *parent = 0)
*/
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

/*
AccelerationMode accelerationMode() const
*/
$method=5,1,0|QAccelerometer::AccelerationMode|accelerationMode|

/*
void setAccelerationMode(AccelerationMode accelerationMode)
*/
$method=5,1,0|void|setAccelerationMode|QAccelerometer::AccelerationMode

/*
QAccelerometerReading *reading() const
*/
$method=5,1,0|QAccelerometerReading *|reading|

#pragma ENDDUMP
