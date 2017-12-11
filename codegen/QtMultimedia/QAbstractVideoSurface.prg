$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVIDEOSURFACEFORMAT
#endif

CLASS QAbstractVideoSurface INHERIT QObject

   METHOD delete
   METHOD error
   METHOD isActive
   METHOD isFormatSupported
   METHOD nearestFormat
   METHOD present
   METHOD start
   METHOD stop
   METHOD surfaceFormat

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVideoSurfaceFormat>

$deleteMethod

$prototype=Error error () const
$method=|QAbstractVideoSurface::Error|error|

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
$method=|bool|isFormatSupported|const QVideoSurfaceFormat &

$prototype=virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
$method=|QVideoSurfaceFormat|nearestFormat|const QVideoSurfaceFormat &

$prototype=virtual bool present ( const QVideoFrame & frame ) = 0
$method=|bool|present|const QVideoFrame &

$prototype=virtual bool start ( const QVideoSurfaceFormat & format )
$method=|bool|start|const QVideoSurfaceFormat &

$prototype=virtual void stop ()
$method=|void|stop|

$prototype=QVideoSurfaceFormat surfaceFormat () const
$method=|QVideoSurfaceFormat|surfaceFormat|

#pragma ENDDUMP
