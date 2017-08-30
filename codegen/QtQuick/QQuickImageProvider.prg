$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QQUICKTEXTUREFACTORY
#endif

CLASS QQuickImageProvider INHERIT QQmlImageProviderBase

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD flags
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap
   METHOD requestTexture

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QQuickImageProvider(ImageType type, Flags flags = 0)
*/
$constructor=|new|QQmlImageProviderBase::ImageType,QQmlImageProviderBase::Flags=0

$deleteMethod

/*
virtual Flags flags() const = 0
*/
$virtualMethod=|QQmlImageProviderBase::Flags|flags|

/*
virtual ImageType imageType() const = 0
*/
$virtualMethod=|QQmlImageProviderBase::ImageType|imageType|

/*
virtual QImage requestImage(const QString & id, QSize * size, const QSize & requestedSize)
*/
$virtualMethod=|QImage|requestImage|const QString &,QSize *,const QSize &

/*
virtual QPixmap requestPixmap(const QString & id, QSize * size, const QSize & requestedSize)
*/
$virtualMethod=|QPixmap|requestPixmap|const QString &,QSize *,const QSize &

/*
virtual QQuickTextureFactory * requestTexture(const QString & id, QSize * size, const QSize & requestedSize)
*/
$virtualMethod=|QQuickTextureFactory *|requestTexture|const QString &,QSize *,const QSize &

#pragma ENDDUMP
