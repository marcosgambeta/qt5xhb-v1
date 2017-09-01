$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLIGHTREADING
#endif

CLASS QLightSensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD fieldOfView
   METHOD setFieldOfView

   METHOD onFieldOfViewChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QLightSensor(QObject *parent = 0)
*/
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

/*
QLightReading *reading() const
*/
$method=5,1,0|QLightReading *|reading|

/*
qreal fieldOfView() const
*/
$method=5,1,0|qreal|fieldOfView|

/*
void setFieldOfView(qreal fieldOfView)
*/
$method=5,1,0|void|setFieldOfView|qreal

#pragma ENDDUMP
