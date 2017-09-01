$header

#include "hbclass.ch"

CLASS QRotationReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD x
   METHOD y
   METHOD z
   METHOD setFromEuler

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal x() const
*/
$method=5,1,0|qreal|x|

/*
qreal y() const
*/
$method=5,1,0|qreal|y|

/*
qreal z() const
*/
$method=5,1,0|qreal|z|

/*
void setFromEuler(qreal x, qreal y, qreal z)
*/
$method=5,1,0|void|setFromEuler|qreal,qreal,qreal

#pragma ENDDUMP
