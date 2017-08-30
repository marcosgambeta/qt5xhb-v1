$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTDEVICE
REQUEST QPAINTER
#endif

CLASS QPaintEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD begin
   METHOD drawEllipse1
   METHOD drawEllipse2
   METHOD drawEllipse
   METHOD drawImage
   METHOD drawLines
   METHOD drawPath
   METHOD drawPixmap
   METHOD drawPoints
   METHOD drawPolygon
   METHOD drawRects
   METHOD drawTextItem
   METHOD drawTiledPixmap
   METHOD end
   METHOD hasFeature
   METHOD isActive
   METHOD paintDevice
   METHOD painter
   METHOD setActive
   METHOD type
   METHOD updateState

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool begin ( QPaintDevice * pdev ) = 0
*/
$virtualMethod=|bool|begin|QPaintDevice *

/*
virtual void drawEllipse ( const QRectF & rect )
*/
$virtualMethod=|void|drawEllipse,drawEllipse1|const QRectF &

/*
virtual void drawEllipse ( const QRect & rect )
*/
$virtualMethod=|void|drawEllipse,drawEllipse2|const QRect &

//[1]virtual void drawEllipse ( const QRectF & rect )
//[2]virtual void drawEllipse ( const QRect & rect )

HB_FUNC_STATIC( QPAINTENGINE_DRAWELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTENGINE_DRAWELLIPSE1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTENGINE_DRAWELLIPSE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void drawImage ( const QRectF & rectangle, const QImage & image, const QRectF & sr, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$virtualMethod=|void|drawImage|const QRectF &,const QImage &,const QRectF &,Qt::ImageConversionFlags=Qt::AutoColor

%% TODO: implementar reconhecimento de 'const QLineF *' e 'const QLine *'

//[1]virtual void drawLines ( const QLineF * lines, int lineCount )
//[2]virtual void drawLines ( const QLine * lines, int lineCount )

HB_FUNC_STATIC( QPAINTENGINE_DRAWLINES )
{
}

/*
virtual void drawPath ( const QPainterPath & path )
*/
$virtualMethod=|void|drawPath|const QPainterPath &

/*
virtual void drawPixmap ( const QRectF & r, const QPixmap & pm, const QRectF & sr ) = 0
*/
$virtualMethod=|void|drawPixmap|const QRectF &,const QPixmap &,const QRectF &

%% TODO: implementar reconhecimento de 'const QPointF *' e 'const QPoint *'

//[1]virtual void drawPoints ( const QPointF * points, int pointCount )
//[2]virtual void drawPoints ( const QPoint * points, int pointCount )

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOINTS )
{
}

%% TODO: implementar reconhecimento de 'const QPointF *' e 'const QPoint *'

//[1]virtual void drawPolygon ( const QPointF * points, int pointCount, PolygonDrawMode mode )
//[2]virtual void drawPolygon ( const QPoint * points, int pointCount, PolygonDrawMode mode )

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOLYGON )
{
}

%% TODO: implementar reconhecimento de 'const QRectF *' e 'const QRect *'

//[1]virtual void drawRects ( const QRectF * rects, int rectCount )
//[2]virtual void drawRects ( const QRect * rects, int rectCount )

HB_FUNC_STATIC( QPAINTENGINE_DRAWRECTS )
{
}

/*
virtual void drawTextItem ( const QPointF & p, const QTextItem & textItem )
*/
$virtualMethod=|void|drawTextItem|const QPointF &,const QTextItem &

/*
virtual void drawTiledPixmap ( const QRectF & rect, const QPixmap & pixmap, const QPointF & p )
*/
$virtualMethod=|void|drawTiledPixmap|const QRectF &,const QPixmap &,const QPointF &

/*
virtual bool end () = 0
*/
$virtualMethod=|bool|end|

/*
bool hasFeature ( PaintEngineFeatures feature ) const
*/
$method=|bool|hasFeature|QPaintEngine::PaintEngineFeatures

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
QPaintDevice * paintDevice () const
*/
$method=|QPaintDevice *|paintDevice|

/*
QPainter * painter () const
*/
$method=|QPainter *|painter|

/*
void setActive ( bool state )
*/
$method=|void|setActive|bool

/*
virtual Type type () const = 0
*/
$virtualMethod=|QPaintEngine::Type|type|

/*
virtual void updateState ( const QPaintEngineState & state ) = 0
*/
$virtualMethod=|void|updateState|const QPaintEngineState &

$extraMethods

#pragma ENDDUMP
