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

$prototype=QOffscreenSurface(QScreen *screen = 0)
$constructor=|new|QScreen *=0

$deleteMethod

$prototype=QSurface::SurfaceType surfaceType() const
$method=|QSurface::SurfaceType|surfaceType|

$prototype=void create()
$method=|void|create|

$prototype=void destroy()
$method=|void|destroy|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setFormat(const QSurfaceFormat &format)
$method=|void|setFormat|const QSurfaceFormat &

$prototype=QSurfaceFormat format() const
$method=|QSurfaceFormat|format|

$prototype=QSurfaceFormat requestedFormat() const
$method=|QSurfaceFormat|requestedFormat|

$prototype=QSize size() const
$method=|QSize|size|

$prototype=QScreen *screen() const
$method=|QScreen *|screen|

$prototype=void setScreen(QScreen *screen)
$method=|void|setScreen|QScreen *

$prototype=QPlatformOffscreenSurface *handle() const
$method=|QPlatformOffscreenSurface *|handle|

#pragma ENDDUMP
