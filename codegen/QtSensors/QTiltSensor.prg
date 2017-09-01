$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTILTREADING
#endif

CLASS QTiltSensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD calibrate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QTiltSensor(QObject *parent = 0)
*/
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

/*
QTiltReading *reading() const
*/
$method=5,1,0|QTiltReading *|reading|

/*
void calibrate()
*/
$method=5,1,0|void|calibrate|

#pragma ENDDUMP
