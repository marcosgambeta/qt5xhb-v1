$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QALTIMETERREADING
#endif

CLASS QAltimeter INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QAltimeter(QObject *parent = 0)
*/
$constructor=5,1,0|QObject *=0

$deleteMethod=5,1,0

/*
QAltimeterReading *reading() const
*/
$method=5,1,0|QAltimeterReading *|reading|

#pragma ENDDUMP
