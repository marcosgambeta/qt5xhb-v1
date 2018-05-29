%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPainterPathStroker ()
$internalConstructor=|new1|

$prototype=QPainterPathStroker( const QPen & pen )
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

$prototype=Qt::PenCapStyle capStyle () const
$method=|Qt::PenCapStyle|capStyle|

$prototype=QPainterPath createStroke ( const QPainterPath & path ) const
$method=|QPainterPath|createStroke|const QPainterPath &

$prototype=qreal curveThreshold () const
$method=|qreal|curveThreshold|

$prototype=qreal dashOffset () const
$method=|qreal|dashOffset|

$prototype=QVector<qreal> dashPattern () const
$method=|QVector<qreal>|dashPattern|

$prototype=Qt::PenJoinStyle joinStyle () const
$method=|Qt::PenJoinStyle|joinStyle|

$prototype=qreal miterLimit () const
$method=|qreal|miterLimit|

$prototype=void setCapStyle ( Qt::PenCapStyle style )
$method=|void|setCapStyle|Qt::PenCapStyle

$prototype=void setCurveThreshold ( qreal threshold )
$method=|void|setCurveThreshold|qreal

$prototype=void setDashOffset ( qreal offset )
$method=|void|setDashOffset|qreal

$prototype=void setDashPattern ( Qt::PenStyle style )
$internalMethod=|void|setDashPattern,setDashPattern1|Qt::PenStyle

$prototype=void setDashPattern ( const QVector<qreal> & dashPattern )
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

$prototype=void setJoinStyle ( Qt::PenJoinStyle style )
$method=|void|setJoinStyle|Qt::PenJoinStyle

$prototype=void setMiterLimit ( qreal limit )
$method=|void|setMiterLimit|qreal

$prototype=void setWidth ( qreal width )
$method=|void|setWidth|qreal

$prototype=qreal width () const
$method=|qreal|width|

$extraMethods

#pragma ENDDUMP
