$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZE
#endif

CLASS QSGTexture INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD bind
   METHOD convertToNormalizedSourceRect
   METHOD filtering
   METHOD hasAlphaChannel
   METHOD hasMipmaps
   METHOD horizontalWrapMode
   METHOD isAtlasTexture
   METHOD mipmapFiltering
   METHOD normalizedTextureSubRect
   METHOD removedFromAtlas
   METHOD setFiltering
   METHOD setHorizontalWrapMode
   METHOD setMipmapFiltering
   METHOD setVerticalWrapMode
   METHOD textureId
   METHOD textureSize
   METHOD updateBindOptions
   METHOD verticalWrapMode

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void bind() = 0
*/
$virtualMethod=|void|bind|

/*
QRectF convertToNormalizedSourceRect(const QRectF & rect) const
*/
$method=|QRectF|convertToNormalizedSourceRect|const QRectF &

/*
QSGTexture::Filtering filtering() const
*/
$method=|QSGTexture::Filtering|filtering|

/*
virtual bool hasAlphaChannel() const = 0
*/
$virtualMethod=|bool|hasAlphaChannel|

/*
virtual bool hasMipmaps() const = 0
*/
$virtualMethod=|bool|hasMipmaps|

/*
QSGTexture::WrapMode horizontalWrapMode() const
*/
$method=|QSGTexture::WrapMode|horizontalWrapMode|

/*
virtual bool isAtlasTexture() const
*/
$virtualMethod=|bool|isAtlasTexture|

/*
QSGTexture::Filtering mipmapFiltering() const
*/
$method=|QSGTexture::Filtering|mipmapFiltering|

/*
virtual QRectF normalizedTextureSubRect() const
*/
$virtualMethod=|QRectF|normalizedTextureSubRect|

/*
virtual QSGTexture * removedFromAtlas() const
*/
$virtualMethod=|QSGTexture *|removedFromAtlas|

/*
void setFiltering(Filtering filter)
*/
$method=|void|setFiltering|QSGTexture::Filtering

/*
void setHorizontalWrapMode(WrapMode hwrap)
*/
$method=|void|setHorizontalWrapMode|QSGTexture::WrapMode

/*
void setMipmapFiltering(Filtering filter)
*/
$method=|void|setMipmapFiltering|QSGTexture::Filtering

/*
void setVerticalWrapMode(WrapMode vwrap)
*/
$method=|void|setVerticalWrapMode|QSGTexture::WrapMode

/*
virtual int textureId() const = 0
*/
$virtualMethod=|int|textureId|

/*
virtual QSize textureSize() const = 0
*/
$virtualMethod=|QSize|textureSize|

/*
void updateBindOptions(bool force = false)
*/
$method=|void|updateBindOptions|bool=false

/*
QSGTexture::WrapMode verticalWrapMode() const
*/
$method=|QSGTexture::WrapMode|verticalWrapMode|

#pragma ENDDUMP
