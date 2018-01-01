%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QQUICKTEXTUREFACTORY
#endif

CLASS QQuickImageProvider INHERIT QQmlImageProviderBase

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

$prototype=QQuickImageProvider(ImageType type, Flags flags = 0)
$constructor=|new|QQmlImageProviderBase::ImageType,QQmlImageProviderBase::Flags=0

$deleteMethod

$prototype=virtual Flags flags() const = 0
$virtualMethod=|QQmlImageProviderBase::Flags|flags|

$prototype=virtual ImageType imageType() const = 0
$virtualMethod=|QQmlImageProviderBase::ImageType|imageType|

$prototype=virtual QImage requestImage(const QString & id, QSize * size, const QSize & requestedSize)
$virtualMethod=|QImage|requestImage|const QString &,QSize *,const QSize &

$prototype=virtual QPixmap requestPixmap(const QString & id, QSize * size, const QSize & requestedSize)
$virtualMethod=|QPixmap|requestPixmap|const QString &,QSize *,const QSize &

$prototype=virtual QQuickTextureFactory * requestTexture(const QString & id, QSize * size, const QSize & requestedSize)
$virtualMethod=|QQuickTextureFactory *|requestTexture|const QString &,QSize *,const QSize &

#pragma ENDDUMP
