$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTVIDEOSURFACE
#endif

CLASS QVideoRendererControl INHERIT QMediaControl

   METHOD delete
   METHOD setSurface
   METHOD surface

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void setSurface(QAbstractVideoSurface * surface) = 0
$virtualMethod=|void|setSurface|QAbstractVideoSurface *

$prototype=virtual QAbstractVideoSurface * surface() const = 0
$virtualMethod=|QAbstractVideoSurface *|surface|

#pragma ENDDUMP
