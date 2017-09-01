$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QROTATIONREADING
#endif

CLASS QRotationSensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD hasZ
   METHOD setHasZ

   METHOD onHasZChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QRotationSensor(QObject *parent = 0)
*/
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

/*
QRotationReading *reading() const
*/
$method=5,1,0|QRotationReading *|reading|

/*
bool hasZ() const
*/
$method=5,1,0|bool|hasZ|

/*
void setHasZ(bool hasZ)
*/
$method=5,1,0|void|setHasZ|bool

#pragma ENDDUMP
