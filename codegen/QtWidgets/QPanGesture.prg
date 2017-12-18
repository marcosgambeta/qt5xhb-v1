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

$prototype=qreal acceleration() const
$method=|qreal|acceleration|

$prototype=QPointF delta() const
$method=|QPointF|delta|

$prototype=QPointF lastOffset() const
$method=|QPointF|lastOffset|

$prototype=QPointF offset() const
$method=|QPointF|offset|

$prototype=void setAcceleration(qreal value)
$method=|void|setAcceleration|qreal

$prototype=void setLastOffset(const QPointF & value)
$method=|void|setLastOffset|const QPointF &

$prototype=void setOffset(const QPointF & value)
$method=|void|setOffset|const QPointF &

#pragma ENDDUMP
