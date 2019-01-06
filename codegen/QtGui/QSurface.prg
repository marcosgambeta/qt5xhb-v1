%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=SurfaceClass surfaceClass() const
$method=|QSurface::SurfaceClass|surfaceClass|

$prototype=virtual QSurfaceFormat format() const = 0
$virtualMethod=|QSurfaceFormat|format|

$prototype=virtual QPlatformSurface *surfaceHandle() const = 0
%% TODO: implementar ?
%% $virtualMethod=|QPlatformSurface *|surfaceHandle|

$prototype=virtual SurfaceType surfaceType() const = 0
$virtualMethod=|QSurface::SurfaceType|surfaceType|

$prototype=virtual QSize size() const = 0
$virtualMethod=|QSize|size|

$extraMethods

#pragma ENDDUMP
