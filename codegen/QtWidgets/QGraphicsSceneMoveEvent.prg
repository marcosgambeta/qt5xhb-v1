$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGraphicsSceneMoveEvent INHERIT QGraphicsSceneEvent

   METHOD new
   METHOD delete
   METHOD newPos
   METHOD oldPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsSceneMoveEvent ()
*/
$constructor=|new|

$deleteMethod

/*
QPointF newPos () const
*/
$method=|QPointF|newPos|

/*
QPointF oldPos () const
*/
$method=|QPointF|oldPos|

#pragma ENDDUMP
