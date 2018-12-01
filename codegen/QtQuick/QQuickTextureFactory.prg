%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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
