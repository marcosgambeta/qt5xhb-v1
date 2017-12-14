$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAMBIENTLIGHTREADING
#endif

CLASS QAmbientLightSensor INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QAmbientLightSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QAmbientLightReading *reading() const
$method=5,1,0|QAmbientLightReading *|reading|

#pragma ENDDUMP
