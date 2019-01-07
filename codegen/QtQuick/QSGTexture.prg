%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void bind() = 0
$virtualMethod=|void|bind|

$prototype=QRectF convertToNormalizedSourceRect(const QRectF & rect) const
$method=|QRectF|convertToNormalizedSourceRect|const QRectF &

$prototype=QSGTexture::Filtering filtering() const
$method=|QSGTexture::Filtering|filtering|

$prototype=virtual bool hasAlphaChannel() const = 0
$virtualMethod=|bool|hasAlphaChannel|

$prototype=virtual bool hasMipmaps() const = 0
$virtualMethod=|bool|hasMipmaps|

$prototype=QSGTexture::WrapMode horizontalWrapMode() const
$method=|QSGTexture::WrapMode|horizontalWrapMode|

$prototype=virtual bool isAtlasTexture() const
$virtualMethod=|bool|isAtlasTexture|

$prototype=QSGTexture::Filtering mipmapFiltering() const
$method=|QSGTexture::Filtering|mipmapFiltering|

$prototype=virtual QRectF normalizedTextureSubRect() const
$virtualMethod=|QRectF|normalizedTextureSubRect|

$prototype=virtual QSGTexture * removedFromAtlas() const
$virtualMethod=|QSGTexture *|removedFromAtlas|

$prototype=void setFiltering(Filtering filter)
$method=|void|setFiltering|QSGTexture::Filtering

$prototype=void setHorizontalWrapMode(WrapMode hwrap)
$method=|void|setHorizontalWrapMode|QSGTexture::WrapMode

$prototype=void setMipmapFiltering(Filtering filter)
$method=|void|setMipmapFiltering|QSGTexture::Filtering

$prototype=void setVerticalWrapMode(WrapMode vwrap)
$method=|void|setVerticalWrapMode|QSGTexture::WrapMode

$prototype=virtual int textureId() const = 0
$virtualMethod=|int|textureId|

$prototype=virtual QSize textureSize() const = 0
$virtualMethod=|QSize|textureSize|

$prototype=void updateBindOptions(bool force = false)
$method=|void|updateBindOptions|bool=false

$prototype=QSGTexture::WrapMode verticalWrapMode() const
$method=|QSGTexture::WrapMode|verticalWrapMode|

#pragma ENDDUMP
