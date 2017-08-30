$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QPLATFORMSURFACE
REQUEST QSIZE
#endif

CLASS QSurface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD surfaceClass
   METHOD format
   METHOD surfaceHandle
   METHOD surfaceType
   METHOD size

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
SurfaceClass surfaceClass() const
*/
$method=|QSurface::SurfaceClass|surfaceClass|

/*
virtual QSurfaceFormat format() const = 0
*/
$virtualMethod=|QSurfaceFormat|format|

/*
virtual QPlatformSurface *surfaceHandle() const = 0
*/
$virtualMethod=|QPlatformSurface *|surfaceHandle|

/*
virtual SurfaceType surfaceType() const = 0
*/
$virtualMethod=|QSurface::SurfaceType|surfaceType|

/*
virtual QSize size() const = 0
*/
$virtualMethod=|QSize|size|

$extraMethods

#pragma ENDDUMP
