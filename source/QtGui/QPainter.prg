/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
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
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD background
   METHOD backgroundMode
   METHOD begin
   METHOD beginNativePainting
   METHOD boundingRect
   METHOD brush
   METHOD brushOrigin
   METHOD clipPath
   METHOD clipRegion
   METHOD combinedTransform
   METHOD compositionMode
   METHOD device
   METHOD deviceTransform
   METHOD drawArc
   METHOD drawChord
   METHOD drawConvexPolygon3
   METHOD drawConvexPolygon4
   METHOD drawConvexPolygon
   METHOD drawEllipse
   METHOD drawImage
   METHOD drawLine
   METHOD drawLines5
   METHOD drawLines6
   METHOD drawLines7
   METHOD drawLines8
   METHOD drawLines
   METHOD drawPath
   METHOD drawPicture
   METHOD drawPie
   METHOD drawPixmap
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
   METHOD drawRect
   METHOD drawRects3
   METHOD drawRects4
   METHOD drawRects
   METHOD drawRoundedRect
   METHOD drawStaticText
   METHOD drawText
   METHOD drawTiledPixmap
   METHOD end
   METHOD endNativePainting
   METHOD eraseRect
   METHOD fillPath
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
   METHOD setBrush
   METHOD setBrushOrigin
   METHOD setClipPath
   METHOD setClipRect
   METHOD setClipRegion
   METHOD setClipping
   METHOD setCompositionMode
   METHOD setFont
   METHOD setLayoutDirection
   METHOD setOpacity
   METHOD setPen
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setTransform
   METHOD setViewTransformEnabled
   METHOD setViewport
   METHOD setWindow
   METHOD setWorldMatrixEnabled
   METHOD setWorldTransform
   METHOD shear
   METHOD strokePath
   METHOD testRenderHint
   METHOD transform
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
#include <QPainter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPainter>
#endif

/*
QPainter ()
*/
void QPainter_new1 ()
{
  QPainter * o = new QPainter ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPainter ( QPaintDevice * device )
*/
void QPainter_new2 ()
{
  QPainter * o = new QPainter ( PQPAINTDEVICE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QPainter ()
//[2]QPainter ( QPaintDevice * device )

HB_FUNC_STATIC( QPAINTER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPainter_new1();
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) ) // TODO: implementar ISQPAINTDEVICE
  {
    QPainter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAINTER_DELETE )
{
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
}

/*
const QBrush & background () const
*/
HB_FUNC_STATIC( QPAINTER_BACKGROUND )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->background ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
Qt::BGMode backgroundMode () const
*/
HB_FUNC_STATIC( QPAINTER_BACKGROUNDMODE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->backgroundMode () );
  }
}

/*
bool begin ( QPaintDevice * device )
*/
HB_FUNC_STATIC( QPAINTER_BEGIN )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOBJECT(1) ) // TODO: refinar identificacao dos objetos
    {
      QPaintDevice * par1 = (QPaintDevice *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->begin ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void beginNativePainting ()
*/
HB_FUNC_STATIC( QPAINTER_BEGINNATIVEPAINTING )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->beginNativePainting ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRectF boundingRect ( const QRectF & rectangle, int flags, const QString & text )
*/
void QPainter_boundingRect1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect ( *PQRECTF(1), PINT(2), PQSTRING(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRect boundingRect ( const QRect & rectangle, int flags, const QString & text )
*/
void QPainter_boundingRect2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect ( *PQRECT(1), PINT(2), PQSTRING(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect boundingRect ( int x, int y, int w, int h, int flags, const QString & text )
*/
void QPainter_boundingRect3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect ( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PQSTRING(6) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF boundingRect ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )
*/
void QPainter_boundingRect4 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextOption par3 = ISNIL(3)? QTextOption() : *(QTextOption *) _qt5xhb_itemGetPtr(3);
    QRectF * ptr = new QRectF( obj->boundingRect ( *PQRECTF(1), PQSTRING(2), par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
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
    QPainter_boundingRect1();
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) )
  {
    QPainter_boundingRect2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) )
  {
    QPainter_boundingRect3();
  }
  else if( ISBETWEEN(2,3) && ISQRECTF(1) && ISCHAR(2) && (ISQTEXTOPTION(3)||ISNIL(3)) )
  {
    QPainter_boundingRect4();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->brush ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
QPoint brushOrigin () const
*/
HB_FUNC_STATIC( QPAINTER_BRUSHORIGIN )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->brushOrigin () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPainterPath clipPath () const
*/
HB_FUNC_STATIC( QPAINTER_CLIPPATH )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->clipPath () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QRegion clipRegion () const
*/
HB_FUNC_STATIC( QPAINTER_CLIPREGION )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->clipRegion () );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
QTransform combinedTransform () const
*/
HB_FUNC_STATIC( QPAINTER_COMBINEDTRANSFORM )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->combinedTransform () );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}

/*
CompositionMode compositionMode () const
*/
HB_FUNC_STATIC( QPAINTER_COMPOSITIONMODE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->compositionMode () );
  }
}

/*
QPaintDevice * device () const
*/
HB_FUNC_STATIC( QPAINTER_DEVICE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPaintDevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}

/*
const QTransform & deviceTransform () const
*/
HB_FUNC_STATIC( QPAINTER_DEVICETRANSFORM )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QTransform * ptr = &obj->deviceTransform ();
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}

/*
void drawArc ( const QRectF & rectangle, int startAngle, int spanAngle )
*/
void QPainter_drawArc1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawArc ( *PQRECTF(1), PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawArc ( const QRect & rectangle, int startAngle, int spanAngle )
*/
void QPainter_drawArc2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawArc ( *PQRECT(1), PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawArc ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
void QPainter_drawArc3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawArc ( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PINT(6) );
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
    QPainter_drawArc1();
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainter_drawArc2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPainter_drawArc3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawChord ( const QRectF & rectangle, int startAngle, int spanAngle )
*/
void QPainter_drawChord1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawChord ( *PQRECTF(1), PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawChord ( const QRect & rectangle, int startAngle, int spanAngle )
*/
void QPainter_drawChord2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawChord ( *PQRECT(1), PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawChord ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
void QPainter_drawChord3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawChord ( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PINT(6) );
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
    QPainter_drawChord1();
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainter_drawChord2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPainter_drawChord3();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGONF(1) )
    {
      obj->drawConvexPolygon ( *PQPOLYGONF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawConvexPolygon ( const QPolygon & polygon )
*/
HB_FUNC_STATIC( QPAINTER_DRAWCONVEXPOLYGON4 )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGON(1) )
    {
      obj->drawConvexPolygon ( *PQPOLYGON(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
void QPainter_drawEllipse1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawEllipse ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawEllipse ( const QRect & rectangle )
*/
void QPainter_drawEllipse2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawEllipse ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawEllipse ( int x, int y, int width, int height )
*/
void QPainter_drawEllipse3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawEllipse ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawEllipse ( const QPointF & center, qreal rx, qreal ry )
*/
void QPainter_drawEllipse4 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawEllipse ( *PQPOINTF(1), PQREAL(2), PQREAL(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawEllipse ( const QPoint & center, int rx, int ry )
*/
void QPainter_drawEllipse5 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawEllipse ( *PQPOINT(1), PINT(2), PINT(3) );
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
    QPainter_drawEllipse1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPainter_drawEllipse2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainter_drawEllipse3();
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainter_drawEllipse4();
  }
  else if( ISNUMPAR(3) && ISQPOINT(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainter_drawEllipse5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawImage ( const QRectF & target, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPainter_drawImage1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *PQRECTF(1), *PQIMAGE(2), *PQRECTF(3), (Qt::ImageConversionFlags) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QRect & target, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPainter_drawImage2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *PQRECT(1), *PQIMAGE(2), *PQRECT(3), (Qt::ImageConversionFlags) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QPointF & point, const QImage & image )
*/
void QPainter_drawImage3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawImage ( *PQPOINTF(1), *PQIMAGE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QPoint & point, const QImage & image )
*/
void QPainter_drawImage4 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawImage ( *PQPOINT(1), *PQIMAGE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QPointF & point, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPainter_drawImage5 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *PQPOINTF(1), *PQIMAGE(2), *PQRECTF(3), (Qt::ImageConversionFlags) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QPoint & point, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPainter_drawImage6 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    obj->drawImage ( *PQPOINT(1), *PQIMAGE(2), *PQRECT(3), (Qt::ImageConversionFlags) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QRectF & rectangle, const QImage & image )
*/
void QPainter_drawImage7 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawImage ( *PQRECTF(1), *PQIMAGE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( const QRect & rectangle, const QImage & image )
*/
void QPainter_drawImage8 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawImage ( *PQRECT(1), *PQIMAGE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawImage ( int x, int y, const QImage & image, int sx = 0, int sy = 0, int sw = -1, int sh = -1, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPainter_drawImage9 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par8 = ISNIL(8)? (int) Qt::AutoColor : hb_parni(8);
    obj->drawImage ( PINT(1), PINT(2), *PQIMAGE(3), OPINT(4,0), OPINT(5,0), OPINT(6,-1), OPINT(7,-1), (Qt::ImageConversionFlags) par8 );
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
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISQIMAGE(2) && ISQRECTF(3) && ISOPTNUM(4) )
  {
    QPainter_drawImage1();
  }
  else if( ISBETWEEN(3,4) && ISQRECT(1) && ISQIMAGE(2) && ISQRECT(3) && ISOPTNUM(4) )
  {
    QPainter_drawImage2();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQIMAGE(2) )
  {
    QPainter_drawImage3();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQIMAGE(2) )
  {
    QPainter_drawImage4();
  }
  else if( ISBETWEEN(3,4) && ISQPOINTF(1) && ISQIMAGE(2) && ISQRECTF(3) && ISOPTNUM(4) )
  {
    QPainter_drawImage5();
  }
  else if( ISBETWEEN(3,4) && ISQPOINT(1) && ISQIMAGE(2) && ISQRECT(3) && ISOPTNUM(4) )
  {
    QPainter_drawImage6();
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISQIMAGE(2) )
  {
    QPainter_drawImage7();
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISQIMAGE(2) )
  {
    QPainter_drawImage8();
  }
  else if( ISBETWEEN(3,8) && ISNUM(1) && ISNUM(2) && ISQIMAGE(3) && ISOPTNUM(4) && ISOPTNUM(5) && ISOPTNUM(6) && ISOPTNUM(7) && ISOPTNUM(8) )
  {
    QPainter_drawImage9();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawLine ( const QLineF & line )
*/
void QPainter_drawLine1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawLine ( *PQLINEF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLine ( const QLine & line )
*/
void QPainter_drawLine2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawLine ( *PQLINE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLine ( const QPoint & p1, const QPoint & p2 )
*/
void QPainter_drawLine3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawLine ( *PQPOINT(1), *PQPOINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLine ( const QPointF & p1, const QPointF & p2 )
*/
void QPainter_drawLine4 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawLine ( *PQPOINTF(1), *PQPOINTF(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLine ( int x1, int y1, int x2, int y2 )
*/
void QPainter_drawLine5 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawLine ( PINT(1), PINT(2), PINT(3), PINT(4) );
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
    QPainter_drawLine1();
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    QPainter_drawLine2();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    QPainter_drawLine3();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QPainter_drawLine4();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainter_drawLine5();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLines ( const QVector<QPoint> & pointPairs )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES6 )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLines ( const QVector<QLineF> & lines )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES7 )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLines ( const QVector<QLine> & lines )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES8 )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      obj->drawPath ( *PQPAINTERPATH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPicture ( const QPointF & point, const QPicture & picture )
*/
void QPainter_drawPicture1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPicture ( *PQPOINTF(1), *PQPICTURE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPicture ( const QPoint & point, const QPicture & picture )
*/
void QPainter_drawPicture2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPicture ( *PQPOINT(1), *PQPICTURE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPicture ( int x, int y, const QPicture & picture )
*/
void QPainter_drawPicture3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPicture ( PINT(1), PINT(2), *PQPICTURE(3) );
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
    QPainter_drawPicture1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPICTURE(2) )
  {
    QPainter_drawPicture2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQPICTURE(3) )
  {
    QPainter_drawPicture3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPie ( const QRectF & rectangle, int startAngle, int spanAngle )
*/
void QPainter_drawPie1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPie ( *PQRECTF(1), PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPie ( const QRect & rectangle, int startAngle, int spanAngle )
*/
void QPainter_drawPie2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPie ( *PQRECT(1), PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPie ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
void QPainter_drawPie3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPie ( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PINT(6) );
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
    QPainter_drawPie1();
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainter_drawPie2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPainter_drawPie3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPixmap ( const QRectF & target, const QPixmap & pixmap, const QRectF & source )
*/
void QPainter_drawPixmap1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( *PQRECTF(1), *PQPIXMAP(2), *PQRECTF(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QRect & target, const QPixmap & pixmap, const QRect & source )
*/
void QPainter_drawPixmap2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( *PQRECT(1), *PQPIXMAP(2), *PQRECT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QPointF & point, const QPixmap & pixmap, const QRectF & source )
*/
void QPainter_drawPixmap3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( *PQPOINTF(1), *PQPIXMAP(2), *PQRECTF(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QPoint & point, const QPixmap & pixmap, const QRect & source )
*/
void QPainter_drawPixmap4 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( *PQPOINT(1), *PQPIXMAP(2), *PQRECT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QPointF & point, const QPixmap & pixmap )
*/
void QPainter_drawPixmap5 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( *PQPOINTF(1), *PQPIXMAP(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QPoint & point, const QPixmap & pixmap )
*/
void QPainter_drawPixmap6 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( *PQPOINT(1), *PQPIXMAP(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( int x, int y, const QPixmap & pixmap )
*/
void QPainter_drawPixmap7 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( PINT(1), PINT(2), *PQPIXMAP(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( const QRect & rectangle, const QPixmap & pixmap )
*/
void QPainter_drawPixmap8 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( *PQRECT(1), *PQPIXMAP(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( int x, int y, int width, int height, const QPixmap & pixmap )
*/
void QPainter_drawPixmap9 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( PINT(1), PINT(2), PINT(3), PINT(4), *PQPIXMAP(5) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( int x, int y, int w, int h, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
*/
void QPainter_drawPixmap10 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( PINT(1), PINT(2), PINT(3), PINT(4), *PQPIXMAP(5), PINT(6), PINT(7), PINT(8), PINT(9) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPixmap ( int x, int y, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
*/
void QPainter_drawPixmap11 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPixmap ( PINT(1), PINT(2), *PQPIXMAP(3), PINT(4), PINT(5), PINT(6), PINT(7) );
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
    QPainter_drawPixmap1();
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISQPIXMAP(2) && ISQRECT(3) )
  {
    QPainter_drawPixmap2();
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISQPIXMAP(2) && ISQRECTF(3) )
  {
    QPainter_drawPixmap3();
  }
  else if( ISNUMPAR(3) && ISQPOINT(1) && ISQPIXMAP(2) && ISQRECT(3) )
  {
    QPainter_drawPixmap4();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPIXMAP(2) )
  {
    QPainter_drawPixmap5();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPIXMAP(2) )
  {
    QPainter_drawPixmap6();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQPIXMAP(3) )
  {
    QPainter_drawPixmap7();
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISQPIXMAP(2) )
  {
    QPainter_drawPixmap8();
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQPIXMAP(5) )
  {
    QPainter_drawPixmap9();
  }
  else if( ISNUMPAR(9) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQPIXMAP(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) )
  {
    QPainter_drawPixmap10();
  }
  else if( ISNUMPAR(7) && ISNUM(1) && ISNUM(2) && ISQPIXMAP(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) )
  {
    QPainter_drawPixmap11();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPoint ( const QPointF & position )
*/
void QPainter_drawPoint1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPoint ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPoint ( const QPoint & position )
*/
void QPainter_drawPoint2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPoint ( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPoint ( int x, int y )
*/
void QPainter_drawPoint3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawPoint ( PINT(1), PINT(2) );
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
    QPainter_drawPoint1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPainter_drawPoint2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainter_drawPoint3();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGONF(1) )
    {
      obj->drawPoints ( *PQPOLYGONF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPoints ( const QPolygon & points )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOINTS4 )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGON(1) )
    {
      obj->drawPoints ( *PQPOLYGON(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGONF(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::OddEvenFill : hb_parni(2);
      obj->drawPolygon ( *PQPOLYGONF(1), (Qt::FillRule) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPolygon ( const QPolygon & points, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOLYGON4 )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGON(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::OddEvenFill : hb_parni(2);
      obj->drawPolygon ( *PQPOLYGON(1), (Qt::FillRule) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void drawPolygon ( const QPointF * points, int pointCount, Qt::FillRule fillRule = Qt::OddEvenFill )
//[2]void drawPolygon ( const QPoint * points, int pointCount, Qt::FillRule fillRule = Qt::OddEvenFill )
//[3]void drawPolygon ( const QPolygonF & points, Qt::FillRule fillRule = Qt::OddEvenFill )
//[4]void drawPolygon ( const QPolygon & points, Qt::FillRule fillRule = Qt::OddEvenFill )

HB_FUNC_STATIC( QPAINTER_DRAWPOLYGON )
{
  if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOLYGON3 );
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && ISOPTNUM(2) )
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGONF(1) )
    {
      obj->drawPolyline ( *PQPOLYGONF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPolyline ( const QPolygon & points )
*/
HB_FUNC_STATIC( QPAINTER_DRAWPOLYLINE4 )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGON(1) )
    {
      obj->drawPolyline ( *PQPOLYGON(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
void QPainter_drawRect1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawRect ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRect ( const QRect & rectangle )
*/
void QPainter_drawRect2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawRect ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRect ( int x, int y, int width, int height )
*/
void QPainter_drawRect3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawRect ( PINT(1), PINT(2), PINT(3), PINT(4) );
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
    QPainter_drawRect1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPainter_drawRect2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainter_drawRect3();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRects ( const QVector<QRect> & rectangles )
*/
HB_FUNC_STATIC( QPAINTER_DRAWRECTS4 )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
void QPainter_drawRoundedRect1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par4 = ISNIL(4)? (int) Qt::AbsoluteSize : hb_parni(4);
    obj->drawRoundedRect ( *PQRECTF(1), PQREAL(2), PQREAL(3), (Qt::SizeMode) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRoundedRect ( const QRect & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
void QPainter_drawRoundedRect2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par4 = ISNIL(4)? (int) Qt::AbsoluteSize : hb_parni(4);
    obj->drawRoundedRect ( *PQRECT(1), PQREAL(2), PQREAL(3), (Qt::SizeMode) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRoundedRect ( int x, int y, int w, int h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
void QPainter_drawRoundedRect3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par7 = ISNIL(7)? (int) Qt::AbsoluteSize : hb_parni(7);
    obj->drawRoundedRect ( PINT(1), PINT(2), PINT(3), PINT(4), PQREAL(5), PQREAL(6), (Qt::SizeMode) par7 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void drawRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[2]void drawRoundedRect ( const QRect & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[3]void drawRoundedRect ( int x, int y, int w, int h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )

HB_FUNC_STATIC( QPAINTER_DRAWROUNDEDRECT )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QPainter_drawRoundedRect1();
  }
  else if( ISBETWEEN(3,4) && ISQRECT(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QPainter_drawRoundedRect2();
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISOPTNUM(7) )
  {
    QPainter_drawRoundedRect3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawStaticText ( const QPointF & topLeftPosition, const QStaticText & staticText )
*/
void QPainter_drawStaticText1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStaticText * par2 = (QStaticText *) _qt5xhb_itemGetPtr(2);
    obj->drawStaticText ( *PQPOINTF(1), *par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawStaticText ( const QPoint & topLeftPosition, const QStaticText & staticText )
*/
void QPainter_drawStaticText2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStaticText * par2 = (QStaticText *) _qt5xhb_itemGetPtr(2);
    obj->drawStaticText ( *PQPOINT(1), *par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawStaticText ( int left, int top, const QStaticText & staticText )
*/
void QPainter_drawStaticText3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStaticText * par3 = (QStaticText *) _qt5xhb_itemGetPtr(3);
    obj->drawStaticText ( PINT(1), PINT(2), *par3 );
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
    QPainter_drawStaticText1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSTATICTEXT(2) )
  {
    QPainter_drawStaticText2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTATICTEXT(3) )
  {
    QPainter_drawStaticText3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawText ( const QPointF & position, const QString & text )
*/
void QPainter_drawText1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawText ( *PQPOINTF(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( const QPoint & position, const QString & text )
*/
void QPainter_drawText2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawText ( *PQPOINT(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( const QRectF & rectangle, int flags, const QString & text, QRectF * boundingRect = 0 )
*/
void QPainter_drawText3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * par4 = ISNIL(4)? 0 : (QRectF *) _qt5xhb_itemGetPtr(4);
    obj->drawText ( *PQRECTF(1), PINT(2), PQSTRING(3), par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( const QRect & rectangle, int flags, const QString & text, QRect * boundingRect = 0 )
*/
void QPainter_drawText4 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * par4 = ISNIL(4)? 0 : (QRect *) _qt5xhb_itemGetPtr(4);
    obj->drawText ( *PQRECT(1), PINT(2), PQSTRING(3), par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( int x, int y, const QString & text )
*/
void QPainter_drawText5 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawText ( PINT(1), PINT(2), PQSTRING(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( int x, int y, int width, int height, int flags, const QString & text, QRect * boundingRect = 0 )
*/
void QPainter_drawText6 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * par7 = ISNIL(7)? 0 : (QRect *) _qt5xhb_itemGetPtr(7);
    obj->drawText ( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PQSTRING(6), par7 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawText ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )
*/
void QPainter_drawText7 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextOption par3 = ISNIL(3)? QTextOption() : *(QTextOption *) _qt5xhb_itemGetPtr(3);
    obj->drawText ( *PQRECTF(1), PQSTRING(2), par3 );
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
    QPainter_drawText1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISCHAR(2) )
  {
    QPainter_drawText2();
  }
  else if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) && (ISQRECTF(4)||ISNIL(4)) )
  {
    QPainter_drawText3();
  }
  else if( ISBETWEEN(3,4) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) && (ISQRECT(4)||ISNIL(4)) )
  {
    QPainter_drawText4();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
  {
    QPainter_drawText5();
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) && (ISQRECT(7)||ISNIL(7)) )
  {
    QPainter_drawText6();
  }
  else if( ISBETWEEN(2,3) && ISQRECTF(1) && ISCHAR(2) && (ISQTEXTOPTION(3)||ISNIL(3)) )
  {
    QPainter_drawText7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawTiledPixmap ( const QRectF & rectangle, const QPixmap & pixmap, const QPointF & position = QPointF() )
*/
void QPainter_drawTiledPixmap1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF par3 = ISNIL(3)? QPointF() : *(QPointF *) _qt5xhb_itemGetPtr(3);
    obj->drawTiledPixmap ( *PQRECTF(1), *PQPIXMAP(2), par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTiledPixmap ( const QRect & rectangle, const QPixmap & pixmap, const QPoint & position = QPoint() )
*/
void QPainter_drawTiledPixmap2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) _qt5xhb_itemGetPtr(3);
    obj->drawTiledPixmap ( *PQRECT(1), *PQPIXMAP(2), par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTiledPixmap ( int x, int y, int width, int height, const QPixmap & pixmap, int sx = 0, int sy = 0 )
*/
void QPainter_drawTiledPixmap3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->drawTiledPixmap ( PINT(1), PINT(2), PINT(3), PINT(4), *PQPIXMAP(5), OPINT(6,0), OPINT(7,0) );
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
    QPainter_drawTiledPixmap1();
  }
  else if( ISBETWEEN(2,3) && ISQRECT(1) && ISQPIXMAP(2) && (ISQPOINT(3)||ISNIL(3)) )
  {
    QPainter_drawTiledPixmap2();
  }
  else if( ISBETWEEN(5,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQPIXMAP(5) && ISOPTNUM(6) && ISOPTNUM(7) )
  {
    QPainter_drawTiledPixmap3();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->end () );
  }
}

/*
void endNativePainting ()
*/
HB_FUNC_STATIC( QPAINTER_ENDNATIVEPAINTING )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->endNativePainting ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void eraseRect ( const QRectF & rectangle )
*/
void QPainter_eraseRect1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->eraseRect ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void eraseRect ( const QRect & rectangle )
*/
void QPainter_eraseRect2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->eraseRect ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void eraseRect ( int x, int y, int width, int height )
*/
void QPainter_eraseRect3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->eraseRect ( PINT(1), PINT(2), PINT(3), PINT(4) );
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
    QPainter_eraseRect1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPainter_eraseRect2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainter_eraseRect3();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) && ISQBRUSH(2) )
    {
      obj->fillPath ( *PQPAINTERPATH(1), *PQBRUSH(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRectF & rectangle, const QBrush & brush )
*/
void QPainter_fillRect1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fillRect ( *PQRECTF(1), *PQBRUSH(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( int x, int y, int width, int height, Qt::BrushStyle style )
*/
void QPainter_fillRect2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par5 = hb_parni(5);
    obj->fillRect ( PINT(1), PINT(2), PINT(3), PINT(4), (Qt::BrushStyle) par5 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRect & rectangle, Qt::BrushStyle style )
*/
void QPainter_fillRect3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fillRect ( *PQRECT(1), (Qt::BrushStyle) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRectF & rectangle, Qt::BrushStyle style )
*/
void QPainter_fillRect4 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fillRect ( *PQRECTF(1), (Qt::BrushStyle) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRect & rectangle, const QBrush & brush )
*/
void QPainter_fillRect5 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fillRect ( *PQRECT(1), *PQBRUSH(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRect & rectangle, const QColor & color )
*/
void QPainter_fillRect6 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
    obj->fillRect ( *PQRECT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRectF & rectangle, const QColor & color )
*/
void QPainter_fillRect7 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
    obj->fillRect ( *PQRECTF(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( int x, int y, int width, int height, const QBrush & brush )
*/
void QPainter_fillRect8 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fillRect ( PINT(1), PINT(2), PINT(3), PINT(4), *PQBRUSH(5) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( int x, int y, int width, int height, const QColor & color )
*/
void QPainter_fillRect9 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor par5 = ISOBJECT(5)? *(QColor *) _qt5xhb_itemGetPtr(5) : QColor(hb_parc(5));
    obj->fillRect ( PINT(1), PINT(2), PINT(3), PINT(4), par5 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( int x, int y, int width, int height, Qt::GlobalColor color )
*/
void QPainter_fillRect10 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par5 = hb_parni(5);
    obj->fillRect ( PINT(1), PINT(2), PINT(3), PINT(4), (Qt::GlobalColor) par5 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRect & rectangle, Qt::GlobalColor color )
*/
void QPainter_fillRect11 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fillRect ( *PQRECT(1), (Qt::GlobalColor) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fillRect ( const QRectF & rectangle, Qt::GlobalColor color )
*/
void QPainter_fillRect12 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fillRect ( *PQRECTF(1), (Qt::GlobalColor) hb_parni(2) );
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
    QPainter_fillRect1();
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QPainter_fillRect2();
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISNUM(2) )
  {
    QPainter_fillRect3();
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    QPainter_fillRect4();
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISQBRUSH(2) )
  {
    QPainter_fillRect5();
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    QPainter_fillRect6();
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    QPainter_fillRect7();
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQBRUSH(5) )
  {
    QPainter_fillRect8();
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQCOLOR(5)||ISCHAR(5)) )
  {
    QPainter_fillRect9();
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QPainter_fillRect10();
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISNUM(2) )
  {
    QPainter_fillRect11();
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    QPainter_fillRect12();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QFont * ptr = &obj->font ();
    _qt5xhb_createReturnClass ( ptr, "QFONT" );
  }
}

/*
QFontInfo fontInfo () const
*/
HB_FUNC_STATIC( QPAINTER_FONTINFO )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFontInfo * ptr = new QFontInfo( obj->fontInfo () );
    _qt5xhb_createReturnClass ( ptr, "QFONTINFO", true );
  }
}

/*
QFontMetrics fontMetrics () const
*/
HB_FUNC_STATIC( QPAINTER_FONTMETRICS )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFontMetrics * ptr = new QFontMetrics( obj->fontMetrics () );
    _qt5xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
  }
}

/*
bool hasClipping () const
*/
HB_FUNC_STATIC( QPAINTER_HASCLIPPING )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasClipping () );
  }
}

/*
bool isActive () const
*/
HB_FUNC_STATIC( QPAINTER_ISACTIVE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isActive () );
  }
}

/*
Qt::LayoutDirection layoutDirection () const
*/
HB_FUNC_STATIC( QPAINTER_LAYOUTDIRECTION )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->layoutDirection () );
  }
}

/*
qreal opacity () const
*/
HB_FUNC_STATIC( QPAINTER_OPACITY )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->opacity () );
  }
}

/*
QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QPAINTER_PAINTENGINE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}

/*
const QPen & pen () const
*/
HB_FUNC_STATIC( QPAINTER_PEN )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QPen * ptr = &obj->pen ();
    _qt5xhb_createReturnClass ( ptr, "QPEN" );
  }
}

/*
RenderHints renderHints () const
*/
HB_FUNC_STATIC( QPAINTER_RENDERHINTS )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->renderHints () );
  }
}

/*
void resetTransform ()
*/
HB_FUNC_STATIC( QPAINTER_RESETTRANSFORM )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resetTransform ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void restore ()
*/
HB_FUNC_STATIC( QPAINTER_RESTORE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->restore ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void rotate ( qreal angle )
*/
HB_FUNC_STATIC( QPAINTER_ROTATE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->rotate ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void save ()
*/
HB_FUNC_STATIC( QPAINTER_SAVE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->save ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale ( qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QPAINTER_SCALE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->scale ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QPAINTER_SETBACKGROUND )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBRUSH(1) )
    {
      obj->setBackground ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackgroundMode ( Qt::BGMode mode )
*/
HB_FUNC_STATIC( QPAINTER_SETBACKGROUNDMODE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setBackgroundMode ( (Qt::BGMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBrush ( const QBrush & brush )
*/
void QPainter_setBrush1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBrush ( *PQBRUSH(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBrush ( Qt::BrushStyle style )
*/
void QPainter_setBrush2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBrush ( (Qt::BrushStyle) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setBrush ( const QBrush & brush )
//[2]void setBrush ( Qt::BrushStyle style )

HB_FUNC_STATIC( QPAINTER_SETBRUSH )
{
  if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    QPainter_setBrush1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPainter_setBrush2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setBrushOrigin ( const QPointF & position )
*/
void QPainter_setBrushOrigin1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBrushOrigin ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBrushOrigin ( const QPoint & position )
*/
void QPainter_setBrushOrigin2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBrushOrigin ( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBrushOrigin ( int x, int y )
*/
void QPainter_setBrushOrigin3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBrushOrigin ( PINT(1), PINT(2) );
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
    QPainter_setBrushOrigin1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPainter_setBrushOrigin2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainter_setBrushOrigin3();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::ReplaceClip : hb_parni(2);
      obj->setClipPath ( *PQPAINTERPATH(1), (Qt::ClipOperation) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setClipRect ( const QRectF & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
void QPainter_setClipRect1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::ReplaceClip : hb_parni(2);
    obj->setClipRect ( *PQRECTF(1), (Qt::ClipOperation) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setClipRect ( int x, int y, int width, int height, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
void QPainter_setClipRect2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par5 = ISNIL(5)? (int) Qt::ReplaceClip : hb_parni(5);
    obj->setClipRect ( PINT(1), PINT(2), PINT(3), PINT(4), (Qt::ClipOperation) par5 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setClipRect ( const QRect & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
void QPainter_setClipRect3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::ReplaceClip : hb_parni(2);
    obj->setClipRect ( *PQRECT(1), (Qt::ClipOperation) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setClipRect ( const QRectF & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
//[2]void setClipRect ( int x, int y, int width, int height, Qt::ClipOperation operation = Qt::ReplaceClip )
//[3]void setClipRect ( const QRect & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )

HB_FUNC_STATIC( QPAINTER_SETCLIPRECT )
{
  if( ISBETWEEN(1,2) && ISQRECTF(1) && ISOPTNUM(2) )
  {
    QPainter_setClipRect1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) )
  {
    QPainter_setClipRect2();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTNUM(2) )
  {
    QPainter_setClipRect3();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQREGION(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::ReplaceClip : hb_parni(2);
      obj->setClipRegion ( *PQREGION(1), (Qt::ClipOperation) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setClipping ( bool enable )
*/
HB_FUNC_STATIC( QPAINTER_SETCLIPPING )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setClipping ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompositionMode ( CompositionMode mode )
*/
HB_FUNC_STATIC( QPAINTER_SETCOMPOSITIONMODE )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCompositionMode ( (QPainter::CompositionMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QPAINTER_SETFONT )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFONT(1) )
    {
      obj->setFont ( *PQFONT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QPAINTER_SETLAYOUTDIRECTION )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setLayoutDirection ( (Qt::LayoutDirection) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpacity ( qreal opacity )
*/
HB_FUNC_STATIC( QPAINTER_SETOPACITY )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setOpacity ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPen ( const QPen & pen )
*/
void QPainter_setPen1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPen ( *PQPEN(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPen ( const QColor & color )
*/
void QPainter_setPen2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setPen ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPen ( Qt::PenStyle style )
*/
void QPainter_setPen3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPen ( (Qt::PenStyle) hb_parni(1) );
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
    QPainter_setPen1();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QPainter_setPen2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPainter_setPen3();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setRenderHint ( (QPainter::RenderHint) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRenderHints ( RenderHints hints, bool on = true )
*/
HB_FUNC_STATIC( QPAINTER_SETRENDERHINTS )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      int par1 = hb_parni(1);
      obj->setRenderHints ( (QPainter::RenderHints) par1, OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTransform ( const QTransform & transform, bool combine = false )
*/
HB_FUNC_STATIC( QPAINTER_SETTRANSFORM )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTRANSFORM(1) && ISOPTLOG(2) )
    {
      obj->setTransform ( *PQTRANSFORM(1), OPBOOL(2,false) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewTransformEnabled ( bool enable )
*/
HB_FUNC_STATIC( QPAINTER_SETVIEWTRANSFORMENABLED )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setViewTransformEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewport ( const QRect & rectangle )
*/
void QPainter_setViewPort1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setViewport ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewport ( int x, int y, int width, int height )
*/
void QPainter_setViewPort2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setViewport ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setViewport ( const QRect & rectangle )
//[2]void setViewport ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_SETVIEWPORT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPainter_setViewPort1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainter_setViewPort2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setWindow ( const QRect & rectangle )
*/
void QPainter_setWindow1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setWindow ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindow ( int x, int y, int width, int height )
*/
void QPainter_setWindow2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setWindow ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setWindow ( const QRect & rectangle )
//[2]void setWindow ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_SETWINDOW )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPainter_setWindow1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainter_setWindow2();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setWorldMatrixEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWorldTransform ( const QTransform & matrix, bool combine = false )
*/
HB_FUNC_STATIC( QPAINTER_SETWORLDTRANSFORM )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTRANSFORM(1) && ISOPTLOG(2) )
    {
      obj->setWorldTransform ( *PQTRANSFORM(1), OPBOOL(2,false) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void shear ( qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QPAINTER_SHEAR )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->shear ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void strokePath ( const QPainterPath & path, const QPen & pen )
*/
HB_FUNC_STATIC( QPAINTER_STROKEPATH )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) && ISQPEN(2) )
    {
      obj->strokePath ( *PQPAINTERPATH(1), *PQPEN(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool testRenderHint ( RenderHint hint ) const
*/
HB_FUNC_STATIC( QPAINTER_TESTRENDERHINT )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retl( obj->testRenderHint ( (QPainter::RenderHint) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QTransform & transform () const
*/
HB_FUNC_STATIC( QPAINTER_TRANSFORM )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QTransform * ptr = &obj->transform ();
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM" );
  }
}

/*
void translate ( const QPointF & offset )
*/
void QPainter_translate1 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( const QPoint & offset )
*/
void QPainter_translate2 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( qreal dx, qreal dy )
*/
void QPainter_translate3 ()
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
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
    QPainter_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPainter_translate2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainter_translate3();
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
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->viewTransformEnabled () );
  }
}

/*
QRect viewport () const
*/
HB_FUNC_STATIC( QPAINTER_VIEWPORT )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->viewport () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect window () const
*/
HB_FUNC_STATIC( QPAINTER_WINDOW )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->window () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
bool worldMatrixEnabled () const
*/
HB_FUNC_STATIC( QPAINTER_WORLDMATRIXENABLED )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->worldMatrixEnabled () );
  }
}

/*
const QTransform & worldTransform () const
*/
HB_FUNC_STATIC( QPAINTER_WORLDTRANSFORM )
{
  QPainter * obj = (QPainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QTransform * ptr = &obj->worldTransform ();
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM" );
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
