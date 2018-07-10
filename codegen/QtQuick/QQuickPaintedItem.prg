%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QQuickItem

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=bool antialiasing() const
$method=|bool|antialiasing|

$prototype=QRectF contentsBoundingRect() const
$method=|QRectF|contentsBoundingRect|

$prototype=qreal contentsScale() const
$method=|qreal|contentsScale|

$prototype=QSize contentsSize() const
$method=|QSize|contentsSize|

$prototype=QColor fillColor() const
$method=|QColor|fillColor|

$prototype=bool mipmap() const
$method=|bool|mipmap|

$prototype=bool opaquePainting() const
$method=|bool|opaquePainting|

$prototype=virtual void paint(QPainter * painter) = 0
$virtualMethod=|void|paint|QPainter *

$prototype=PerformanceHints performanceHints() const
$method=|QQuickPaintedItem::PerformanceHints|performanceHints|

$prototype=RenderTarget renderTarget() const
$method=|QQuickPaintedItem::RenderTarget|renderTarget|

$prototype=void resetContentsSize()
$method=|void|resetContentsSize|

$prototype=void setAntialiasing(bool enable)
$method=|void|setAntialiasing|bool

$prototype=void setContentsScale(qreal)
$method=|void|setContentsScale|qreal

$prototype=void setContentsSize(const QSize &)
$method=|void|setContentsSize|const QSize &

$prototype=void setFillColor(const QColor &)
$method=|void|setFillColor|const QColor &

$prototype=void setMipmap(bool enable)
$method=|void|setMipmap|bool

$prototype=void setOpaquePainting(bool opaque)
$method=|void|setOpaquePainting|bool

$prototype=void setPerformanceHint(PerformanceHint hint, bool enabled = true)
$method=|void|setPerformanceHint|QQuickPaintedItem::PerformanceHint,bool=true

$prototype=void setPerformanceHints(PerformanceHints hints)
$method=|void|setPerformanceHints|QQuickPaintedItem::PerformanceHints

$prototype=void setRenderTarget(RenderTarget target)
$method=|void|setRenderTarget|QQuickPaintedItem::RenderTarget

$prototype=void update(const QRect & rect = QRect())
$method=|void|update|const QRect &=QRect()

$beginSignals
$signal=|contentsScaleChanged()
$signal=|contentsSizeChanged()
$signal=|fillColorChanged()
$signal=|renderTargetChanged()
$endSignals

#pragma ENDDUMP
