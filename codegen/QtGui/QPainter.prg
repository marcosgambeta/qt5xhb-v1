%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPainter ()
$internalConstructor=|new1|

$prototype=QPainter ( QPaintDevice * device )
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

$prototype=const QBrush & background () const
$method=|const QBrush &|background|

$prototype=Qt::BGMode backgroundMode () const
$method=|Qt::BGMode|backgroundMode|

$prototype=bool begin ( QPaintDevice * device )
%% TODO: refinar identificacao dos objetos
$method=|bool|begin|QPaintDevice *

$prototype=void beginNativePainting ()
$method=|void|beginNativePainting|

$prototype=QRectF boundingRect ( const QRectF & rectangle, int flags, const QString & text )
$internalMethod=|QRectF|boundingRect,boundingRect1|const QRectF &,int,const QString &

$prototype=QRect boundingRect ( const QRect & rectangle, int flags, const QString & text )
$internalMethod=|QRect|boundingRect,boundingRect2|const QRect &,int,const QString &

$prototype=QRect boundingRect ( int x, int y, int w, int h, int flags, const QString & text )
$internalMethod=|QRect|boundingRect,boundingRect3|int,int,int,int,int,const QString &

$prototype=QRectF boundingRect ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )
$internalMethod=|QRectF|boundingRect,boundingRect4|const QRectF &,const QString &,const QTextOption &=QTextOption()

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
$addMethod=boundingRect

$prototype=const QBrush & brush () const
$method=|const QBrush &|brush|

$prototype=QPoint brushOrigin () const
$method=|QPoint|brushOrigin|

$prototype=QPainterPath clipPath () const
$method=|QPainterPath|clipPath|

$prototype=QRegion clipRegion () const
$method=|QRegion|clipRegion|

$prototype=QTransform combinedTransform () const
$method=|QTransform|combinedTransform|

$prototype=CompositionMode compositionMode () const
$method=|QPainter::CompositionMode|compositionMode|

$prototype=QPaintDevice * device () const
$method=|QPaintDevice *|device|

$prototype=const QTransform & deviceTransform () const
$method=|const QTransform &|deviceTransform|

$prototype=void drawArc ( const QRectF & rectangle, int startAngle, int spanAngle )
$internalMethod=|void|drawArc,drawArc1|const QRectF &,int,int

$prototype=void drawArc ( const QRect & rectangle, int startAngle, int spanAngle )
$internalMethod=|void|drawArc,drawArc2|const QRect &,int,int

$prototype=void drawArc ( int x, int y, int width, int height, int startAngle, int spanAngle )
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
$addMethod=drawArc

$prototype=void drawChord ( const QRectF & rectangle, int startAngle, int spanAngle )
$internalMethod=|void|drawChord,drawChord1|const QRectF &,int,int

$prototype=void drawChord ( const QRect & rectangle, int startAngle, int spanAngle )
$internalMethod=|void|drawChord,drawChord2|const QRect &,int,int

$prototype=void drawChord ( int x, int y, int width, int height, int startAngle, int spanAngle )
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
$addMethod=drawChord

$prototype=void drawConvexPolygon ( const QPolygonF & polygon )
$internalMethod=|void|drawConvexPolygon,drawConvexPolygon3|const QPolygonF &

$prototype=void drawConvexPolygon ( const QPolygon & polygon )
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
$addMethod=drawConvexPolygon

$prototype=void drawEllipse ( const QRectF & rectangle )
$internalMethod=|void|drawEllipse,drawEllipse1|const QRectF &

$prototype=void drawEllipse ( const QRect & rectangle )
$internalMethod=|void|drawEllipse,drawEllipse2|const QRect &

$prototype=void drawEllipse ( int x, int y, int width, int height )
$internalMethod=|void|drawEllipse,drawEllipse3|int,int,int,int

$prototype=void drawEllipse ( const QPointF & center, qreal rx, qreal ry )
$internalMethod=|void|drawEllipse,drawEllipse4|const QPointF &,qreal,qreal

$prototype=void drawEllipse ( const QPoint & center, int rx, int ry )
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
$addMethod=drawEllipse

$prototype=void drawImage ( const QRectF & target, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
$internalMethod=|void|drawImage,drawImage1|const QRectF &,const QImage &,const QRectF &,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=void drawImage ( const QRect & target, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
$internalMethod=|void|drawImage,drawImage2|const QRect &,const QImage &,const QRect &,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=void drawImage ( const QPointF & point, const QImage & image )
$internalMethod=|void|drawImage,drawImage3|const QPointF &,const QImage &

$prototype=void drawImage ( const QPoint & point, const QImage & image )
$internalMethod=|void|drawImage,drawImage4|const QPoint &,const QImage &

$prototype=void drawImage ( const QPointF & point, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
$internalMethod=|void|drawImage,drawImage5|const QPointF &,const QImage &,const QRectF &,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=void drawImage ( const QPoint & point, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
$internalMethod=|void|drawImage,drawImage6|const QPoint &,const QImage &,const QRect &,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=void drawImage ( const QRectF & rectangle, const QImage & image )
$internalMethod=|void|drawImage,drawImage7|const QRectF &,const QImage &

$prototype=void drawImage ( const QRect & rectangle, const QImage & image )
$internalMethod=|void|drawImage,drawImage8|const QRect &,const QImage &

$prototype=void drawImage ( int x, int y, const QImage & image, int sx = 0, int sy = 0, int sw = -1, int sh = -1, Qt::ImageConversionFlags flags = Qt::AutoColor )
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
$addMethod=drawImage

$prototype=void drawLine ( const QLineF & line )
$internalMethod=|void|drawLine,drawLine1|const QLineF &

$prototype=void drawLine ( const QLine & line )
$internalMethod=|void|drawLine,drawLine2|const QLine &

$prototype=void drawLine ( const QPoint & p1, const QPoint & p2 )
$internalMethod=|void|drawLine,drawLine3|const QPoint &,const QPoint &

$prototype=void drawLine ( const QPointF & p1, const QPointF & p2 )
$internalMethod=|void|drawLine,drawLine4|const QPointF &,const QPointF &

$prototype=void drawLine ( int x1, int y1, int x2, int y2 )
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
$addMethod=drawLine

$prototype=void drawLines ( const QVector<QPointF> & pointPairs )
$method=|void|drawLines,drawLines5|const QVector<QPointF> &

$prototype=void drawLines ( const QVector<QPoint> & pointPairs )
$method=|void|drawLines,drawLines6|const QVector<QPoint> &

$prototype=void drawLines ( const QVector<QLineF> & lines )
$method=|void|drawLines,drawLines7|const QVector<QLineF> &

$prototype=void drawLines ( const QVector<QLine> & lines )
$method=|void|drawLines,drawLines8|const QVector<QLine> &

//[1]void drawLines ( const QLineF * lines, int lineCount )
//[2]void drawLines ( const QLine * lines, int lineCount )
//[3]void drawLines ( const QPointF * pointPairs, int lineCount )
//[4]void drawLines ( const QPoint * pointPairs, int lineCount )
//[5]void drawLines ( const QVector<QPointF> & pointPairs )
//[6]void drawLines ( const QVector<QPoint> & pointPairs )
//[7]void drawLines ( const QVector<QLineF> & lines )
//[8]void drawLines ( const QVector<QLine> & lines )

%% TODO: implementar
HB_FUNC_STATIC( QPAINTER_DRAWLINES )
{
}
$addMethod=drawLines

$prototype=void drawPath ( const QPainterPath & path )
$method=|void|drawPath|const QPainterPath &

$prototype=void drawPicture ( const QPointF & point, const QPicture & picture )
$internalMethod=|void|drawPicture,drawPicture1|const QPointF &,const QPicture &

$prototype=void drawPicture ( const QPoint & point, const QPicture & picture )
$internalMethod=|void|drawPicture,drawPicture2|const QPoint &,const QPicture &

$prototype=void drawPicture ( int x, int y, const QPicture & picture )
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
$addMethod=drawPicture

$prototype=void drawPie ( const QRectF & rectangle, int startAngle, int spanAngle )
$internalMethod=|void|drawPie,drawPie1|const QRectF &,int,int

$prototype=void drawPie ( const QRect & rectangle, int startAngle, int spanAngle )
$internalMethod=|void|drawPie,drawPie2|const QRect &,int,int

$prototype=void drawPie ( int x, int y, int width, int height, int startAngle, int spanAngle )
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
$addMethod=drawPie

$prototype=void drawPixmap ( const QRectF & target, const QPixmap & pixmap, const QRectF & source )
$internalMethod=|void|drawPixmap,drawPixmap1|const QRectF &,const QPixmap &,const QRectF &

$prototype=void drawPixmap ( const QRect & target, const QPixmap & pixmap, const QRect & source )
$internalMethod=|void|drawPixmap,drawPixmap2|const QRect &,const QPixmap &,const QRect &

$prototype=void drawPixmap ( const QPointF & point, const QPixmap & pixmap, const QRectF & source )
$internalMethod=|void|drawPixmap,drawPixmap3|const QPointF &,const QPixmap &,const QRectF &

$prototype=void drawPixmap ( const QPoint & point, const QPixmap & pixmap, const QRect & source )
$internalMethod=|void|drawPixmap,drawPixmap4|const QPoint &,const QPixmap &,const QRect &

$prototype=void drawPixmap ( const QPointF & point, const QPixmap & pixmap )
$internalMethod=|void|drawPixmap,drawPixmap5|const QPointF &,const QPixmap &

$prototype=void drawPixmap ( const QPoint & point, const QPixmap & pixmap )
$internalMethod=|void|drawPixmap,drawPixmap6|const QPoint &,const QPixmap &

$prototype=void drawPixmap ( int x, int y, const QPixmap & pixmap )
$internalMethod=|void|drawPixmap,drawPixmap7|int,int,const QPixmap &

$prototype=void drawPixmap ( const QRect & rectangle, const QPixmap & pixmap )
$internalMethod=|void|drawPixmap,drawPixmap8|const QRect &,const QPixmap &

$prototype=void drawPixmap ( int x, int y, int width, int height, const QPixmap & pixmap )
$internalMethod=|void|drawPixmap,drawPixmap9|int,int,int,int,const QPixmap &

$prototype=void drawPixmap ( int x, int y, int w, int h, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
$internalMethod=|void|drawPixmap,drawPixmap10|int,int,int,int,const QPixmap &,int,int,int,int

$prototype=void drawPixmap ( int x, int y, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
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
$addMethod=drawPixmap

$prototype=void drawPoint ( const QPointF & position )
$internalMethod=|void|drawPoint,drawPoint1|const QPointF &

$prototype=void drawPoint ( const QPoint & position )
$internalMethod=|void|drawPoint,drawPoint2|const QPoint &

$prototype=void drawPoint ( int x, int y )
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
$addMethod=drawPoint

$prototype=void drawPoints ( const QPolygonF & points )
$internalMethod=|void|drawPoints,drawPoints3|const QPolygonF &

$prototype=void drawPoints ( const QPolygon & points )
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
$addMethod=drawPoints

$prototype=void drawPolygon ( const QPolygonF & points, Qt::FillRule fillRule = Qt::OddEvenFill )
$internalMethod=|void|drawPolygon,drawPolygon3|const QPolygonF &,Qt::FillRule=Qt::OddEvenFill

$prototype=void drawPolygon ( const QPolygon & points, Qt::FillRule fillRule = Qt::OddEvenFill )
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
$addMethod=drawPolygon

$prototype=void drawPolyline ( const QPolygonF & points )
$internalMethod=|void|drawPolyline,drawPolyline3|const QPolygonF &

$prototype=void drawPolyline ( const QPolygon & points )
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
$addMethod=drawPolyline

$prototype=void drawRect ( const QRectF & rectangle )
$internalMethod=|void|drawRect,drawRect1|const QRectF &

$prototype=void drawRect ( const QRect & rectangle )
$internalMethod=|void|drawRect,drawRect2|const QRect &

$prototype=void drawRect ( int x, int y, int width, int height )
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
$addMethod=drawRect

$prototype=void drawRects ( const QVector<QRectF> & rectangles )
$method=|void|drawRects,drawRects3|const QVector<QRectF> &

$prototype=void drawRects ( const QVector<QRect> & rectangles )
$method=|void|drawRects,drawRects4|const QVector<QRect> &

//[1]void drawRects ( const QRectF * rectangles, int rectCount )
//[2]void drawRects ( const QRect * rectangles, int rectCount )
//[3]void drawRects ( const QVector<QRectF> & rectangles )
//[4]void drawRects ( const QVector<QRect> & rectangles )

HB_FUNC_STATIC( QPAINTER_DRAWRECTS )
{
}
$addMethod=drawRects

$prototype=void drawRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
$internalMethod=|void|drawRoundedRect,drawRoundedRect1|const QRectF &,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

$prototype=void drawRoundedRect ( const QRect & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
$internalMethod=|void|drawRoundedRect,drawRoundedRect2|const QRect &,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

$prototype=void drawRoundedRect ( int x, int y, int w, int h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
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
$addMethod=drawRoundedRect

$prototype=void drawStaticText ( const QPointF & topLeftPosition, const QStaticText & staticText )
$internalMethod=|void|drawStaticText,drawStaticText1|const QPointF &,const QStaticText &

$prototype=void drawStaticText ( const QPoint & topLeftPosition, const QStaticText & staticText )
$internalMethod=|void|drawStaticText,drawStaticText2|const QPoint &,const QStaticText &

$prototype=void drawStaticText ( int left, int top, const QStaticText & staticText )
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
$addMethod=drawStaticText

$prototype=void drawText ( const QPointF & position, const QString & text )
$internalMethod=|void|drawText,drawText1|const QPointF &,const QString &

$prototype=void drawText ( const QPoint & position, const QString & text )
$internalMethod=|void|drawText,drawText2|const QPoint &,const QString &

$prototype=void drawText ( const QRectF & rectangle, int flags, const QString & text, QRectF * boundingRect = 0 )
%% TODO: corrigir codigo
$internalMethod=|void|drawText,drawText3|const QRectF &,int,const QString &,QRectF *=0

$prototype=void drawText ( const QRect & rectangle, int flags, const QString & text, QRect * boundingRect = 0 )
%% TODO: corrigir codigo
$internalMethod=|void|drawText,drawText4|const QRect &,int,const QString &,QRect *=0

$prototype=void drawText ( int x, int y, const QString & text )
$internalMethod=|void|drawText,drawText5|int,int,const QString &

$prototype=void drawText ( int x, int y, int width, int height, int flags, const QString & text, QRect * boundingRect = 0 )
%% TODO: corrigir codigo
$internalMethod=|void|drawText,drawText6|int,int,int,int,int,const QString &,QRect *=0

$prototype=void drawText ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )
$internalMethod=|void|drawText,drawText7|const QRectF &,const QString &,const QTextOption &=QTextOption()

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
$addMethod=drawText

$prototype=void drawTiledPixmap ( const QRectF & rectangle, const QPixmap & pixmap, const QPointF & position = QPointF() )
$internalMethod=|void|drawTiledPixmap,drawTiledPixmap1|const QRectF &,const QPixmap &,const QPointF &=QPointF()

$prototype=void drawTiledPixmap ( const QRect & rectangle, const QPixmap & pixmap, const QPoint & position = QPoint() )
$internalMethod=|void|drawTiledPixmap,drawTiledPixmap2|const QRect &,const QPixmap &,const QPoint &=QPoint()

$prototype=void drawTiledPixmap ( int x, int y, int width, int height, const QPixmap & pixmap, int sx = 0, int sy = 0 )
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
$addMethod=drawTiledPixmap

$prototype=bool end ()
$method=|bool|end|

$prototype=void endNativePainting ()
$method=|void|endNativePainting|

$prototype=void eraseRect ( const QRectF & rectangle )
$internalMethod=|void|eraseRect,eraseRect1|const QRectF &

$prototype=void eraseRect ( const QRect & rectangle )
$internalMethod=|void|eraseRect,eraseRect2|const QRect &

$prototype=void eraseRect ( int x, int y, int width, int height )
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
$addMethod=eraseRect

$prototype=void fillPath ( const QPainterPath & path, const QBrush & brush )
$method=|void|fillPath|const QPainterPath &,const QBrush &

$prototype=void fillRect ( const QRectF & rectangle, const QBrush & brush )
$internalMethod=|void|fillRect,fillRect1|const QRectF &,const QBrush &

$prototype=void fillRect ( int x, int y, int width, int height, Qt::BrushStyle style )
$internalMethod=|void|fillRect,fillRect2|int,int,int,int,Qt::BrushStyle

$prototype=void fillRect ( const QRect & rectangle, Qt::BrushStyle style )
$internalMethod=|void|fillRect,fillRect3|const QRect &,Qt::BrushStyle

$prototype=void fillRect ( const QRectF & rectangle, Qt::BrushStyle style )
$internalMethod=|void|fillRect,fillRect4|const QRectF &,Qt::BrushStyle

$prototype=void fillRect ( const QRect & rectangle, const QBrush & brush )
$internalMethod=|void|fillRect,fillRect5|const QRect &,const QBrush &

$prototype=void fillRect ( const QRect & rectangle, const QColor & color )
$internalMethod=|void|fillRect,fillRect6|const QRect &,const QColor &

$prototype=void fillRect ( const QRectF & rectangle, const QColor & color )
$internalMethod=|void|fillRect,fillRect7|const QRectF &,const QColor &

$prototype=void fillRect ( int x, int y, int width, int height, const QBrush & brush )
$internalMethod=|void|fillRect,fillRect8|int,int,int,int,const QBrush &

$prototype=void fillRect ( int x, int y, int width, int height, const QColor & color )
$internalMethod=|void|fillRect,fillRect9|int,int,int,int,const QColor &

$prototype=void fillRect ( int x, int y, int width, int height, Qt::GlobalColor color )
$internalMethod=|void|fillRect,fillRect10|int,int,int,int,Qt::GlobalColor

$prototype=void fillRect ( const QRect & rectangle, Qt::GlobalColor color )
$internalMethod=|void|fillRect,fillRect11|const QRect &,Qt::GlobalColor

$prototype=void fillRect ( const QRectF & rectangle, Qt::GlobalColor color )
$internalMethod=|void|fillRect,fillRect12|const QRectF &,Qt::GlobalColor

$prototype=void fillRect(int x, int y, int width, int height, QGradient::Preset preset)
$internalMethod=5,12,0|void|fillRect,fillRect13|int,int,int,int,QGradient::Preset

$prototype=void fillRect ( const QRect &rectangle, QGradient::Preset preset)
$internalMethod=5,12,0|void|fillRect,fillRect14|const QRect &,QGradient::Preset

$prototype=void fillRect(const QRectF &rectangle, QGradient::Preset preset)
$internalMethod=5,12,0|void|fillRect,fillRect15|const QRectF &,QGradient::Preset

%% TODO: resolver conflitos
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
//[13]void fillRect ( int x, int y, int width, int height, QGradient::Preset preset )
//[14]void fillRect ( const QRect &rectangle, QGradient::Preset preset )
//[15]void fillRect ( const QRectF &rectangle, QGradient::Preset preset )

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
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QPainter_fillRect13();
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISNUM(2) )
  {
    QPainter_fillRect14();
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    QPainter_fillRect15();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fillRect

$prototype=const QFont & font () const
$method=|const QFont &|font|

$prototype=QFontInfo fontInfo () const
$method=|QFontInfo|fontInfo|

$prototype=QFontMetrics fontMetrics () const
$method=|QFontMetrics|fontMetrics|

$prototype=bool hasClipping () const
$method=|bool|hasClipping|

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=Qt::LayoutDirection layoutDirection () const
$method=|Qt::LayoutDirection|layoutDirection|

$prototype=qreal opacity () const
$method=|qreal|opacity|

$prototype=QPaintEngine * paintEngine () const
$method=|QPaintEngine *|paintEngine|

$prototype=const QPen & pen () const
$method=|const QPen &|pen|

$prototype=RenderHints renderHints () const
$method=|QPainter::RenderHints|renderHints|

$prototype=void resetTransform ()
$method=|void|resetTransform|

$prototype=void restore ()
$method=|void|restore|

$prototype=void rotate ( qreal angle )
$method=|void|rotate|qreal

$prototype=void save ()
$method=|void|save|

$prototype=void scale ( qreal sx, qreal sy )
$method=|void|scale|qreal,qreal

$prototype=void setBackground ( const QBrush & brush )
$method=|void|setBackground|const QBrush &

$prototype=void setBackgroundMode ( Qt::BGMode mode )
$method=|void|setBackgroundMode|Qt::BGMode

$prototype=void setBrush ( const QBrush & brush )
$internalMethod=|void|setBrush,setBrush1|const QBrush &

$prototype=void setBrush ( Qt::BrushStyle style )
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
$addMethod=setBrush

$prototype=void setBrushOrigin ( const QPointF & position )
$internalMethod=|void|setBrushOrigin,setBrushOrigin1|const QPointF &

$prototype=void setBrushOrigin ( const QPoint & position )
$internalMethod=|void|setBrushOrigin,setBrushOrigin2|const QPoint &

$prototype=void setBrushOrigin ( int x, int y )
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
$addMethod=setBrushOrigin

$prototype=void setClipPath ( const QPainterPath & path, Qt::ClipOperation operation = Qt::ReplaceClip )
$method=|void|setClipPath|const QPainterPath &,Qt::ClipOperation=Qt::ReplaceClip

$prototype=void setClipRect ( const QRectF & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
$internalMethod=|void|setClipRect,setClipRect1|const QRectF &,Qt::ClipOperation=Qt::ReplaceClip

$prototype=void setClipRect ( int x, int y, int width, int height, Qt::ClipOperation operation = Qt::ReplaceClip )
$internalMethod=|void|setClipRect,setClipRect2|int,int,int,int,Qt::ClipOperation=Qt::ReplaceClip

$prototype=void setClipRect ( const QRect & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
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
$addMethod=setClipRect

$prototype=void setClipRegion ( const QRegion & region, Qt::ClipOperation operation = Qt::ReplaceClip )
$method=|void|setClipRegion|const QRegion &,Qt::ClipOperation=Qt::ReplaceClip

$prototype=void setClipping ( bool enable )
$method=|void|setClipping|bool

$prototype=void setCompositionMode ( CompositionMode mode )
$method=|void|setCompositionMode|QPainter::CompositionMode

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setLayoutDirection ( Qt::LayoutDirection direction )
$method=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=void setOpacity ( qreal opacity )
$method=|void|setOpacity|qreal

$prototype=void setPen ( const QPen & pen )
$internalMethod=|void|setPen,setPen1|const QPen &

$prototype=void setPen ( const QColor & color )
$internalMethod=|void|setPen,setPen2|const QColor &

$prototype=void setPen ( Qt::PenStyle style )
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
$addMethod=setPen

$prototype=void setRenderHint ( RenderHint hint, bool on = true )
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

$prototype=void setRenderHints ( RenderHints hints, bool on = true )
$method=|void|setRenderHints|QPainter::RenderHints,bool=true

$prototype=void setTransform ( const QTransform & transform, bool combine = false )
$method=|void|setTransform|const QTransform &,bool=false

$prototype=void setViewTransformEnabled ( bool enable )
$method=|void|setViewTransformEnabled|bool

$prototype=void setViewport ( const QRect & rectangle )
$internalMethod=|void|setViewport,setViewport1|const QRect &

$prototype=void setViewport ( int x, int y, int width, int height )
$internalMethod=|void|setViewport,setViewport2|int,int,int,int

//[1]void setViewport ( const QRect & rectangle )
//[2]void setViewport ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_SETVIEWPORT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPainter_setViewport1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainter_setViewport2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setViewport

$prototype=void setWindow ( const QRect & rectangle )
$internalMethod=|void|setWindow,setWindow1|const QRect &

$prototype=void setWindow ( int x, int y, int width, int height )
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
$addMethod=setWindow

$prototype=void setWorldMatrixEnabled ( bool enable )
$method=|void|setWorldMatrixEnabled|bool

$prototype=void setWorldTransform ( const QTransform & matrix, bool combine = false )
$method=|void|setWorldTransform|const QTransform &,bool=false

$prototype=void shear ( qreal sh, qreal sv )
$method=|void|shear|qreal,qreal

$prototype=void strokePath ( const QPainterPath & path, const QPen & pen )
$method=|void|strokePath|const QPainterPath &,const QPen &

$prototype=bool testRenderHint ( RenderHint hint ) const
$method=|bool|testRenderHint|QPainter::RenderHint

$prototype=const QTransform & transform () const
$method=|const QTransform &|transform|

$prototype=void translate ( const QPointF & offset )
$internalMethod=|void|translate,translate1|const QPointF &

$prototype=void translate ( const QPoint & offset )
$internalMethod=|void|translate,translate2|const QPoint &

$prototype=void translate ( qreal dx, qreal dy )
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
$addMethod=translate

$prototype=bool viewTransformEnabled () const
$method=|bool|viewTransformEnabled|

$prototype=QRect viewport () const
$method=|QRect|viewport|

$prototype=QRect window () const
$method=|QRect|window|

$prototype=bool worldMatrixEnabled () const
$method=|bool|worldMatrixEnabled|

$prototype=const QTransform & worldTransform () const
$method=|const QTransform &|worldTransform|

$extraMethods

#pragma ENDDUMP
