%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsEffect

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsDropShadowEffect ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=qreal blurRadius () const
$method=|qreal|blurRadius|

$prototype=QColor color () const
$method=|QColor|color|

$prototype=QPointF offset () const
$method=|QPointF|offset|

$prototype=qreal xOffset () const
$method=|qreal|xOffset|

$prototype=qreal yOffset () const
$method=|qreal|yOffset|

$prototype=virtual QRectF boundingRectFor ( const QRectF & rect ) const
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

$prototype=void setBlurRadius ( qreal blurRadius )
$method=|void|setBlurRadius|qreal

$prototype=void setColor ( const QColor & color )
$method=|void|setColor|const QColor &

$prototype=void setOffset ( const QPointF & ofs )
$internalMethod=|void|setOffset,setOffset1|const QPointF &

$prototype=void setOffset ( qreal dx, qreal dy )
$internalMethod=|void|setOffset,setOffset2|qreal,qreal

$prototype=void setOffset ( qreal d )
$internalMethod=|void|setOffset,setOffset3|qreal

//[1]void setOffset ( const QPointF & ofs )
//[2]void setOffset ( qreal dx, qreal dy )
//[3]void setOffset ( qreal d )

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsDropShadowEffect_setOffset1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsDropShadowEffect_setOffset2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsDropShadowEffect_setOffset3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setOffset

$prototype=void setXOffset ( qreal dx )
$method=|void|setXOffset|qreal

$prototype=void setYOffset ( qreal dy )
$method=|void|setYOffset|qreal

$beginSignals
$signal=|blurRadiusChanged(qreal)
$signal=|colorChanged(QColor)
$signal=|offsetChanged(QPointF)
$endSignals

#pragma ENDDUMP
