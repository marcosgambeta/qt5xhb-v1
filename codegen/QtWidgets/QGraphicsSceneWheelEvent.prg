$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneWheelEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD buttons
   METHOD delta
   METHOD modifiers
   METHOD orientation
   METHOD pos
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
Qt::MouseButtons buttons () const
*/
$method=|Qt::MouseButtons|buttons|

/*
int delta () const
*/
$method=|int|delta|

/*
Qt::KeyboardModifiers modifiers () const
*/
$method=|Qt::KeyboardModifiers|modifiers|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
QPointF pos () const
*/
$method=|QPointF|pos|

/*
QPointF scenePos () const
*/
$method=|QPointF|scenePos|

/*
QPoint screenPos () const
*/
$method=|QPoint|screenPos|

#pragma ENDDUMP
