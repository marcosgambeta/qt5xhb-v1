%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGTEXTURE
REQUEST QIMAGE
REQUEST QSIZE
#endif

$beginClassFrom=QObject

   METHOD delete
   METHOD createTexture
   METHOD image
   METHOD textureByteCount
   METHOD textureSize

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QSGTexture>

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
