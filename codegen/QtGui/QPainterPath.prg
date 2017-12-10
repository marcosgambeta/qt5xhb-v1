$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOINTF
REQUEST QPOLYGONF
#endif

CLASS QPainterPath

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addEllipse
   METHOD addPath
   METHOD addPolygon
   METHOD addRect
   METHOD addRegion
   METHOD addRoundedRect
   METHOD addText
   METHOD angleAtPercent
   METHOD arcMoveTo
   METHOD arcTo
   METHOD boundingRect
   METHOD closeSubpath
   METHOD connectPath
   METHOD contains
   METHOD controlPointRect
   METHOD cubicTo
   METHOD currentPosition
   METHOD elementCount
   METHOD fillRule
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD length
   METHOD lineTo
   METHOD moveTo
   METHOD percentAtLength
   METHOD pointAtPercent
   METHOD quadTo
   METHOD setElementPositionAt
   METHOD setFillRule
   METHOD simplified
   METHOD slopeAtPercent
   METHOD subtracted
   METHOD swap
   METHOD toFillPolygon
   METHOD toReversed
   METHOD translate
   METHOD translated
   METHOD united

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

$prototype=QPainterPath ()
$internalConstructor=|new1|

$prototype=QPainterPath ( const QPointF & startPoint )
$internalConstructor=|new2|const QPointF &

$prototype=QPainterPath ( const QPainterPath & path )
$internalConstructor=|new3|const QPainterPath &

//[1]QPainterPath ()
//[2]QPainterPath ( const QPointF & startPoint )
//[3]QPainterPath ( const QPainterPath & path )

HB_FUNC_STATIC( QPAINTERPATH_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPainterPath_new1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_new2();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QPainterPath_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addEllipse ( const QRectF & boundingRectangle )
$internalMethod=|void|addEllipse,addEllipse1|const QRectF &

$prototype=void addEllipse ( qreal x, qreal y, qreal width, qreal height )
$internalMethod=|void|addEllipse,addEllipse2|qreal,qreal,qreal,qreal

$prototype=void addEllipse ( const QPointF & center, qreal rx, qreal ry )
$internalMethod=|void|addEllipse,addEllipse3|const QPointF &,qreal,qreal

//[1]void addEllipse ( const QRectF & boundingRectangle )
//[2]void addEllipse ( qreal x, qreal y, qreal width, qreal height )
//[3]void addEllipse ( const QPointF & center, qreal rx, qreal ry )

HB_FUNC_STATIC( QPAINTERPATH_ADDELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_addEllipse1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainterPath_addEllipse2();
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainterPath_addEllipse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void addPath ( const QPainterPath & path )
$method=|void|addPath|const QPainterPath &

$prototype=void addPolygon ( const QPolygonF & polygon )
$method=|void|addPolygon|const QPolygonF &

$prototype=void addRect ( const QRectF & rectangle )
$internalMethod=|void|addRect,addRect1|const QRectF &

$prototype=void addRect ( qreal x, qreal y, qreal width, qreal height )
$internalMethod=|void|addRect,addRect2|qreal,qreal,qreal,qreal

//[1]void addRect ( const QRectF & rectangle )
//[2]void addRect ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QPAINTERPATH_ADDRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_addRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainterPath_addRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void addRegion ( const QRegion & region )
$method=|void|addRegion|const QRegion &

$prototype=void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
$internalMethod=|void|addRoundedRect,addRoundedRect1|const QRectF &,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

$prototype=void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
$internalMethod=|void|addRoundedRect,addRoundedRect2|qreal,qreal,qreal,qreal,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

//[1]void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[2]void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )

HB_FUNC_STATIC( QPAINTERPATH_ADDROUNDEDRECT )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QPainterPath_addRoundedRect1();
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISOPTNUM(7) )
  {
    QPainterPath_addRoundedRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void addText ( const QPointF & point, const QFont & font, const QString & text )
$internalMethod=|void|addText,addText1|const QPointF &,const QFont &,const QString &

$prototype=void addText ( qreal x, qreal y, const QFont & font, const QString & text )
$internalMethod=|void|addText,addText2|qreal,qreal,const QFont &,const QString &

//[1]void addText ( const QPointF & point, const QFont & font, const QString & text )
//[2]void addText ( qreal x, qreal y, const QFont & font, const QString & text )

HB_FUNC_STATIC( QPAINTERPATH_ADDTEXT )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQFONT(2) && ISCHAR(3) )
  {
    QPainterPath_addText1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISQFONT(3) && ISCHAR(4) )
  {
    QPainterPath_addText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=qreal angleAtPercent ( qreal t ) const
$method=|qreal|angleAtPercent|qreal

$prototype=void arcMoveTo ( const QRectF & rectangle, qreal angle )
$internalMethod=|void|arcMoveTo,arcMoveTo1|const QRectF &,qreal

$prototype=void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )
$internalMethod=|void|arcMoveTo,arcMoveTo2|qreal,qreal,qreal,qreal,qreal

//[1]void arcMoveTo ( const QRectF & rectangle, qreal angle )
//[2]void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )

HB_FUNC_STATIC( QPAINTERPATH_ARCMOVETO )
{
  if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    QPainterPath_arcMoveTo1();
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QPainterPath_arcMoveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
$internalMethod=|void|arcTo,arcTo1|const QRectF &,qreal,qreal

$prototype=void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )
$internalMethod=|void|arcTo,arcTo2|qreal,qreal,qreal,qreal,qreal,qreal

//[1]void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
//[2]void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )

HB_FUNC_STATIC( QPAINTERPATH_ARCTO )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainterPath_arcTo1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPainterPath_arcTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRectF boundingRect () const
$method=|QRectF|boundingRect|

$prototype=void closeSubpath ()
$method=|void|closeSubpath|

$prototype=void connectPath ( const QPainterPath & path )
$method=|void|connectPath|const QPainterPath &

$prototype=bool contains ( const QPointF & point ) const
$internalMethod=|bool|contains,contains1|const QPointF &

$prototype=bool contains ( const QRectF & rectangle ) const
$internalMethod=|bool|contains,contains2|const QRectF &

$prototype=bool contains ( const QPainterPath & p ) const
$internalMethod=|bool|contains,contains3|const QPainterPath &

//[1]bool contains ( const QPointF & point ) const
//[2]bool contains ( const QRectF & rectangle ) const
//[3]bool contains ( const QPainterPath & p ) const

HB_FUNC_STATIC( QPAINTERPATH_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_contains1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_contains2();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QPainterPath_contains3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRectF controlPointRect () const
$method=|QRectF|controlPointRect|

$prototype=void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
$internalMethod=|void|cubicTo,cubicTo1|const QPointF &,const QPointF &,const QPointF &

$prototype=void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )
$internalMethod=|void|cubicTo,cubicTo2|qreal,qreal,qreal,qreal,qreal,qreal

//[1]void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
//[2]void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )

HB_FUNC_STATIC( QPAINTERPATH_CUBICTO )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) )
  {
    QPainterPath_cubicTo1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPainterPath_cubicTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPointF currentPosition () const
$method=|QPointF|currentPosition|

$prototype=int elementCount () const
$method=|int|elementCount|

$prototype=Qt::FillRule fillRule () const
$method=|Qt::FillRule|fillRule|

$prototype=QPainterPath intersected ( const QPainterPath & p ) const
$method=|QPainterPath|intersected|const QPainterPath &

$prototype=bool intersects ( const QRectF & rectangle ) const
$internalMethod=|bool|intersects,intersects1|const QRectF &

$prototype=bool intersects ( const QPainterPath & p ) const
$internalMethod=|bool|intersects,intersects2|const QPainterPath &

//[1]bool intersects ( const QRectF & rectangle ) const
//[2]bool intersects ( const QPainterPath & p ) const

HB_FUNC_STATIC( QPAINTERPATH_INTERSECTS )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_intersects1();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QPainterPath_intersects2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=qreal length () const
$method=|qreal|length|

$prototype=void lineTo ( const QPointF & endPoint )
$internalMethod=|void|lineTo,lineTo1|const QPointF &

$prototype=void lineTo ( qreal x, qreal y )
$internalMethod=|void|lineTo,lineTo2|qreal,qreal

//[1]void lineTo ( const QPointF & endPoint )
//[2]void lineTo ( qreal x, qreal y )

HB_FUNC_STATIC( QPAINTERPATH_LINETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_lineTo1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_lineTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void moveTo ( const QPointF & point )
$internalMethod=|void|moveTo,moveTo1|const QPointF &

$prototype=void moveTo ( qreal x, qreal y )
$internalMethod=|void|moveTo,moveTo2|qreal,qreal

//[1]void moveTo ( const QPointF & point )
//[2]void moveTo ( qreal x, qreal y )

HB_FUNC_STATIC( QPAINTERPATH_MOVETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_moveTo1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_moveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=qreal percentAtLength ( qreal len ) const
$method=|qreal|percentAtLength|qreal

$prototype=QPointF pointAtPercent ( qreal t ) const
$method=|QPointF|pointAtPercent|qreal

$prototype=void quadTo ( const QPointF & c, const QPointF & endPoint )
$internalMethod=|void|quadTo,quadTo1|const QPointF &,const QPointF &

$prototype=void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )
$internalMethod=|void|quadTo,quadTo2|qreal,qreal,qreal,qreal

//[1]void quadTo ( const QPointF & c, const QPointF & endPoint )
//[2]void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )

HB_FUNC_STATIC( QPAINTERPATH_QUADTO )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QPainterPath_quadTo1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainterPath_quadTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setElementPositionAt ( int index, qreal x, qreal y )
$method=|void|setElementPositionAt|int,qreal,qreal

$prototype=void setFillRule ( Qt::FillRule fillRule )
$method=|void|setFillRule|Qt::FillRule

$prototype=QPainterPath simplified () const
$method=|QPainterPath|simplified|

$prototype=qreal slopeAtPercent ( qreal t ) const
$method=|qreal|slopeAtPercent|qreal

$prototype=QPainterPath subtracted ( const QPainterPath & p ) const
$method=|QPainterPath|subtracted|const QPainterPath &

$prototype=void swap ( QPainterPath & other )
$method=|void|swap|QPainterPath &

$prototype=QPolygonF toFillPolygon ( const QTransform & matrix ) const
$internalMethod=|QPolygonF|toFillPolygon,toFillPolygon1|const QTransform &

$prototype=QPolygonF toFillPolygon ( const QMatrix & matrix = QMatrix() ) const
$internalMethod=|QPolygonF|toFillPolygon,toFillPolygon2|const QMatrix &=QMatrix()

//[1]QPolygonF toFillPolygon ( const QTransform & matrix ) const
//[2]QPolygonF toFillPolygon ( const QMatrix & matrix = QMatrix() ) const

HB_FUNC_STATIC( QPAINTERPATH_TOFILLPOLYGON )
{
  if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    QPainterPath_toFillPolygon1();
  }
  else if( ISBETWEEN(0,1) && ISQMATRIX(1) )
  {
    QPainterPath_toFillPolygon2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPainterPath toReversed () const
$method=|QPainterPath|toReversed|

$prototype=void translate ( qreal dx, qreal dy )
$internalMethod=|void|translate,translate1|qreal,qreal

$prototype=void translate ( const QPointF & offset )
$internalMethod=|void|translate,translate2|const QPointF &

//[1]void translate ( qreal dx, qreal dy )
//[2]void translate ( const QPointF & offset )

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPainterPath translated ( qreal dx, qreal dy ) const
$internalMethod=|QPainterPath|translated,translated1|qreal,qreal

$prototype=QPainterPath translated ( const QPointF & offset ) const
$internalMethod=|QPainterPath|translated,translated2|const QPointF &

//[1]QPainterPath translated ( qreal dx, qreal dy ) const
//[2]QPainterPath translated ( const QPointF & offset ) const

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPainterPath united ( const QPainterPath & p ) const
$method=|QPainterPath|united|const QPainterPath &

$extraMethods

#pragma ENDDUMP
