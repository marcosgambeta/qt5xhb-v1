$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QOBJECT
REQUEST QTOUCHDEVICE
#endif

CLASS QTouchEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD window
   METHOD target
   METHOD touchPointStates
   METHOD device

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QList>

$deleteMethod

/*
QWindow *window() const
*/
$method=|QWindow *|window|

/*
QObject *target() const
*/
$method=|QObject *|target|

/*
Qt::TouchPointStates touchPointStates() const
*/
$method=|Qt::TouchPointStates|touchPointStates|

/*
QTouchDevice *device() const
*/
$method=|QTouchDevice *|device|

#pragma ENDDUMP
