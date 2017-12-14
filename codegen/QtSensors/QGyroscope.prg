$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGYROSCOPEREADING
#endif

CLASS QGyroscope INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QGyroscope(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QGyroscopeReading *reading() const
$method=5,1,0|QGyroscopeReading *|reading|

#pragma ENDDUMP
