$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZE
REQUEST QCOLOR
#endif

CLASS QQuickPaintedItem INHERIT QQuickItem

   METHOD delete
   METHOD antialiasing
   METHOD contentsBoundingRect
   METHOD contentsScale
   METHOD contentsSize
   METHOD fillColor
   METHOD mipmap
   METHOD opaquePainting
   METHOD paint
   METHOD performanceHints
   METHOD renderTarget
   METHOD resetContentsSize
   METHOD setAntialiasing
   METHOD setContentsScale
   METHOD setContentsSize
   METHOD setFillColor
   METHOD setMipmap
   METHOD setOpaquePainting
   METHOD setPerformanceHint
   METHOD setPerformanceHints
   METHOD setRenderTarget
   METHOD update

   METHOD onContentsScaleChanged
   METHOD onContentsSizeChanged
   METHOD onFillColorChanged
   METHOD onRenderTargetChanged

   DESTRUCTOR destroyObject

END CLASS

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
$method=|void|paint|QPainter *

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

#pragma ENDDUMP
