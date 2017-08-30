$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTERPATH
#endif

CLASS QPainterPathStroker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD capStyle
   METHOD createStroke
   METHOD curveThreshold
   METHOD dashOffset
   METHOD dashPattern
   METHOD joinStyle
   METHOD miterLimit
   METHOD setCapStyle
   METHOD setCurveThreshold
   METHOD setDashOffset
   METHOD setDashPattern
   METHOD setJoinStyle
   METHOD setMiterLimit
   METHOD setWidth
   METHOD width

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
QPainterPathStroker ()
*/
$internalConstructor=|new1|

/*
QPainterPathStroker( const QPen & pen )
*/
$internalConstructor=5,3,0|new2|const QPen &

//[1]QPainterPathStroker ()
//[2]QPainterPathStroker( const QPen & pen )

HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPainterPathStroker_new1();
  }
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  else if( ISNUMPAR(1) && ISQPEN(1) )
  {
    QPainterPathStroker_new2();
  }
#endif
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::PenCapStyle capStyle () const
*/
$method=|Qt::PenCapStyle|capStyle|

/*
QPainterPath createStroke ( const QPainterPath & path ) const
*/
$method=|QPainterPath|createStroke|const QPainterPath &

/*
qreal curveThreshold () const
*/
$method=|qreal|curveThreshold|

/*
qreal dashOffset () const
*/
$method=|qreal|dashOffset|

/*
QVector<qreal> dashPattern () const
*/
$method=|QVector<qreal>|dashPattern|

/*
Qt::PenJoinStyle joinStyle () const
*/
$method=|Qt::PenJoinStyle|joinStyle|

/*
qreal miterLimit () const
*/
$method=|qreal|miterLimit|

/*
void setCapStyle ( Qt::PenCapStyle style )
*/
$method=|void|setCapStyle|Qt::PenCapStyle

/*
void setCurveThreshold ( qreal threshold )
*/
$method=|void|setCurveThreshold|qreal

/*
void setDashOffset ( qreal offset )
*/
$method=|void|setDashOffset|qreal

/*
void setDashPattern ( Qt::PenStyle style )
*/
$internalMethod=|void|setDashPattern,setDashPattern1|Qt::PenStyle

/*
void setDashPattern ( const QVector<qreal> & dashPattern )
*/
$internalMethod=|void|setDashPattern,setDashPattern2|const QVector<qreal> &

//[1]void setDashPattern ( Qt::PenStyle style )
//[2]void setDashPattern ( const QVector<qreal> & dashPattern )

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPainterPathStroker_setDashPattern1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPainterPathStroker_setDashPattern2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setJoinStyle ( Qt::PenJoinStyle style )
*/
$method=|void|setJoinStyle|Qt::PenJoinStyle

/*
void setMiterLimit ( qreal limit )
*/
$method=|void|setMiterLimit|qreal

/*
void setWidth ( qreal width )
*/
$method=|void|setWidth|qreal

/*
qreal width () const
*/
$method=|qreal|width|

$extraMethods

#pragma ENDDUMP
