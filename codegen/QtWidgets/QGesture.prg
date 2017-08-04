$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGesture INHERIT QObject

   METHOD new
   METHOD delete
   METHOD gestureCancelPolicy
   METHOD gestureType
   METHOD hasHotSpot
   METHOD hotSpot
   METHOD setGestureCancelPolicy
   METHOD setHotSpot
   METHOD state
   METHOD unsetHotSpot

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGesture(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
GestureCancelPolicy gestureCancelPolicy() const
*/
$method=|QGesture::GestureCancelPolicy|gestureCancelPolicy|

/*
Qt::GestureType gestureType() const
*/
$method=|Qt::GestureType|gestureType|

/*
bool hasHotSpot() const
*/
$method=|bool|hasHotSpot|

/*
QPointF hotSpot() const
*/
$method=|QPointF|hotSpot|

/*
void setGestureCancelPolicy(GestureCancelPolicy policy)
*/
$method=|void|setGestureCancelPolicy|QGesture::GestureCancelPolicy

/*
void setHotSpot(const QPointF & value)
*/
$method=|void|setHotSpot|const QPointF &

/*
Qt::GestureState state() const
*/
$method=|Qt::GestureState|state|

/*
void unsetHotSpot()
*/
$method=|void|unsetHotSpot|

#pragma ENDDUMP
