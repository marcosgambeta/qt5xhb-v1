$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QPanGesture INHERIT QGesture

   METHOD delete
   METHOD acceleration
   METHOD delta
   METHOD lastOffset
   METHOD offset
   METHOD setAcceleration
   METHOD setLastOffset
   METHOD setOffset

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
qreal acceleration() const
*/
$method=|qreal|acceleration|

/*
QPointF delta() const
*/
$method=|QPointF|delta|

/*
QPointF lastOffset() const
*/
$method=|QPointF|lastOffset|

/*
QPointF offset() const
*/
$method=|QPointF|offset|

/*
void setAcceleration(qreal value)
*/
$method=|void|setAcceleration|qreal

/*
void setLastOffset(const QPointF & value)
*/
$method=|void|setLastOffset|const QPointF &

/*
void setOffset(const QPointF & value)
*/
$method=|void|setOffset|const QPointF &

#pragma ENDDUMP
