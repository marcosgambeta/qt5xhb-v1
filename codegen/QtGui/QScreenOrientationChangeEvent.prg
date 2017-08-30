$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCREEN
#endif

CLASS QScreenOrientationChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD screen
   METHOD orientation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QScreenOrientationChangeEvent(QScreen *screen, Qt::ScreenOrientation orientation)
*/
$constructor=|new|QScreen *,Qt::ScreenOrientation

$deleteMethod

/*
QScreen *screen() const
*/
$method=|QScreen *|screen|

/*
Qt::ScreenOrientation orientation() const
*/
$method=|Qt::ScreenOrientation|orientation|

#pragma ENDDUMP
