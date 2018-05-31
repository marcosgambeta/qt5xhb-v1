%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QSurface

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
%%   METHOD handle

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScreen>

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
%% TODO: QPlatformOffscreenSurface class
%% $method=|QPlatformOffscreenSurface *|handle|

$beginSignals
$signal=|screenChanged(QScreen*)
$endSignals

#pragma ENDDUMP
