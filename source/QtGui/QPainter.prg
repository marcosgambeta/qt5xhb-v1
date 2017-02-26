/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QRECTF
REQUEST QRECT
REQUEST QPOINT
REQUEST QPAINTERPATH
REQUEST QREGION
REQUEST QTRANSFORM
REQUEST QPAINTDEVICE
REQUEST QFONT
REQUEST QFONTINFO
REQUEST QFONTMETRICS
REQUEST QPAINTENGINE
REQUEST QPEN
#endif

CLASS QPainter

   DATA pointer
   DATA class_id INIT Class_Id_QPainter
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD background
   METHOD backgroundMode
   METHOD begin
   METHOD beginNativePainting
   METHOD boundingRect1
   METHOD boundingRect2
   METHOD boundingRect3
   METHOD boundingRect4
   METHOD boundingRect
   METHOD brush
   METHOD brushOrigin
   METHOD clipPath
   METHOD clipRegion
   METHOD combinedTransform
   METHOD compositionMode
   METHOD device
   METHOD deviceTransform
   METHOD drawArc1
   METHOD drawArc2
   METHOD drawArc3
   METHOD drawArc
   METHOD drawChord1
   METHOD drawChord2
   METHOD drawChord3
   METHOD drawChord
   METHOD drawConvexPolygon3
   METHOD drawConvexPolygon4
   METHOD drawConvexPolygon
   METHOD drawEllipse1
   METHOD drawEllipse2
   METHOD drawEllipse3
   METHOD drawEllipse4
   METHOD drawEllipse5
   METHOD drawEllipse
   METHOD drawImage1
   METHOD drawImage2
   METHOD drawImage3
   METHOD drawImage4
   METHOD drawImage5
   METHOD drawImage6
   METHOD drawImage7
   METHOD drawImage8
   METHOD drawImage9
   METHOD drawImage
   METHOD drawLine1
   METHOD drawLine2
   METHOD drawLine3
   METHOD drawLine4
   METHOD drawLine5
   METHOD drawLine
   METHOD drawLines5
   METHOD drawLines6
   METHOD drawLines7
   METHOD drawLines8
   METHOD drawLines
   METHOD drawPath
   METHOD drawPicture1
   METHOD drawPicture2
   METHOD drawPicture3
   METHOD drawPicture
   METHOD drawPie1
   METHOD drawPie2
   METHOD drawPie3
   METHOD drawPie
   METHOD drawPixmap1
   METHOD drawPixmap2
   METHOD drawPixmap3
   METHOD drawPixmap4
   METHOD drawPixmap5
   METHOD drawPixmap6
   METHOD drawPixmap7
   METHOD drawPixmap8
   METHOD drawPixmap9
   METHOD drawPixmap10
   METHOD drawPixmap11
   METHOD drawPixmap
   METHOD drawPoint1
   METHOD drawPoint2
   METHOD drawPoint3
   METHOD drawPoint
   METHOD drawPoints3
   METHOD drawPoints4
   METHOD drawPoints
   METHOD drawPolygon3
   METHOD drawPolygon4
   METHOD drawPolygon
   METHOD drawPolyline3
   METHOD drawPolyline4
   METHOD drawPolyline
   METHOD drawRect1
   METHOD drawRect2
   METHOD drawRect3
   METHOD drawRect
   METHOD drawRects3
   METHOD drawRects4
   METHOD drawRects
   METHOD drawRoundedRect1
   METHOD drawRoundedRect2
   METHOD drawRoundedRect3
   METHOD drawRoundedRect
   METHOD drawStaticText1
   METHOD drawStaticText2
   METHOD drawStaticText3
   METHOD drawStaticText
   METHOD drawText1
   METHOD drawText2
   METHOD drawText3
   METHOD drawText4
   METHOD drawText5
   METHOD drawText6
   METHOD drawText7
   METHOD drawText
   METHOD drawTiledPixmap1
   METHOD drawTiledPixmap2
   METHOD drawTiledPixmap3
   METHOD drawTiledPixmap
   METHOD end
   METHOD endNativePainting
   METHOD eraseRect1
   METHOD eraseRect2
   METHOD eraseRect3
   METHOD eraseRect
   METHOD fillPath
   METHOD fillRect1
   METHOD fillRect2
   METHOD fillRect3
   METHOD fillRect4
   METHOD fillRect5
   METHOD fillRect6
   METHOD fillRect7
   METHOD fillRect8
   METHOD fillRect9
   METHOD fillRect10
   METHOD fillRect11
   METHOD fillRect12
   METHOD fillRect
   METHOD font
   METHOD fontInfo
   METHOD fontMetrics
   METHOD hasClipping
   METHOD isActive
   METHOD layoutDirection
   METHOD opacity
   METHOD paintEngine
   METHOD pen
   METHOD renderHints
   METHOD resetTransform
   METHOD restore
   METHOD rotate
   METHOD save
   METHOD scale
   METHOD setBackground
   METHOD setBackgroundMode
   METHOD setBrush1
   METHOD setBrush2
   METHOD setBrush
   METHOD setBrushOrigin1
   METHOD setBrushOrigin2
   METHOD setBrushOrigin3
   METHOD setBrushOrigin
   METHOD setClipPath
   METHOD setClipRect1
   METHOD setClipRect2
   METHOD setClipRect3
   METHOD setClipRect
   METHOD setClipRegion
   METHOD setClipping
   METHOD setCompositionMode
   METHOD setFont
   METHOD setLayoutDirection
   METHOD setOpacity
   METHOD setPen1
   METHOD setPen2
   METHOD setPen3
   METHOD setPen
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setTransform
   METHOD setViewTransformEnabled
   METHOD setViewport1
   METHOD setViewport2
   METHOD setViewport
   METHOD setWindow1
   METHOD setWindow2
   METHOD setWindow
   METHOD setWorldMatrixEnabled
   METHOD setWorldTransform
   METHOD shear
   METHOD strokePath
   METHOD testRenderHint
   METHOD transform
   METHOD translate1
   METHOD translate2
   METHOD translate3
   METHOD translate
   METHOD viewTransformEnabled
   METHOD viewport
   METHOD window
   METHOD worldMatrixEnabled
   METHOD worldTransform
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPainter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPainter>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPainter>
#endif
#endif

/*
QPainter ()
*/
HB_FUNC_STATIC( QPAINTER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPainter * o = new QPainter (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPainter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPainter ( QPaintDevice * device )
*/
HB_FUNC_STATIC( QPAINTER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPaintDevice * par1 = (QPaintDevice *) _qtxhb_itemGetPtr(1);
  QPainter * o = new QPainter ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPainter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QPainter ()
//[2]QPainter ( QPaintDevice * device )

HB_FUNC_STATIC( QPAINTER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAINTER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAINTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPainter * obj = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QBrush & background () const
*/
HB_FUNC_STATIC( QPAINTER_BACKGROUND )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QBrush * ptr = &obj->background (  );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}


/*
Qt::BGMode backgroundMode () const
*/
HB_FUNC_STATIC( QPAINTER_BACKGROUNDMODE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->backgroundMode (  ) );
  }
}


/*
bool begin ( QPaintDevice * device )
*/
HB_FUNC_STATIC( QPAINTER_BEGIN )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * par1 = (QPaintDevice *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->begin ( par1 ) );
  }
}


/*
void beginNativePainting ()
*/
HB_FUNC_STATIC( QPAINTER_BEGINNATIVEPAINTING )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginNativePainting (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRectF boundingRect ( const QRectF & rectangle, int flags, const QString & text )
*/
HB_FUNC_STATIC( QPAINTER_BOUNDINGRECT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QString par3 = QLatin1String( hb_parc(3) );
    QRectF * ptr = new QRectF( obj->boundingRect ( *par1, (int) hb_parni(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRect boundingRect ( const QRect & rectangle, int flags, const QString & text )
*/
HB_FUNC_STATIC( QPAINTER_BOUNDINGRECT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QString par3 = QLatin1String( hb_parc(3) );
    QRect * ptr = new QRect( obj->boundingRect ( *par1, (int) hb_parni(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect boundingRect ( int x, int y, int w, int h, int flags, const QString & text )
*/
HB_FUNC_STATIC( QPAINTER_BOUNDINGRECT3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par6 = QLatin1String( hb_parc(6) );
    QRect * ptr = new QRect( obj->boundingRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5), par6 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF boundingRect ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )
*/
HB_FUNC_STATIC( QPAINTER_BOUNDINGRECT4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QTextOption par3 = ISNIL(3)? QTextOption() : *(QTextOption *) _qtxhb_itemGetPtr(3);
    QRectF * ptr = new QRectF( obj->boundingRect ( *par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


//[1]QRectF boundingRect ( const QRectF & rectangle, int flags, const QString & text )
//[2]QRect boundingRect ( const QRect & rectangle, int flags, const QString & text )
//[3]QRect boundingRect ( int x, int y, int w, int h, int flags, const QString & text )
//[4]QRectF boundingRect ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )

HB_FUNC_STATIC( QPAINTER_BOUNDINGRECT )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QPAINTER_BOUNDINGRECT1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QPAINTER_BOUNDINGRECT2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) )
  {
    HB_FUNC_EXEC( QPAINTER_BOUNDINGRECT3 );
  }
  else if( ISBETWEEN(2,3) && ISQRECTF(1) && ISCHAR(2) && (ISOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPAINTER_BOUNDINGRECT4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QBrush & brush () const
*/
HB_FUNC_STATIC( QPAINTER_BRUSH )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QBrush * ptr = &obj->brush (  );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}


/*
QPoint brushOrigin () const
*/
HB_FUNC_STATIC( QPAINTER_BRUSHORIGIN )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->brushOrigin (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPainterPath clipPath () const
*/
HB_FUNC_STATIC( QPAINTER_CLIPPATH )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->clipPath (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
QRegion clipRegion () const
*/
HB_FUNC_STATIC( QPAINTER_CLIPREGION )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->clipRegion (  ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QTransform combinedTransform () const
*/
HB_FUNC_STATIC( QPAINTER_COMBINEDTRANSFORM )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->combinedTransform (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
CompositionMode compositionMode () const
*/
HB_FUNC_STATIC( QPAINTER_COMPOSITIONMODE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->compositionMode (  ) );
  }
}


/*
QPaintDevice * device () const
*/
HB_FUNC_STATIC( QPAINTER_DEVICE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}


/*
const QTransform & deviceTransform () const
*/
HB_FUNC_STATIC( QPAINTER_DEVICETRANSFORM )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTransform * ptr = &obj->deviceTransform (  );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}


/*
void drawArc ( const QRectF & rectangle, int startAngle, int spanAngle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWARC1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->drawArc ( *par1, (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawArc ( const QRect & rectangle, int startAngle, int spanAngle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWARC2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->drawArc ( *par1, (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawArc ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWARC3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawArc ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5), (int) hb_parni(6) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawArc ( const QRectF & rectangle, int startAngle, int spanAngle )
//[2]void drawArc ( const QRect & rectangle, int startAngle, int spanAngle )
//[3]void drawArc ( int x, int y, int width, int height, int startAngle, int spanAngle )

HB_FUNC_STATIC( QPAINTER_DRAWARC )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWARC1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWARC2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWARC3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawChord ( const QRectF & rectangle, int startAngle, int spanAngle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWCHORD1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->drawChord ( *par1, (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawChord ( const QRect & rectangle, int startAngle, int spanAngle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWCHORD2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->drawChord ( *par1, (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawChord ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWCHORD3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawChord ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5), (int) hb_parni(6) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawChord ( const QRectF & rectangle, int startAngle, int spanAngle )
//[2]void drawChord ( const QRect & rectangle, int startAngle, int spanAngle )
//[3]void drawChord ( int x, int y, int width, int height, int startAngle, int spanAngle )

HB_FUNC_STATIC( QPAINTER_DRAWCHORD )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCHORD1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCHORD2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCHORD3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawConvexPolygon ( const QPolygonF & polygon )
*/
HB_FUNC_STATIC( QPAINTER_DRAWCONVEXPOLYGON3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qtxhb_itemGetPtr(1);
    obj->drawConvexPolygon ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawConvexPolygon ( const QPolygon & polygon )
*/
HB_FUNC_STATIC( QPAINTER_DRAWCONVEXPOLYGON4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qtxhb_itemGetPtr(1);
    obj->drawConvexPolygon ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawConvexPolygon ( const QPointF * points, int pointCount )
//[2]void drawConvexPolygon ( const QPoint * points, int pointCount )
//[3]void drawConvexPolygon ( const QPolygonF & polygon )
//[4]void drawConvexPolygon ( const QPolygon & polygon )

HB_FUNC_STATIC( QPAINTER_DRAWCONVEXPOLYGON )
{
  if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCONVEXPOLYGON3 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCONVEXPOLYGON4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawEllipse ( const QRectF & rectangle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWELLIPSE1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->drawEllipse ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawEllipse ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWELLIPSE2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->drawEllipse ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawEllipse ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QPAINTER_DRAWELLIPSE3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawEllipse ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawEllipse ( const QPointF & center, qreal rx, qreal ry )
*/
HB_FUNC_STATIC( QPAINTER_DRAWELLIPSE4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->drawEllipse ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawEllipse ( const QPoint & center, int rx, int ry )
*/
HB_FUNC_STATIC( QPAINTER_DRAWELLIPSE5 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    obj->drawEllipse ( *par1, (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawEllipse ( const QRectF & rectangle )
//[2]void drawEllipse ( const QRect & rectangle )
//[3]void drawEllipse ( int x, int y, int width, int height )
//[4]void drawEllipse ( const QPointF & center, qreal rx, qreal ry )
//[5]void drawEllipse ( const QPoint & center, int rx, int ry )

HB_FUNC_STATIC( QPAINTER_DRAWELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE3 );
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE4 );
  }
  else if( ISNUMPAR(3) && ISQPOINT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawImage ( const QRectF & target, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPAINTER_DRAWIMAGE1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QImage * par2 = (QImage *) _qtxhb_itemGetPtr(2);
    QRectF * par3 = (QRectF *) _qtxhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *par1, *par2, *par3,  (Qt::ImageConversionFlags) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QRect & target, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPAINTER_DRAWIMAGE2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QImage * par2 = (QImage *) _qtxhb_itemGetPtr(2);
    QRect * par3 = (QRect *) _qtxhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *par1, *par2, *par3,  (Qt::ImageConversionFlags) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QPointF & point, const QImage & image )
*/
HB_FUNC_STATIC( QPAINTER_DRAWIMAGE3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    QImage * par2 = (QImage *) _qtxhb_itemGetPtr(2);
    obj->drawImage ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QPoint & point, const QImage & image )
*/
HB_FUNC_STATIC( QPAINTER_DRAWIMAGE4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QImage * par2 = (QImage *) _qtxhb_itemGetPtr(2);
    obj->drawImage ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QPointF & point, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPAINTER_DRAWIMAGE5 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    QImage * par2 = (QImage *) _qtxhb_itemGetPtr(2);
    QRectF * par3 = (QRectF *) _qtxhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *par1, *par2, *par3,  (Qt::ImageConversionFlags) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QPoint & point, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPAINTER_DRAWIMAGE6 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QImage * par2 = (QImage *) _qtxhb_itemGetPtr(2);
    QRect * par3 = (QRect *) _qtxhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *par1, *par2, *par3,  (Qt::ImageConversionFlags) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QRectF & rectangle, const QImage & image )
*/
HB_FUNC_STATIC( QPAINTER_DRAWIMAGE7 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QImage * par2 = (QImage *) _qtxhb_itemGetPtr(2);
    obj->drawImage ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QRect & rectangle, const QImage & image )
*/
HB_FUNC_STATIC( QPAINTER_DRAWIMAGE8 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QImage * par2 = (QImage *) _qtxhb_itemGetPtr(2);
    obj->drawImage ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( int x, int y, const QImage & image, int sx = 0, int sy = 0, int sw = -1, int sh = -1, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPAINTER_DRAWIMAGE9 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * par3 = (QImage *) _qtxhb_itemGetPtr(3);
    int par8 = ISNIL(8)? (int) Qt::AutoColor : hb_parni(8);
    obj->drawImage ( (int) hb_parni(1), (int) hb_parni(2), *par3, (int) ISNIL(4)? 0 : hb_parni(4), (int) ISNIL(5)? 0 : hb_parni(5), (int) ISNIL(6)? -1 : hb_parni(6), (int) ISNIL(7)? -1 : hb_parni(7),  (Qt::ImageConversionFlags) par8 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawImage ( const QRectF & target, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[2]void drawImage ( const QRect & target, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[3]void drawImage ( const QPointF & point, const QImage & image )
//[4]void drawImage ( const QPoint & point, const QImage & image )
//[5]void drawImage ( const QPointF & point, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[6]void drawImage ( const QPoint & point, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[7]void drawImage ( const QRectF & rectangle, const QImage & image )
//[8]void drawImage ( const QRect & rectangle, const QImage & image )
//[9]void drawImage ( int x, int y, const QImage & image, int sx = 0, int sy = 0, int sw = -1, int sh = -1, Qt::ImageConversionFlags flags = Qt::AutoColor )

HB_FUNC_STATIC( QPAINTER_DRAWIMAGE )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISQIMAGE(2) && ISQRECTF(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE1 );
  }
  else if( ISBETWEEN(3,4) && ISQRECT(1) && ISQIMAGE(2) && ISQRECT(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE2 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQIMAGE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE3 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQIMAGE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE4 );
  }
  else if( ISBETWEEN(3,4) && ISQPOINTF(1) && ISQIMAGE(2) && ISQRECTF(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE5 );
  }
  else if( ISBETWEEN(3,4) && ISQPOINT(1) && ISQIMAGE(2) && ISQRECT(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE6 );
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISQIMAGE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE7 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISQIMAGE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE8 );
  }
  else if( ISBETWEEN(3,8) && ISNUM(1) && ISNUM(2) && ISQIMAGE(3) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) && (ISNUM(7)||ISNIL(7)) && (ISNUM(8)||ISNIL(8)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE9 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawLine ( const QLineF & line )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINE1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLineF * par1 = (QLineF *) _qtxhb_itemGetPtr(1);
    obj->drawLine ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLine ( const QLine & line )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINE2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLine * par1 = (QLine *) _qtxhb_itemGetPtr(1);
    obj->drawLine ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLine ( const QPoint & p1, const QPoint & p2 )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINE3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QPoint * par2 = (QPoint *) _qtxhb_itemGetPtr(2);
    obj->drawLine ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLine ( const QPointF & p1, const QPointF & p2 )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINE4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
    obj->drawLine ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLine ( int x1, int y1, int x2, int y2 )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINE5 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawLine ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawLine ( const QLineF & line )
//[2]void drawLine ( const QLine & line )
//[3]void drawLine ( const QPoint & p1, const QPoint & p2 )
//[4]void drawLine ( const QPointF & p1, const QPointF & p2 )
//[5]void drawLine ( int x1, int y1, int x2, int y2 )

HB_FUNC_STATIC( QPAINTER_DRAWLINE )
{
  if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE1 );
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE2 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE3 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE4 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawLines ( const QVector<QPointF> & pointPairs )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES5 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QVector<QPointF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->drawLines ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLines ( const QVector<QPoint> & pointPairs )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES6 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QVector<QPoint> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->drawLines ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLines ( const QVector<QLineF> & lines )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES7 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QVector<QLineF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->drawLines ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLines ( const QVector<QLine> & lines )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES8 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QVector<QLine> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QLine *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->drawLines ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawLines ( const QLineF * lines, int lineCount )
//[2]void drawLines ( const QLine * lines, int lineCount )
//[3]void drawLines ( const QPointF * pointPairs, int lineCount )
//[4]void drawLines ( const QPoint * pointPairs, int lineCount )
//[5]void drawLines ( const QVector<QPointF> & pointPairs )
//[6]void drawLines ( const QVector<QPoint> & pointPairs )
//[7]void drawLines ( const QVector<QLineF> & lines )
//[8]void drawLines ( const QVector<QLine> & lines )

// TODO: implementar
HB_FUNC_STATIC( QPAINTER_DRAWLINES )
{
}

/*
void drawPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPATH )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
    obj->drawPath ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void drawPicture ( const QPointF & point, const QPicture & picture )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPICTURE1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    QPicture * par2 = (QPicture *) _qtxhb_itemGetPtr(2);
    obj->drawPicture ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPicture ( const QPoint & point, const QPicture & picture )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPICTURE2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QPicture * par2 = (QPicture *) _qtxhb_itemGetPtr(2);
    obj->drawPicture ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPicture ( int x, int y, const QPicture & picture )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPICTURE3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPicture * par3 = (QPicture *) _qtxhb_itemGetPtr(3);
    obj->drawPicture ( (int) hb_parni(1), (int) hb_parni(2), *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawPicture ( const QPointF & point, const QPicture & picture )
//[2]void drawPicture ( const QPoint & point, const QPicture & picture )
//[3]void drawPicture ( int x, int y, const QPicture & picture )

HB_FUNC_STATIC( QPAINTER_DRAWPICTURE )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPICTURE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPICTURE1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPICTURE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPICTURE2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQPICTURE(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPICTURE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPie ( const QRectF & rectangle, int startAngle, int spanAngle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIE1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->drawPie ( *par1, (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPie ( const QRect & rectangle, int startAngle, int spanAngle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIE2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->drawPie ( *par1, (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPie ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIE3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawPie ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5), (int) hb_parni(6) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawPie ( const QRectF & rectangle, int startAngle, int spanAngle )
//[2]void drawPie ( const QRect & rectangle, int startAngle, int spanAngle )
//[3]void drawPie ( int x, int y, int width, int height, int startAngle, int spanAngle )

HB_FUNC_STATIC( QPAINTER_DRAWPIE )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIE1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIE2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPixmap ( const QRectF & target, const QPixmap & pixmap, const QRectF & source )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    QRectF * par3 = (QRectF *) _qtxhb_itemGetPtr(3);
    obj->drawPixmap ( *par1, *par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QRect & target, const QPixmap & pixmap, const QRect & source )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    QRect * par3 = (QRect *) _qtxhb_itemGetPtr(3);
    obj->drawPixmap ( *par1, *par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QPointF & point, const QPixmap & pixmap, const QRectF & source )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    QRectF * par3 = (QRectF *) _qtxhb_itemGetPtr(3);
    obj->drawPixmap ( *par1, *par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QPoint & point, const QPixmap & pixmap, const QRect & source )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    QRect * par3 = (QRect *) _qtxhb_itemGetPtr(3);
    obj->drawPixmap ( *par1, *par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QPointF & point, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP5 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    obj->drawPixmap ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QPoint & point, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP6 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    obj->drawPixmap ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( int x, int y, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP7 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par3 = (QPixmap *) _qtxhb_itemGetPtr(3);
    obj->drawPixmap ( (int) hb_parni(1), (int) hb_parni(2), *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QRect & rectangle, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP8 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    obj->drawPixmap ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( int x, int y, int width, int height, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP9 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par5 = (QPixmap *) _qtxhb_itemGetPtr(5);
    obj->drawPixmap ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), *par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( int x, int y, int w, int h, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP10 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par5 = (QPixmap *) _qtxhb_itemGetPtr(5);
    obj->drawPixmap ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), *par5, (int) hb_parni(6), (int) hb_parni(7), (int) hb_parni(8), (int) hb_parni(9) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( int x, int y, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP11 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par3 = (QPixmap *) _qtxhb_itemGetPtr(3);
    obj->drawPixmap ( (int) hb_parni(1), (int) hb_parni(2), *par3, (int) hb_parni(4), (int) hb_parni(5), (int) hb_parni(6), (int) hb_parni(7) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[ 1]void drawPixmap ( const QRectF & target, const QPixmap & pixmap, const QRectF & source )
//[ 2]void drawPixmap ( const QRect & target, const QPixmap & pixmap, const QRect & source )
//[ 3]void drawPixmap ( const QPointF & point, const QPixmap & pixmap, const QRectF & source )
//[ 4]void drawPixmap ( const QPoint & point, const QPixmap & pixmap, const QRect & source )
//[ 5]void drawPixmap ( const QPointF & point, const QPixmap & pixmap )
//[ 6]void drawPixmap ( const QPoint & point, const QPixmap & pixmap )
//[ 7]void drawPixmap ( int x, int y, const QPixmap & pixmap )
//[ 8]void drawPixmap ( const QRect & rectangle, const QPixmap & pixmap )
//[ 9]void drawPixmap ( int x, int y, int width, int height, const QPixmap & pixmap )
//[10]void drawPixmap ( int x, int y, int w, int h, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
//[11]void drawPixmap ( int x, int y, const QPixmap & pixmap, int sx, int sy, int sw, int sh )

HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISQPIXMAP(2) && ISQRECTF(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISQPIXMAP(2) && ISQRECT(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP2 );
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISQPIXMAP(2) && ISQRECTF(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP3 );
  }
  else if( ISNUMPAR(3) && ISQPOINT(1) && ISQPIXMAP(2) && ISQRECT(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP4 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP5 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP6 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQPIXMAP(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP7 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP8 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQPIXMAP(5) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP9 );
  }
  else if( ISNUMPAR(9) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQPIXMAP(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP10 );
  }
  else if( ISNUMPAR(7) && ISNUM(1) && ISNUM(2) && ISQPIXMAP(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP11 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
void drawPoint ( const QPointF & position )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOINT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->drawPoint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPoint ( const QPoint & position )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOINT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    obj->drawPoint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPoint ( int x, int y )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOINT3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawPoint ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawPoint ( const QPointF & position )
//[2]void drawPoint ( const QPoint & position )
//[3]void drawPoint ( int x, int y )

HB_FUNC_STATIC( QPAINTER_DRAWPOINT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINT1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINT2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPoints ( const QPolygonF & points )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOINTS3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qtxhb_itemGetPtr(1);
    obj->drawPoints ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPoints ( const QPolygon & points )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOINTS4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qtxhb_itemGetPtr(1);
    obj->drawPoints ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawPoints ( const QPointF * points, int pointCount )
//[2]void drawPoints ( const QPoint * points, int pointCount )
//[3]void drawPoints ( const QPolygonF & points )
//[4]void drawPoints ( const QPolygon & points )

HB_FUNC_STATIC( QPAINTER_DRAWPOINTS )
{
  if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINTS3 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINTS4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPolygon ( const QPolygonF & points, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOLYGON3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::OddEvenFill : hb_parni(2);
    obj->drawPolygon ( *par1,  (Qt::FillRule) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPolygon ( const QPolygon & points, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOLYGON4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::OddEvenFill : hb_parni(2);
    obj->drawPolygon ( *par1,  (Qt::FillRule) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawPolygon ( const QPointF * points, int pointCount, Qt::FillRule fillRule = Qt::OddEvenFill )
//[2]void drawPolygon ( const QPoint * points, int pointCount, Qt::FillRule fillRule = Qt::OddEvenFill )
//[3]void drawPolygon ( const QPolygonF & points, Qt::FillRule fillRule = Qt::OddEvenFill )
//[4]void drawPolygon ( const QPolygon & points, Qt::FillRule fillRule = Qt::OddEvenFill )

HB_FUNC_STATIC( QPAINTER_DRAWPOLYGON )
{
  if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOLYGON3 );
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOLYGON4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPolyline ( const QPolygonF & points )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOLYLINE3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qtxhb_itemGetPtr(1);
    obj->drawPolyline ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPolyline ( const QPolygon & points )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOLYLINE4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qtxhb_itemGetPtr(1);
    obj->drawPolyline ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawPolyline ( const QPointF * points, int pointCount )
//[2]void drawPolyline ( const QPoint * points, int pointCount )
//[3]void drawPolyline ( const QPolygonF & points )
//[4]void drawPolyline ( const QPolygon & points )

HB_FUNC_STATIC( QPAINTER_DRAWPOLYLINE )
{
  if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOLYLINE3 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOLYLINE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawRect ( const QRectF & rectangle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWRECT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->drawRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRect ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QPAINTER_DRAWRECT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->drawRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRect ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QPAINTER_DRAWRECT3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawRect ( const QRectF & rectangle )
//[2]void drawRect ( const QRect & rectangle )
//[3]void drawRect ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_DRAWRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWRECT1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWRECT2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWRECT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawRects ( const QVector<QRectF> & rectangles )
*/
HB_FUNC_STATIC( QPAINTER_DRAWRECTS3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QVector<QRectF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->drawRects ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRects ( const QVector<QRect> & rectangles )
*/
HB_FUNC_STATIC( QPAINTER_DRAWRECTS4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QVector<QRect> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QRect *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->drawRects ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawRects ( const QRectF * rectangles, int rectCount )
//[2]void drawRects ( const QRect * rectangles, int rectCount )
//[3]void drawRects ( const QVector<QRectF> & rectangles )
//[4]void drawRects ( const QVector<QRect> & rectangles )

HB_FUNC_STATIC( QPAINTER_DRAWRECTS )
{
}

/*
void drawRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
HB_FUNC_STATIC( QPAINTER_DRAWROUNDEDRECT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    int par4 = ISNIL(4)? (int) Qt::AbsoluteSize : hb_parni(4);
    obj->drawRoundedRect ( *par1, par2, par3,  (Qt::SizeMode) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRoundedRect ( const QRect & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
HB_FUNC_STATIC( QPAINTER_DRAWROUNDEDRECT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    int par4 = ISNIL(4)? (int) Qt::AbsoluteSize : hb_parni(4);
    obj->drawRoundedRect ( *par1, par2, par3,  (Qt::SizeMode) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRoundedRect ( int x, int y, int w, int h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
HB_FUNC_STATIC( QPAINTER_DRAWROUNDEDRECT3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par5 = hb_parnd(5);
    qreal par6 = hb_parnd(6);
    int par7 = ISNIL(7)? (int) Qt::AbsoluteSize : hb_parni(7);
    obj->drawRoundedRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), par5, par6,  (Qt::SizeMode) par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[2]void drawRoundedRect ( const QRect & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[3]void drawRoundedRect ( int x, int y, int w, int h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )

HB_FUNC_STATIC( QPAINTER_DRAWROUNDEDRECT )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWROUNDEDRECT1 );
  }
  else if( ISBETWEEN(3,4) && ISQRECT(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWROUNDEDRECT2 );
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISNUM(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWROUNDEDRECT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawStaticText ( const QPointF & topLeftPosition, const QStaticText & staticText )
*/
HB_FUNC_STATIC( QPAINTER_DRAWSTATICTEXT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    QStaticText * par2 = (QStaticText *) _qtxhb_itemGetPtr(2);
    obj->drawStaticText ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawStaticText ( const QPoint & topLeftPosition, const QStaticText & staticText )
*/
HB_FUNC_STATIC( QPAINTER_DRAWSTATICTEXT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QStaticText * par2 = (QStaticText *) _qtxhb_itemGetPtr(2);
    obj->drawStaticText ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawStaticText ( int left, int top, const QStaticText & staticText )
*/
HB_FUNC_STATIC( QPAINTER_DRAWSTATICTEXT3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStaticText * par3 = (QStaticText *) _qtxhb_itemGetPtr(3);
    obj->drawStaticText ( (int) hb_parni(1), (int) hb_parni(2), *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawStaticText ( const QPointF & topLeftPosition, const QStaticText & staticText )
//[2]void drawStaticText ( const QPoint & topLeftPosition, const QStaticText & staticText )
//[3]void drawStaticText ( int left, int top, const QStaticText & staticText )

HB_FUNC_STATIC( QPAINTER_DRAWSTATICTEXT )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQSTATICTEXT(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWSTATICTEXT1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSTATICTEXT(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWSTATICTEXT2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTATICTEXT(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWSTATICTEXT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawText ( const QPointF & position, const QString & text )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTEXT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->drawText ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( const QPoint & position, const QString & text )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTEXT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->drawText ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( const QRectF & rectangle, int flags, const QString & text, QRectF * boundingRect = 0 )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTEXT3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QString par3 = QLatin1String( hb_parc(3) );
    QRectF * par4 = ISNIL(4)? 0 : (QRectF *) _qtxhb_itemGetPtr(4);
    obj->drawText ( *par1, (int) hb_parni(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( const QRect & rectangle, int flags, const QString & text, QRect * boundingRect = 0 )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTEXT4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QString par3 = QLatin1String( hb_parc(3) );
    QRect * par4 = ISNIL(4)? 0 : (QRect *) _qtxhb_itemGetPtr(4);
    obj->drawText ( *par1, (int) hb_parni(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( int x, int y, const QString & text )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTEXT5 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par3 = QLatin1String( hb_parc(3) );
    obj->drawText ( (int) hb_parni(1), (int) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( int x, int y, int width, int height, int flags, const QString & text, QRect * boundingRect = 0 )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTEXT6 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par6 = QLatin1String( hb_parc(6) );
    QRect * par7 = ISNIL(7)? 0 : (QRect *) _qtxhb_itemGetPtr(7);
    obj->drawText ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5), par6, par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTEXT7 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QTextOption par3 = ISNIL(3)? QTextOption() : *(QTextOption *) _qtxhb_itemGetPtr(3);
    obj->drawText ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawText ( const QPointF & position, const QString & text )
//[2]void drawText ( const QPoint & position, const QString & text )
//[3]void drawText ( const QRectF & rectangle, int flags, const QString & text, QRectF * boundingRect = 0 )
//[4]void drawText ( const QRect & rectangle, int flags, const QString & text, QRect * boundingRect = 0 )
//[5]void drawText ( int x, int y, const QString & text )
//[6]void drawText ( int x, int y, int width, int height, int flags, const QString & text, QRect * boundingRect = 0 )
//[7]void drawText ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )

HB_FUNC_STATIC( QPAINTER_DRAWTEXT )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT2 );
  }
  else if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) && (ISQRECTF(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT3 );
  }
  else if( ISBETWEEN(3,4) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) && (ISQRECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT4 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT5 );
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) && (ISQRECT(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT6 );
  }
  else if( ISBETWEEN(2,3) && ISQRECTF(1) && ISCHAR(2) && (ISQTEXTOPTION(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawTiledPixmap ( const QRectF & rectangle, const QPixmap & pixmap, const QPointF & position = QPointF() )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTILEDPIXMAP1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    QPointF par3 = ISNIL(3)? QPointF() : *(QPointF *) _qtxhb_itemGetPtr(3);
    obj->drawTiledPixmap ( *par1, *par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTiledPixmap ( const QRect & rectangle, const QPixmap & pixmap, const QPoint & position = QPoint() )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTILEDPIXMAP2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) _qtxhb_itemGetPtr(3);
    obj->drawTiledPixmap ( *par1, *par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTiledPixmap ( int x, int y, int width, int height, const QPixmap & pixmap, int sx = 0, int sy = 0 )
*/
HB_FUNC_STATIC( QPAINTER_DRAWTILEDPIXMAP3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par5 = (QPixmap *) _qtxhb_itemGetPtr(5);
    obj->drawTiledPixmap ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), *par5, (int) ISNIL(6)? 0 : hb_parni(6), (int) ISNIL(7)? 0 : hb_parni(7) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawTiledPixmap ( const QRectF & rectangle, const QPixmap & pixmap, const QPointF & position = QPointF() )
//[2]void drawTiledPixmap ( const QRect & rectangle, const QPixmap & pixmap, const QPoint & position = QPoint() )
//[3]void drawTiledPixmap ( int x, int y, int width, int height, const QPixmap & pixmap, int sx = 0, int sy = 0 )

HB_FUNC_STATIC( QPAINTER_DRAWTILEDPIXMAP )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISQPIXMAP(2) && (ISQPOINTF(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTILEDPIXMAP1 );
  }
  else if( ISBETWEEN(2,3) && ISQRECT(1) && ISQPIXMAP(2) && (ISQPOINT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTILEDPIXMAP2 );
  }
  else if( ISBETWEEN(5,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQPIXMAP(5) && (ISNUM(6)||ISNIL(6)) && (ISNUM(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTILEDPIXMAP3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool end ()
*/
HB_FUNC_STATIC( QPAINTER_END )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->end (  ) );
  }
}


/*
void endNativePainting ()
*/
HB_FUNC_STATIC( QPAINTER_ENDNATIVEPAINTING )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endNativePainting (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void eraseRect ( const QRectF & rectangle )
*/
HB_FUNC_STATIC( QPAINTER_ERASERECT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->eraseRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void eraseRect ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QPAINTER_ERASERECT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->eraseRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void eraseRect ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QPAINTER_ERASERECT3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->eraseRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//void eraseRect ( const QRectF & rectangle )
//void eraseRect ( const QRect & rectangle )
//void eraseRect ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_ERASERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_ERASERECT1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_ERASERECT2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_ERASERECT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void fillPath ( const QPainterPath & path, const QBrush & brush )
*/
HB_FUNC_STATIC( QPAINTER_FILLPATH )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
    QBrush * par2 = (QBrush *) _qtxhb_itemGetPtr(2);
    obj->fillPath ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void fillRect ( const QRectF & rectangle, const QBrush & brush )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QBrush * par2 = (QBrush *) _qtxhb_itemGetPtr(2);
    obj->fillRect ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( int x, int y, int width, int height, Qt::BrushStyle style )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par5 = hb_parni(5);
    obj->fillRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4),  (Qt::BrushStyle) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRect & rectangle, Qt::BrushStyle style )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->fillRect ( *par1,  (Qt::BrushStyle) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRectF & rectangle, Qt::BrushStyle style )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT4 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->fillRect ( *par1,  (Qt::BrushStyle) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRect & rectangle, const QBrush & brush )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT5 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QBrush  * par2 = (QBrush  *) _qtxhb_itemGetPtr(2);
    obj->fillRect ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRect & rectangle, const QColor & color )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT6 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) _qtxhb_itemGetPtr(2) : QColor(hb_parc(2));
    obj->fillRect ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRectF & rectangle, const QColor & color )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT7 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) _qtxhb_itemGetPtr(2) : QColor(hb_parc(2));
    obj->fillRect ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( int x, int y, int width, int height, const QBrush & brush )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT8 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * par5 = (QBrush *) _qtxhb_itemGetPtr(5);
    obj->fillRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), *par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( int x, int y, int width, int height, const QColor & color )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT9 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par5 = ISOBJECT(5)? *(QColor *) _qtxhb_itemGetPtr(5) : QColor(hb_parc(5));
    obj->fillRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( int x, int y, int width, int height, Qt::GlobalColor color )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT10 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par5 = hb_parni(5);
    obj->fillRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4),  (Qt::GlobalColor) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRect & rectangle, Qt::GlobalColor color )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT11 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->fillRect ( *par1,  (Qt::GlobalColor) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRectF & rectangle, Qt::GlobalColor color )
*/
HB_FUNC_STATIC( QPAINTER_FILLRECT12 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->fillRect ( *par1,  (Qt::GlobalColor) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[ 1]void fillRect ( const QRectF & rectangle, const QBrush & brush )
//[ 2]void fillRect ( int x, int y, int width, int height, Qt::BrushStyle style )
//[ 3]void fillRect ( const QRect & rectangle, Qt::BrushStyle style )
//[ 4]void fillRect ( const QRectF & rectangle, Qt::BrushStyle style )
//[ 5]void fillRect ( const QRect & rectangle, const QBrush & brush )
//[ 6]void fillRect ( const QRect & rectangle, const QColor & color )
//[ 7]void fillRect ( const QRectF & rectangle, const QColor & color )
//[ 8]void fillRect ( int x, int y, int width, int height, const QBrush & brush )
//[ 9]void fillRect ( int x, int y, int width, int height, const QColor & color )
//[10]void fillRect ( int x, int y, int width, int height, Qt::GlobalColor color )
//[11]void fillRect ( const QRect & rectangle, Qt::GlobalColor color )
//[12]void fillRect ( const QRectF & rectangle, Qt::GlobalColor color )

HB_FUNC_STATIC( QPAINTER_FILLRECT )
{
  if( ISNUMPAR(2) && ISQRECTF(1) && ISQBRUSH(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT1 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT2 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT3 );
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT4 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISQBRUSH(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT5 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT6 );
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT7 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQBRUSH(5) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT8 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQCOLOR(5)||ISCHAR(5)) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT9 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT10 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT11 );
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT12 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QFont & font () const
*/
HB_FUNC_STATIC( QPAINTER_FONT )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QFont * ptr = &obj->font (  );
    _qt4xhb_createReturnClass ( ptr, "QFONT" );
  }
}


/*
QFontInfo fontInfo () const
*/
HB_FUNC_STATIC( QPAINTER_FONTINFO )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFontInfo * ptr = new QFontInfo( obj->fontInfo (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONTINFO", true );
  }
}


/*
QFontMetrics fontMetrics () const
*/
HB_FUNC_STATIC( QPAINTER_FONTMETRICS )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFontMetrics * ptr = new QFontMetrics( obj->fontMetrics (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
  }
}


/*
bool hasClipping () const
*/
HB_FUNC_STATIC( QPAINTER_HASCLIPPING )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasClipping (  ) );
  }
}



/*
bool isActive () const
*/
HB_FUNC_STATIC( QPAINTER_ISACTIVE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
Qt::LayoutDirection layoutDirection () const
*/
HB_FUNC_STATIC( QPAINTER_LAYOUTDIRECTION )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->layoutDirection (  ) );
  }
}


/*
qreal opacity () const
*/
HB_FUNC_STATIC( QPAINTER_OPACITY )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->opacity (  ) );
  }
}


/*
QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QPAINTER_PAINTENGINE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine (  );
    _qt4xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}


/*
const QPen & pen () const
*/
HB_FUNC_STATIC( QPAINTER_PEN )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPen * ptr = &obj->pen (  );
    _qt4xhb_createReturnClass ( ptr, "QPEN" );
  }
}


/*
RenderHints renderHints () const
*/
HB_FUNC_STATIC( QPAINTER_RENDERHINTS )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderHints (  ) );
  }
}


/*
void resetTransform ()
*/
HB_FUNC_STATIC( QPAINTER_RESETTRANSFORM )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetTransform (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void restore ()
*/
HB_FUNC_STATIC( QPAINTER_RESTORE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->restore (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void rotate ( qreal angle )
*/
HB_FUNC_STATIC( QPAINTER_ROTATE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->rotate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void save ()
*/
HB_FUNC_STATIC( QPAINTER_SAVE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->save (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scale ( qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QPAINTER_SCALE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->scale ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBackground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QPAINTER_SETBACKGROUND )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * par1 = (QBrush *) _qtxhb_itemGetPtr(1);
    obj->setBackground ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBackgroundMode ( Qt::BGMode mode )
*/
HB_FUNC_STATIC( QPAINTER_SETBACKGROUNDMODE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBackgroundMode (  (Qt::BGMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QPAINTER_SETBRUSH1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * par1 = (QBrush *) _qtxhb_itemGetPtr(1);
    obj->setBrush ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBrush ( Qt::BrushStyle style )
*/
HB_FUNC_STATIC( QPAINTER_SETBRUSH2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBrush (  (Qt::BrushStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setBrush ( const QBrush & brush )
//[2]void setBrush ( Qt::BrushStyle style )

HB_FUNC_STATIC( QPAINTER_SETBRUSH )
{
  if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSH1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setBrushOrigin ( const QPointF & position )
*/
HB_FUNC_STATIC( QPAINTER_SETBRUSHORIGIN1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->setBrushOrigin ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBrushOrigin ( const QPoint & position )
*/
HB_FUNC_STATIC( QPAINTER_SETBRUSHORIGIN2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    obj->setBrushOrigin ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBrushOrigin ( int x, int y )
*/
HB_FUNC_STATIC( QPAINTER_SETBRUSHORIGIN3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBrushOrigin ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setBrushOrigin ( const QPointF & position )
//[2]void setBrushOrigin ( const QPoint & position )
//[3]void setBrushOrigin ( int x, int y )

HB_FUNC_STATIC( QPAINTER_SETBRUSHORIGIN )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSHORIGIN1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSHORIGIN2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSHORIGIN3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setClipPath ( const QPainterPath & path, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
HB_FUNC_STATIC( QPAINTER_SETCLIPPATH )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::ReplaceClip : hb_parni(2);
    obj->setClipPath ( *par1,  (Qt::ClipOperation) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setClipRect ( const QRectF & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
HB_FUNC_STATIC( QPAINTER_SETCLIPRECT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::ReplaceClip : hb_parni(2);
    obj->setClipRect ( *par1,  (Qt::ClipOperation) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setClipRect ( int x, int y, int width, int height, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
HB_FUNC_STATIC( QPAINTER_SETCLIPRECT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par5 = ISNIL(5)? (int) Qt::ReplaceClip : hb_parni(5);
    obj->setClipRect ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4),  (Qt::ClipOperation) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setClipRect ( const QRect & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
HB_FUNC_STATIC( QPAINTER_SETCLIPRECT3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::ReplaceClip : hb_parni(2);
    obj->setClipRect ( *par1,  (Qt::ClipOperation) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setClipRect ( const QRectF & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
//[2]void setClipRect ( int x, int y, int width, int height, Qt::ClipOperation operation = Qt::ReplaceClip )
//[3]void setClipRect ( const QRect & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )

HB_FUNC_STATIC( QPAINTER_SETCLIPRECT )
{
  if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_SETCLIPRECT1 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QPAINTER_SETCLIPRECT2 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_SETCLIPRECT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setClipRegion ( const QRegion & region, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
HB_FUNC_STATIC( QPAINTER_SETCLIPREGION )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::ReplaceClip : hb_parni(2);
    obj->setClipRegion ( *par1,  (Qt::ClipOperation) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setClipping ( bool enable )
*/
HB_FUNC_STATIC( QPAINTER_SETCLIPPING )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setClipping ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCompositionMode ( CompositionMode mode )
*/
HB_FUNC_STATIC( QPAINTER_SETCOMPOSITIONMODE )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCompositionMode (  (QPainter::CompositionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QPAINTER_SETFONT )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
    obj->setFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QPAINTER_SETLAYOUTDIRECTION )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLayoutDirection (  (Qt::LayoutDirection) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpacity ( qreal opacity )
*/
HB_FUNC_STATIC( QPAINTER_SETOPACITY )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setOpacity ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QPAINTER_SETPEN1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPen * par1 = (QPen *) _qtxhb_itemGetPtr(1);
    obj->setPen ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPen ( const QColor & color )
*/
HB_FUNC_STATIC( QPAINTER_SETPEN2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qtxhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setPen ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPen ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QPAINTER_SETPEN3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPen (  (Qt::PenStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setPen ( const QPen & pen )
//[2]void setPen ( const QColor & color )
//[3]void setPen ( Qt::PenStyle style )

HB_FUNC_STATIC( QPAINTER_SETPEN )
{
  if( ISNUMPAR(1) && ISQPEN(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETPEN1 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QPAINTER_SETPEN2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETPEN3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setRenderHint ( RenderHint hint, bool on = true )
*/
HB_FUNC_STATIC( QPAINTER_SETRENDERHINT )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRenderHint (  (QPainter::RenderHint) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRenderHints ( RenderHints hints, bool on = true )
*/
HB_FUNC_STATIC( QPAINTER_SETRENDERHINTS )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRenderHints (  (QPainter::RenderHints) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTransform ( const QTransform & transform, bool combine = false )
*/
HB_FUNC_STATIC( QPAINTER_SETTRANSFORM )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * par1 = (QTransform *) _qtxhb_itemGetPtr(1);
    obj->setTransform ( *par1, (bool) ISNIL(2)? false : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewTransformEnabled ( bool enable )
*/
HB_FUNC_STATIC( QPAINTER_SETVIEWTRANSFORMENABLED )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setViewTransformEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewport ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QPAINTER_SETVIEWPORT1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->setViewport ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewport ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QPAINTER_SETVIEWPORT2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setViewport ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setViewport ( const QRect & rectangle )
//[2]void setViewport ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_SETVIEWPORT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETVIEWPORT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_SETVIEWPORT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setWindow ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QPAINTER_SETWINDOW1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->setWindow ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindow ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QPAINTER_SETWINDOW2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWindow ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setWindow ( const QRect & rectangle )
//[2]void setWindow ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_SETWINDOW )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETWINDOW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_SETWINDOW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setWorldMatrixEnabled ( bool enable )
*/
HB_FUNC_STATIC( QPAINTER_SETWORLDMATRIXENABLED )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWorldMatrixEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWorldTransform ( const QTransform & matrix, bool combine = false )
*/
HB_FUNC_STATIC( QPAINTER_SETWORLDTRANSFORM )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * par1 = (QTransform *) _qtxhb_itemGetPtr(1);
    obj->setWorldTransform ( *par1, (bool) ISNIL(2)? false : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void shear ( qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QPAINTER_SHEAR )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->shear ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void strokePath ( const QPainterPath & path, const QPen & pen )
*/
HB_FUNC_STATIC( QPAINTER_STROKEPATH )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
    QPen * par2 = (QPen *) _qtxhb_itemGetPtr(2);
    obj->strokePath ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testRenderHint ( RenderHint hint ) const
*/
HB_FUNC_STATIC( QPAINTER_TESTRENDERHINT )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testRenderHint (  (QPainter::RenderHint) par1 ) );
  }
}


/*
const QTransform & transform () const
*/
HB_FUNC_STATIC( QPAINTER_TRANSFORM )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTransform * ptr = &obj->transform (  );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}


/*
void translate ( const QPointF & offset )
*/
HB_FUNC_STATIC( QPAINTER_TRANSLATE1 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->translate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( const QPoint & offset )
*/
HB_FUNC_STATIC( QPAINTER_TRANSLATE2 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    obj->translate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QPAINTER_TRANSLATE3 )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->translate ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void translate ( const QPointF & offset )
//[2]void translate ( const QPoint & offset )
//[3]void translate ( qreal dx, qreal dy )

HB_FUNC_STATIC( QPAINTER_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_TRANSLATE2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_TRANSLATE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool viewTransformEnabled () const
*/
HB_FUNC_STATIC( QPAINTER_VIEWTRANSFORMENABLED )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->viewTransformEnabled (  ) );
  }
}


/*
QRect viewport () const
*/
HB_FUNC_STATIC( QPAINTER_VIEWPORT )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->viewport (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRect window () const
*/
HB_FUNC_STATIC( QPAINTER_WINDOW )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->window (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
bool worldMatrixEnabled () const
*/
HB_FUNC_STATIC( QPAINTER_WORLDMATRIXENABLED )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->worldMatrixEnabled (  ) );
  }
}


/*
const QTransform & worldTransform () const
*/
HB_FUNC_STATIC( QPAINTER_WORLDTRANSFORM )
{
  QPainter * obj = (QPainter *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTransform * ptr = &obj->worldTransform (  );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}



HB_FUNC_STATIC( QPAINTER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPAINTER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAINTER_NEWFROM );
}

HB_FUNC_STATIC( QPAINTER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAINTER_NEWFROM );
}

HB_FUNC_STATIC( QPAINTER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAINTER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
