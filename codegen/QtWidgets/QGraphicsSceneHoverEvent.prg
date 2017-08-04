$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneHoverEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD lastPos
   METHOD lastScenePos
   METHOD lastScreenPos
   METHOD modifiers
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
QPointF lastPos () const
*/
$method=|QPointF|lastPos|

/*
QPointF lastScenePos () const
*/
$method=|QPointF|lastScenePos|

/*
QPoint lastScreenPos () const
*/
$method=|QPoint|lastScreenPos|

/*
Qt::KeyboardModifiers modifiers () const
*/
$method=|Qt::KeyboardModifiers|modifiers|

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
