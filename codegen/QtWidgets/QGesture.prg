%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QGesture(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=GestureCancelPolicy gestureCancelPolicy() const
$method=|QGesture::GestureCancelPolicy|gestureCancelPolicy|

$prototype=Qt::GestureType gestureType() const
$method=|Qt::GestureType|gestureType|

$prototype=bool hasHotSpot() const
$method=|bool|hasHotSpot|

$prototype=QPointF hotSpot() const
$method=|QPointF|hotSpot|

$prototype=void setGestureCancelPolicy(GestureCancelPolicy policy)
$method=|void|setGestureCancelPolicy|QGesture::GestureCancelPolicy

$prototype=void setHotSpot(const QPointF & value)
$method=|void|setHotSpot|const QPointF &

$prototype=Qt::GestureState state() const
$method=|Qt::GestureState|state|

$prototype=void unsetHotSpot()
$method=|void|unsetHotSpot|

#pragma ENDDUMP
