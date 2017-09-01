$header

#include "hbclass.ch"

CLASS QTiltReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD yRotation
   METHOD setYRotation
   METHOD xRotation
   METHOD setXRotation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal yRotation() const
*/
$method=5,1,0|qreal|yRotation|

/*
void setYRotation(qreal y)
*/
$method=5,1,0|void|setYRotation|qreal

/*
qreal xRotation() const
*/
$method=5,1,0|qreal|xRotation|

/*
void setXRotation(qreal x)
*/
$method=5,1,0|void|setXRotation|qreal

#pragma ENDDUMP
