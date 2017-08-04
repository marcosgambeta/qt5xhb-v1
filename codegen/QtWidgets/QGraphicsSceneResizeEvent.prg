$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QGraphicsSceneResizeEvent INHERIT QGraphicsSceneEvent

   METHOD new
   METHOD delete
   METHOD newSize
   METHOD oldSize

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
QSizeF newSize () const
*/
$method=|QSizeF|newSize|

/*
QSizeF oldSize () const
*/
$method=|QSizeF|oldSize|

#pragma ENDDUMP
