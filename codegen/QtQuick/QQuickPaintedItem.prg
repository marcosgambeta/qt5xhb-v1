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
HB_FUNC_STATIC( QQUICKPAINTEDITEM_ANTIALIASING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->antialiasing () );
  }
}




/*
QRectF contentsBoundingRect() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSBOUNDINGRECT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->contentsBoundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal contentsScale() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSSCALE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->contentsScale () );
  }
}


/*
QSize contentsSize() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->contentsSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QColor fillColor() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_FILLCOLOR )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->fillColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
bool mipmap() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_MIPMAP )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->mipmap () );
  }
}


/*
bool opaquePainting() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_OPAQUEPAINTING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->opaquePainting () );
  }
}


/*
virtual void paint(QPainter * painter) = 0
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_PAINT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->paint ( PQPAINTER(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PerformanceHints performanceHints() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_PERFORMANCEHINTS )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->performanceHints () );
  }
}


/*
RenderTarget renderTarget() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_RENDERTARGET )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderTarget () );
  }
}


/*
void resetContentsSize()
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_RESETCONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetContentsSize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAntialiasing(bool enable)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETANTIALIASING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAntialiasing ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentsScale(qreal)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETCONTENTSSCALE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentsScale ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentsSize(const QSize &)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETCONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentsSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFillColor(const QColor &)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETFILLCOLOR )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setFillColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMipmap(bool enable)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETMIPMAP )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMipmap ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpaquePainting(bool opaque)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETOPAQUEPAINTING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOpaquePainting ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPerformanceHint(PerformanceHint hint, bool enabled = true)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETPERFORMANCEHINT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPerformanceHint ( (QQuickPaintedItem::PerformanceHint) hb_parni(1), OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPerformanceHints(PerformanceHints hints)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETPERFORMANCEHINTS )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPerformanceHints ( (QQuickPaintedItem::PerformanceHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRenderTarget(RenderTarget target)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETRENDERTARGET )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRenderTarget ( (QQuickPaintedItem::RenderTarget) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
