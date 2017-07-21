$header

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
   METHOD drawPoints
   METHOD drawPolygon
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

$destructor

#pragma BEGINDUMP

$includes

/*
QPainter ()
*/
$internalConstructor=|new1|

/*
QPainter ( QPaintDevice * device )
*/
$internalConstructor=|new2|QPaintDevice *

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

$deleteMethod

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
$method=|Qt::BGMode|backgroundMode|

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
      RBOOL( obj->begin ( par1 ) );
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
$method=|void|beginNativePainting|

/*
QRectF boundingRect ( const QRectF & rectangle, int flags, const QString & text )
*/
$internalMethod=|QRectF|boundingRect,boundingRect1|const QRectF &,int,const QString &

/*
QRect boundingRect ( const QRect & rectangle, int flags, const QString & text )
*/
$internalMethod=|QRect|boundingRect,boundingRect2|const QRect &,int,const QString &

/*
QRect boundingRect ( int x, int y, int w, int h, int flags, const QString & text )
*/
$internalMethod=|QRect|boundingRect,boundingRect3|int,int,int,int,int,const QString &

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
$method=|QPoint|brushOrigin|

/*
QPainterPath clipPath () const
*/
$method=|QPainterPath|clipPath|

/*
QRegion clipRegion () const
*/
$method=|QRegion|clipRegion|

/*
QTransform combinedTransform () const
*/
$method=|QTransform|combinedTransform|

/*
CompositionMode compositionMode () const
*/
$method=|QPainter::CompositionMode|compositionMode|

/*
QPaintDevice * device () const
*/
$method=|QPaintDevice *|device|

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
$internalMethod=|void|drawArc,drawArc1|const QRectF &,int,int

/*
void drawArc ( const QRect & rectangle, int startAngle, int spanAngle )
*/
$internalMethod=|void|drawArc,drawArc2|const QRect &,int,int

/*
void drawArc ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
$internalMethod=|void|drawArc,drawArc3|int,int,int,int,int,int

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
$internalMethod=|void|drawChord,drawChord1|const QRectF &,int,int

/*
void drawChord ( const QRect & rectangle, int startAngle, int spanAngle )
*/
$internalMethod=|void|drawChord,drawChord2|const QRect &,int,int

/*
void drawChord ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
$internalMethod=|void|drawChord,drawChord3|int,int,int,int,int,int

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
$internalMethod=|void|drawConvexPolygon,drawConvexPolygon3|const QPolygonF &

/*
void drawConvexPolygon ( const QPolygon & polygon )
*/
$internalMethod=|void|drawConvexPolygon,drawConvexPolygon4|const QPolygon &

//[1]void drawConvexPolygon ( const QPointF * points, int pointCount )
//[2]void drawConvexPolygon ( const QPoint * points, int pointCount )
//[3]void drawConvexPolygon ( const QPolygonF & polygon )
//[4]void drawConvexPolygon ( const QPolygon & polygon )

HB_FUNC_STATIC( QPAINTER_DRAWCONVEXPOLYGON )
{
  if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QPainter_drawConvexPolygon3();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPainter_drawConvexPolygon4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawEllipse ( const QRectF & rectangle )
*/
$internalMethod=|void|drawEllipse,drawEllipse1|const QRectF &

/*
void drawEllipse ( const QRect & rectangle )
*/
$internalMethod=|void|drawEllipse,drawEllipse2|const QRect &

/*
void drawEllipse ( int x, int y, int width, int height )
*/
$internalMethod=|void|drawEllipse,drawEllipse3|int,int,int,int

/*
void drawEllipse ( const QPointF & center, qreal rx, qreal ry )
*/
$internalMethod=|void|drawEllipse,drawEllipse4|const QPointF &,qreal,qreal

/*
void drawEllipse ( const QPoint & center, int rx, int ry )
*/
$internalMethod=|void|drawEllipse,drawEllipse5|const QPoint &,int,int

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
$internalMethod=|void|drawImage,drawImage1|const QRectF &,const QImage &,const QRectF &,Qt::ImageConversionFlags=Qt::AutoColor

/*
void drawImage ( const QRect & target, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$internalMethod=|void|drawImage,drawImage2|const QRect &,const QImage &,const QRect &,Qt::ImageConversionFlags=Qt::AutoColor

/*
void drawImage ( const QPointF & point, const QImage & image )
*/
$internalMethod=|void|drawImage,drawImage3|const QPointF &,const QImage &

/*
void drawImage ( const QPoint & point, const QImage & image )
*/
$internalMethod=|void|drawImage,drawImage4|const QPoint &,const QImage &

/*
void drawImage ( const QPointF & point, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$internalMethod=|void|drawImage,drawImage5|const QPointF &,const QImage &,const QRectF &,Qt::ImageConversionFlags=Qt::AutoColor

/*
void drawImage ( const QPoint & point, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$internalMethod=|void|drawImage,drawImage6|const QPoint &,const QImage &,const QRect &,Qt::ImageConversionFlags=Qt::AutoColor

/*
void drawImage ( const QRectF & rectangle, const QImage & image )
*/
$internalMethod=|void|drawImage,drawImage7|const QRectF &,const QImage &

/*
void drawImage ( const QRect & rectangle, const QImage & image )
*/
$internalMethod=|void|drawImage,drawImage8|const QRect &,const QImage &

/*
void drawImage ( int x, int y, const QImage & image, int sx = 0, int sy = 0, int sw = -1, int sh = -1, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$internalMethod=|void|drawImage,drawImage9|int,int,const QImage &,int=0,int=0,int=-1,int=-1,Qt::ImageConversionFlags=Qt::AutoColor

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
$internalMethod=|void|drawLine,drawLine1|const QLineF &

/*
void drawLine ( const QLine & line )
*/
$internalMethod=|void|drawLine,drawLine2|const QLine &

/*
void drawLine ( const QPoint & p1, const QPoint & p2 )
*/
$internalMethod=|void|drawLine,drawLine3|const QPoint &,const QPoint &

/*
void drawLine ( const QPointF & p1, const QPointF & p2 )
*/
$internalMethod=|void|drawLine,drawLine4|const QPointF &,const QPointF &

/*
void drawLine ( int x1, int y1, int x2, int y2 )
*/
$internalMethod=|void|drawLine,drawLine5|int,int,int,int

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
$method=|void|drawPath|const QPainterPath &

/*
void drawPicture ( const QPointF & point, const QPicture & picture )
*/
$internalMethod=|void|drawPicture,drawPicture1|const QPointF &,const QPicture &

/*
void drawPicture ( const QPoint & point, const QPicture & picture )
*/
$internalMethod=|void|drawPicture,drawPicture2|const QPoint &,const QPicture &

/*
void drawPicture ( int x, int y, const QPicture & picture )
*/
$internalMethod=|void|drawPicture,drawPicture3|int,int,const QPicture &

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
$internalMethod=|void|drawPie,drawPie1|const QRectF &,int,int

/*
void drawPie ( const QRect & rectangle, int startAngle, int spanAngle )
*/
$internalMethod=|void|drawPie,drawPie2|const QRect &,int,int

/*
void drawPie ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
$internalMethod=|void|drawPie,drawPie3|int,int,int,int,int,int

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
$internalMethod=|void|drawPixmap,drawPixmap1|const QRectF &,const QPixmap &,const QRectF &

/*
void drawPixmap ( const QRect & target, const QPixmap & pixmap, const QRect & source )
*/
$internalMethod=|void|drawPixmap,drawPixmap2|const QRect &,const QPixmap &,const QRect &

/*
void drawPixmap ( const QPointF & point, const QPixmap & pixmap, const QRectF & source )
*/
$internalMethod=|void|drawPixmap,drawPixmap3|const QPointF &,const QPixmap &,const QRectF &

/*
void drawPixmap ( const QPoint & point, const QPixmap & pixmap, const QRect & source )
*/
$internalMethod=|void|drawPixmap,drawPixmap4|const QPoint &,const QPixmap &,const QRect &

/*
void drawPixmap ( const QPointF & point, const QPixmap & pixmap )
*/
$internalMethod=|void|drawPixmap,drawPixmap5|const QPointF &,const QPixmap &

/*
void drawPixmap ( const QPoint & point, const QPixmap & pixmap )
*/
$internalMethod=|void|drawPixmap,drawPixmap6|const QPoint &,const QPixmap &

/*
void drawPixmap ( int x, int y, const QPixmap & pixmap )
*/
$internalMethod=|void|drawPixmap,drawPixmap7|int,int,const QPixmap &

/*
void drawPixmap ( const QRect & rectangle, const QPixmap & pixmap )
*/
$internalMethod=|void|drawPixmap,drawPixmap8|const QRect &,const QPixmap &

/*
void drawPixmap ( int x, int y, int width, int height, const QPixmap & pixmap )
*/
$internalMethod=|void|drawPixmap,drawPixmap9|int,int,int,int,const QPixmap &

/*
void drawPixmap ( int x, int y, int w, int h, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
*/
$internalMethod=|void|drawPixmap,drawPixmap10|int,int,int,int,const QPixmap &,int,int,int,int

/*
void drawPixmap ( int x, int y, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
*/
$internalMethod=|void|drawPixmap,drawPixmap11|int,int,const QPixmap &,int,int,int,int

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
$internalMethod=|void|drawPoint,drawPoint1|const QPointF &

/*
void drawPoint ( const QPoint & position )
*/
$internalMethod=|void|drawPoint,drawPoint2|const QPoint & position )

/*
void drawPoint ( int x, int y )
*/
$internalMethod=|void|drawPoint,drawPoint3|int,int

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
$internalMethod=|void|drawPoints,drawPoints3|const QPolygonF &

/*
void drawPoints ( const QPolygon & points )
*/
$internalMethod=|void|drawPoints,drawPoints4|const QPolygon &

//[1]void drawPoints ( const QPointF * points, int pointCount )
//[2]void drawPoints ( const QPoint * points, int pointCount )
//[3]void drawPoints ( const QPolygonF & points )
//[4]void drawPoints ( const QPolygon & points )

HB_FUNC_STATIC( QPAINTER_DRAWPOINTS )
{
  if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QPainter_drawPoints3();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPainter_drawPoints4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPolygon ( const QPolygonF & points, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
$internalMethod=|void|drawPolygon,drawPolygon3|const QPolygonF &,Qt::FillRule=Qt::OddEvenFill

/*
void drawPolygon ( const QPolygon & points, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
$internalMethod=|void|drawPolygon,drawPolygon4|const QPolygon &,Qt::FillRule=Qt::OddEvenFill

//[1]void drawPolygon ( const QPointF * points, int pointCount, Qt::FillRule fillRule = Qt::OddEvenFill )
//[2]void drawPolygon ( const QPoint * points, int pointCount, Qt::FillRule fillRule = Qt::OddEvenFill )
//[3]void drawPolygon ( const QPolygonF & points, Qt::FillRule fillRule = Qt::OddEvenFill )
//[4]void drawPolygon ( const QPolygon & points, Qt::FillRule fillRule = Qt::OddEvenFill )

HB_FUNC_STATIC( QPAINTER_DRAWPOLYGON )
{
  if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && ISOPTNUM(2) )
  {
    QPainter_drawPolygon3();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && ISOPTNUM(2) )
  {
    QPainter_drawPolygon4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPolyline ( const QPolygonF & points )
*/
$internalMethod=|void|drawPolyline,drawPolyline3|const QPolygonF &

/*
void drawPolyline ( const QPolygon & points )
*/
$internalMethod=|void|drawPolyline,drawPolyline4|const QPolygon &

//[1]void drawPolyline ( const QPointF * points, int pointCount )
//[2]void drawPolyline ( const QPoint * points, int pointCount )
//[3]void drawPolyline ( const QPolygonF & points )
//[4]void drawPolyline ( const QPolygon & points )

HB_FUNC_STATIC( QPAINTER_DRAWPOLYLINE )
{
  if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QPainter_drawPolyline3();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPainter_drawPolyline4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawRect ( const QRectF & rectangle )
*/
$internalMethod=|void|drawRect,drawRect1|const QRectF &

/*
void drawRect ( const QRect & rectangle )
*/
$internalMethod=|void|drawRect,drawRect2|const QRect &

/*
void drawRect ( int x, int y, int width, int height )
*/
$internalMethod=|void|drawRect,drawRect3|int,int,int,int

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
$internalMethod=|void|drawRoundedRect,drawRoundedRect1|const QRectF &,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

/*
void drawRoundedRect ( const QRect & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
$internalMethod=|void|drawRoundedRect,drawRoundedRect2|const QRect &,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

/*
void drawRoundedRect ( int x, int y, int w, int h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
$internalMethod=|void|drawRoundedRect,drawRoundedRect3|int,int,int,int,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

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
$internalMethod=|void|drawStaticText,drawStaticText1|const QPointF &,const QStaticText &

/*
void drawStaticText ( const QPoint & topLeftPosition, const QStaticText & staticText )
*/
$internalMethod=|void|drawStaticText,drawStaticText2|const QPoint &,const QStaticText &

/*
void drawStaticText ( int left, int top, const QStaticText & staticText )
*/
$internalMethod=|void|drawStaticText,drawStaticText3|int,int,const QStaticText &

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
$internalMethod=|void|drawText,drawText1|const QPointF &,const QString &

/*
void drawText ( const QPoint & position, const QString & text )
*/
$internalMethod=|void|drawText,drawText2|const QPoint &,const QString &

/*
void drawText ( const QRectF & rectangle, int flags, const QString & text, QRectF * boundingRect = 0 )
*/
%% TODO: corrigir codigo
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
%% TODO: corrigir codigo
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
$internalMethod=|void|drawText,drawText5|int,int,const QString &

/*
void drawText ( int x, int y, int width, int height, int flags, const QString & text, QRect * boundingRect = 0 )
*/
%% TODO: corrigir codigo
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
$internalMethod=|void|drawTiledPixmap,drawTiledPixmap3|int,int,int,int,const QPixmap &,int=0,int=0

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
$method=|bool|end|

/*
void endNativePainting ()
*/
$method=|void|endNativePainting|

/*
void eraseRect ( const QRectF & rectangle )
*/
$internalMethod=|void|eraseRect,eraseRect1|const QRectF &

/*
void eraseRect ( const QRect & rectangle )
*/
$internalMethod=|void|eraseRect,eraseRect2|const QRect &

/*
void eraseRect ( int x, int y, int width, int height )
*/
$internalMethod=|void|eraseRect,eraseRect3|int,int,int,int

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
$method=|void|fillPath|const QPainterPath &,const QBrush &

/*
void fillRect ( const QRectF & rectangle, const QBrush & brush )
*/
$internalMethod=|void|fillRect,fillRect1|const QRectF &,const QBrush &

/*
void fillRect ( int x, int y, int width, int height, Qt::BrushStyle style )
*/
$internalMethod=|void|fillRect,fillRect2|int,int,int,int,Qt::BrushStyle

/*
void fillRect ( const QRect & rectangle, Qt::BrushStyle style )
*/
$internalMethod=|void|fillRect,fillRect3|const QRect &,Qt::BrushStyle

/*
void fillRect ( const QRectF & rectangle, Qt::BrushStyle style )
*/
$internalMethod=|void|fillRect,fillRect4|const QRectF &,Qt::BrushStyle

/*
void fillRect ( const QRect & rectangle, const QBrush & brush )
*/
$internalMethod=|void|fillRect,fillRect5|const QRect &,const QBrush &

/*
void fillRect ( const QRect & rectangle, const QColor & color )
*/
$internalMethod=|void|fillRect,fillRect6|const QRect &,const QColor &

/*
void fillRect ( const QRectF & rectangle, const QColor & color )
*/
$internalMethod=|void|fillRect,fillRect7|const QRectF &,const QColor &

/*
void fillRect ( int x, int y, int width, int height, const QBrush & brush )
*/
$internalMethod=|void|fillRect,fillRect8|int,int,int,int,const QBrush &

/*
void fillRect ( int x, int y, int width, int height, const QColor & color )
*/
$internalMethod=|void|fillRect,fillRect9|int,int,int,int,const QColor &

/*
void fillRect ( int x, int y, int width, int height, Qt::GlobalColor color )
*/
$internalMethod=|void|fillRect,fillRect10|int,int,int,int,Qt::GlobalColor

/*
void fillRect ( const QRect & rectangle, Qt::GlobalColor color )
*/
$internalMethod=|void|fillRect,fillRect11|const QRect &,Qt::GlobalColor

/*
void fillRect ( const QRectF & rectangle, Qt::GlobalColor color )
*/
$internalMethod=|void|fillRect,fillRect12|const QRectF &,Qt::GlobalColor

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
$method=|QFontInfo|fontInfo|

/*
QFontMetrics fontMetrics () const
*/
$method=|QFontMetrics|fontMetrics|

/*
bool hasClipping () const
*/
$method=|bool|hasClipping|

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
Qt::LayoutDirection layoutDirection () const
*/
$method=|Qt::LayoutDirection|layoutDirection|

/*
qreal opacity () const
*/
$method=|qreal|opacity|

/*
QPaintEngine * paintEngine () const
*/
$method=|QPaintEngine *|paintEngine|

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
$method=|void|resetTransform|

/*
void restore ()
*/
$method=|void|restore|

/*
void rotate ( qreal angle )
*/
$method=|void|rotate|qreal

/*
void save ()
*/
$method=|void|save|

/*
void scale ( qreal sx, qreal sy )
*/
$method=|void|scale|qreal,qreal

/*
void setBackground ( const QBrush & brush )
*/
$method=|void|setBackground|const QBrush &

/*
void setBackgroundMode ( Qt::BGMode mode )
*/
$method=|void|setBackgroundMode|Qt::BGMode

/*
void setBrush ( const QBrush & brush )
*/
$internalMethod=|void|setBrush,setBrush1|const QBrush &

/*
void setBrush ( Qt::BrushStyle style )
*/
$internalMethod=|void|setBrush,setBrush2|Qt::BrushStyle

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
$internalMethod=|void|setBrushOrigin,setBrushOrigin1|const QPointF &

/*
void setBrushOrigin ( const QPoint & position )
*/
$internalMethod=|void|setBrushOrigin,setBrushOrigin2|const QPoint &

/*
void setBrushOrigin ( int x, int y )
*/
$internalMethod=|void|setBrushOrigin,setBrushOrigin3|int,int

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
$method=|void|setClipPath|const QPainterPath &,Qt::ClipOperation=Qt::ReplaceClip

/*
void setClipRect ( const QRectF & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
$internalMethod=|void|setClipRect,setClipRect1|const QRectF &,Qt::ClipOperation=Qt::ReplaceClip

/*
void setClipRect ( int x, int y, int width, int height, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
$internalMethod=|void|setClipRect,setClipRect2|int,int,int,int,Qt::ClipOperation=Qt::ReplaceClip

/*
void setClipRect ( const QRect & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
$internalMethod=|void|setClipRect,setClipRect3|const QRect &,Qt::ClipOperation=Qt::ReplaceClip

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
$method=|void|setClipRegion|const QRegion &,Qt::ClipOperation=Qt::ReplaceClip

/*
void setClipping ( bool enable )
*/
$method=|void|setClipping|bool

/*
void setCompositionMode ( CompositionMode mode )
*/
$method=|void|setCompositionMode|QPainter::CompositionMode

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
$method=|void|setLayoutDirection|Qt::LayoutDirection

/*
void setOpacity ( qreal opacity )
*/
$method=|void|setOpacity|qreal

/*
void setPen ( const QPen & pen )
*/
$internalMethod=|void|setPen,setPen1|const QPen &

/*
void setPen ( const QColor & color )
*/
$internalMethod=|void|setPen,setPen2|const QColor &

/*
void setPen ( Qt::PenStyle style )
*/
$internalMethod=|void|setPen,setPen3|Qt::PenStyle

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
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

/*
void setRenderHints ( RenderHints hints, bool on = true )
*/
$method=|void|setRenderHints|QPainter::RenderHints,bool=true

/*
void setTransform ( const QTransform & transform, bool combine = false )
*/
$method=|void|setTransform|const QTransform &,bool=false

/*
void setViewTransformEnabled ( bool enable )
*/
$method=|void|setViewTransformEnabled|bool

/*
void setViewport ( const QRect & rectangle )
*/
$internalMethod=|void|setViewport,setViewPort1|const QRect &

/*
void setViewport ( int x, int y, int width, int height )
*/
$internalMethod=|void|setViewport,setViewPort2|int,int,int,int

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
$internalMethod=|void|setWindow,setWindow1|const QRect &

/*
void setWindow ( int x, int y, int width, int height )
*/
$internalMethod=|void|setWindow,setWindow2|int,int,int,int

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
$method=|void|setWorldMatrixEnabled|bool

/*
void setWorldTransform ( const QTransform & matrix, bool combine = false )
*/
$method=|void|setWorldTransform|const QTransform &,bool=false

/*
void shear ( qreal sh, qreal sv )
*/
$method=|void|shear|qreal,qreal

/*
void strokePath ( const QPainterPath & path, const QPen & pen )
*/
$method=|void|strokePath|const QPainterPath &,const QPen &

/*
bool testRenderHint ( RenderHint hint ) const
*/
$method=|bool|testRenderHint|QPainter::RenderHint

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
$internalMethod=|void|translate,translate1|const QPointF &

/*
void translate ( const QPoint & offset )
*/
$internalMethod=|void|translate,translate2|const QPoint &

/*
void translate ( qreal dx, qreal dy )
*/
$internalMethod=|void|translate,translate3|qreal,qreal

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
$method=|bool|viewTransformEnabled|

/*
QRect viewport () const
*/
$method=|QRect|viewport|

/*
QRect window () const
*/
$method=|QRect|window|

/*
bool worldMatrixEnabled () const
*/
$method=|bool|worldMatrixEnabled|

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

$extraMethods

#pragma ENDDUMP
