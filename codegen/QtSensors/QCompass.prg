$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMPASSREADING
#endif

CLASS QCompass INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QCompass(QObject *parent = 0)
$constructor=5,1,0|QObject *=0

$deleteMethod=5,1,0

$prototype=QCompassReading *reading() const
$method=5,1,0|QCompassReading *|reading|

#pragma ENDDUMP
