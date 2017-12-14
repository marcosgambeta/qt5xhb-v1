$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGTEXTURE
REQUEST QIMAGE
REQUEST QSIZE
#endif

CLASS QQuickTextureFactory INHERIT QObject

   METHOD delete
   METHOD createTexture
   METHOD image
   METHOD textureByteCount
   METHOD textureSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QSGTexture * createTexture(QQuickWindow * window) const = 0
$virtualMethod=|QSGTexture *|createTexture|QQuickWindow *

$prototype=virtual QImage image() const
$virtualMethod=|QImage|image|

$prototype=virtual int textureByteCount() const = 0
$virtualMethod=|int|textureByteCount|

$prototype=virtual QSize textureSize() const = 0
$virtualMethod=|QSize|textureSize|

#pragma ENDDUMP
