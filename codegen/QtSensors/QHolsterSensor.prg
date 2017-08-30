$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOLSTERREADING
#endif

CLASS QHolsterSensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,1,0

/*
QHolsterSensor(QObject *parent = 0)
*/
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

/*
QHolsterReading *reading() const
*/
$method=5,1,0|QHolsterReading *|reading|

#pragma ENDDUMP
