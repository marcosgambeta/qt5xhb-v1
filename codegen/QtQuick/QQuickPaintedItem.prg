$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZE
REQUEST QCOLOR
#endif

CLASS QQuickPaintedItem INHERIT QQuickItem

   DATA self_destruction INIT .F.

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

/*
bool antialiasing() const
*/
$method=|bool|antialiasing|

/*
QRectF contentsBoundingRect() const
*/
$method=|QRectF|contentsBoundingRect|

/*
qreal contentsScale() const
*/
$method=|qreal|contentsScale|

/*
QSize contentsSize() const
*/
$method=|QSize|contentsSize|

/*
QColor fillColor() const
*/
$method=|QColor|fillColor|

/*
bool mipmap() const
*/
$method=|bool|mipmap|

/*
bool opaquePainting() const
*/
$method=|bool|opaquePainting|

/*
virtual void paint(QPainter * painter) = 0
*/
$method=|void|paint|QPainter *

/*
PerformanceHints performanceHints() const
*/
$method=|QQuickPaintedItem::PerformanceHints|performanceHints|

/*
RenderTarget renderTarget() const
*/
$method=|QQuickPaintedItem::RenderTarget|renderTarget|

/*
void resetContentsSize()
*/
$method=|void|resetContentsSize|

/*
void setAntialiasing(bool enable)
*/
$method=|void|setAntialiasing|bool

/*
void setContentsScale(qreal)
*/
$method=|void|setContentsScale|qreal

/*
void setContentsSize(const QSize &)
*/
$method=|void|setContentsSize|const QSize &

/*
void setFillColor(const QColor &)
*/
$method=|void|setFillColor|const QColor &

/*
void setMipmap(bool enable)
*/
$method=|void|setMipmap|bool

/*
void setOpaquePainting(bool opaque)
*/
$method=|void|setOpaquePainting|bool

/*
void setPerformanceHint(PerformanceHint hint, bool enabled = true)
*/
$method=|void|setPerformanceHint|QQuickPaintedItem::PerformanceHint,bool=true

/*
void setPerformanceHints(PerformanceHints hints)
*/
$method=|void|setPerformanceHints|QQuickPaintedItem::PerformanceHints

/*
void setRenderTarget(RenderTarget target)
*/
$method=|void|setRenderTarget|QQuickPaintedItem::RenderTarget

/*
void update(const QRect & rect = QRect())
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_UPDATE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect par1 = ISNIL(1)? QRect() : *(QRect *) _qt5xhb_itemGetPtr(1);
    obj->update ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
