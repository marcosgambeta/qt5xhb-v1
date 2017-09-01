$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QSIZE
REQUEST QSCREEN
REQUEST QPLATFORMOFFSCREENSURFACE
#endif

CLASS QOffscreenSurface INHERIT QObject,QSurface

   METHOD new
   METHOD delete
   METHOD surfaceType
   METHOD create
   METHOD destroy
   METHOD isValid
   METHOD setFormat
   METHOD format
   METHOD requestedFormat
   METHOD size
   METHOD screen
   METHOD setScreen
   METHOD handle

   METHOD onScreenChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QOffscreenSurface(QScreen *screen = 0)
*/
$constructor=|new|QScreen *=0

$deleteMethod

/*
QSurface::SurfaceType surfaceType() const
*/
$method=|QSurface::SurfaceType|surfaceType|

/*
void create()
*/
$method=|void|create|

/*
void destroy()
*/
$method=|void|destroy|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
void setFormat(const QSurfaceFormat &format)
*/
$method=|void|setFormat|const QSurfaceFormat &

/*
QSurfaceFormat format() const
*/
$method=|QSurfaceFormat|format|

/*
QSurfaceFormat requestedFormat() const
*/
$method=|QSurfaceFormat|requestedFormat|

/*
QSize size() const
*/
$method=|QSize|size|

/*
QScreen *screen() const
*/
$method=|QScreen *|screen|

/*
void setScreen(QScreen *screen)
*/
$method=|void|setScreen|QScreen *

/*
QPlatformOffscreenSurface *handle() const
*/
$method=|QPlatformOffscreenSurface *|handle|

#pragma ENDDUMP
