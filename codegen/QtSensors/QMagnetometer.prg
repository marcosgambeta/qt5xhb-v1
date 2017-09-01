$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMAGNETOMETERREADING
#endif

CLASS QMagnetometer INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD returnGeoValues
   METHOD setReturnGeoValues

   METHOD onReturnGeoValuesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QMagnetometer(QObject *parent = 0)
*/
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

/*
QMagnetometerReading *reading() const
*/
$method=5,1,0|QMagnetometerReading *|reading|

/*
bool returnGeoValues() const
*/
$method=5,1,0|bool|returnGeoValues|

/*
void setReturnGeoValues(bool returnGeoValues)
*/
$method=5,1,0|void|setReturnGeoValues|bool

#pragma ENDDUMP
