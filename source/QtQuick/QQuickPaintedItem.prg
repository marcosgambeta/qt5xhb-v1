/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZE
REQUEST QCOLOR
#endif

CLASS QQuickPaintedItem INHERIT QQuickItem

   DATA class_id INIT Class_Id_QQuickPaintedItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QQuickPaintedItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QQuickPaintedItem>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QQuickPaintedItem>
#endif
#endif


HB_FUNC_STATIC( QQUICKPAINTEDITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQuickPaintedItem * obj = (QQuickPaintedItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool antialiasing() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_ANTIALIASING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->antialiasing (  ) );
  }
}




/*
QRectF contentsBoundingRect() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSBOUNDINGRECT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->contentsBoundingRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal contentsScale() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSSCALE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->contentsScale (  ) );
  }
}


/*
QSize contentsSize() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->contentsSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QColor fillColor() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_FILLCOLOR )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->fillColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
bool mipmap() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_MIPMAP )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->mipmap (  ) );
  }
}


/*
bool opaquePainting() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_OPAQUEPAINTING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->opaquePainting (  ) );
  }
}


/*
virtual void paint(QPainter * painter) = 0
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_PAINT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    obj->paint ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PerformanceHints performanceHints() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_PERFORMANCEHINTS )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->performanceHints (  ) );
  }
}


/*
RenderTarget renderTarget() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_RENDERTARGET )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderTarget (  ) );
  }
}


/*
void resetContentsSize()
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_RESETCONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetContentsSize (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAntialiasing(bool enable)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETANTIALIASING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAntialiasing ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentsScale(qreal)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETCONTENTSSCALE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setContentsScale ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentsSize(const QSize &)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETCONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setContentsSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFillColor(const QColor &)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETFILLCOLOR )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qtxhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setFillColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMipmap(bool enable)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETMIPMAP )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMipmap ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpaquePainting(bool opaque)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETOPAQUEPAINTING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOpaquePainting ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPerformanceHint(PerformanceHint hint, bool enabled = true)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETPERFORMANCEHINT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPerformanceHint (  (QQuickPaintedItem::PerformanceHint) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPerformanceHints(PerformanceHints hints)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETPERFORMANCEHINTS )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPerformanceHints (  (QQuickPaintedItem::PerformanceHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRenderTarget(RenderTarget target)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETRENDERTARGET )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRenderTarget (  (QQuickPaintedItem::RenderTarget) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void update(const QRect & rect = QRect())
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_UPDATE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect par1 = ISNIL(1)? QRect() : *(QRect *) _qtxhb_itemGetPtr(1);
    obj->update ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
