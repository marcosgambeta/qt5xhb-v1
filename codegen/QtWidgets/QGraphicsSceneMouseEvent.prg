$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneMouseEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD button
   METHOD buttonDownPos
   METHOD buttonDownScenePos
   METHOD buttonDownScreenPos
   METHOD buttons
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
Qt::MouseButton button () const
*/
$method=|Qt::MouseButton|button|

/*
QPointF buttonDownPos ( Qt::MouseButton button ) const
*/
$method=|QPointF|buttonDownPos|Qt::MouseButton

/*
QPointF buttonDownScenePos ( Qt::MouseButton button ) const
*/
$method=|QPointF|buttonDownScenePos|Qt::MouseButton

/*
QPoint buttonDownScreenPos ( Qt::MouseButton button ) const
*/
$method=|QPoint|buttonDownScreenPos|Qt::MouseButton

/*
Qt::MouseButtons buttons () const
*/
$method=|Qt::MouseButtons|buttons|

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
