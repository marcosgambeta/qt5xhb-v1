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

/*
virtual QSGTexture * createTexture(QQuickWindow * window) const = 0
*/
$virtualMethod=|QSGTexture *|createTexture|QQuickWindow *

/*
virtual QImage image() const
*/
$virtualMethod=|QImage|image|

/*
virtual int textureByteCount() const = 0
*/
$virtualMethod=|int|textureByteCount|

/*
virtual QSize textureSize() const = 0
*/
$virtualMethod=|QSize|textureSize|

#pragma ENDDUMP
