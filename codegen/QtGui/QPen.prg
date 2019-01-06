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

$prototype=QPen ()
$internalConstructor=|new1|

$prototype=QPen ( Qt::PenStyle style )
$internalConstructor=|new2|Qt::PenStyle

$prototype=QPen ( const QColor & color )
$internalConstructor=|new3|const QColor &

$prototype=QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
$internalConstructor=|new4|const QBrush &,qreal,Qt::PenStyle=Qt::SolidLine,Qt::PenCapStyle=Qt::SquareCap,Qt::PenJoinStyle=Qt::BevelJoin

$prototype=QPen ( const QPen & pen )
$internalConstructor=|new5|const QPen &

//[1]QPen ()
//[2]QPen ( Qt::PenStyle style )
//[3]QPen ( const QColor & color )
//[4]QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
//[5]QPen ( const QPen & pen )

HB_FUNC_STATIC( QPEN_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPen_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPen_new2();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QPen_new3();
  }
  else if( ISBETWEEN(2,5) && ISQBRUSH(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QPen_new4();
  }
  else if( ISNUMPAR(1) && ISQPEN(1) )
  {
    QPen_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QBrush brush () const
$method=|QBrush|brush|

$prototype=Qt::PenCapStyle capStyle () const
$method=|Qt::PenCapStyle|capStyle|

$prototype=QColor color () const
$method=|QColor|color|

$prototype=qreal dashOffset () const
$method=|qreal|dashOffset|

$prototype=bool isCosmetic () const
$method=|bool|isCosmetic|

$prototype=bool isSolid () const
$method=|bool|isSolid|

$prototype=Qt::PenJoinStyle joinStyle () const
$method=|Qt::PenJoinStyle|joinStyle|

$prototype=qreal miterLimit () const
$method=|qreal|miterLimit|

$prototype=void setBrush ( const QBrush & brush )
$method=|void|setBrush|const QBrush &

$prototype=void setCapStyle ( Qt::PenCapStyle style )
$method=|void|setCapStyle|Qt::PenCapStyle

$prototype=void setColor ( const QColor & color )
$method=|void|setColor|const QColor &

$prototype=void setCosmetic ( bool cosmetic )
$method=|void|setCosmetic|bool

$prototype=void setDashOffset ( qreal offset )
$method=|void|setDashOffset|qreal

$prototype=void setJoinStyle ( Qt::PenJoinStyle style )
$method=|void|setJoinStyle|Qt::PenJoinStyle

$prototype=void setMiterLimit ( qreal limit )
$method=|void|setMiterLimit|qreal

$prototype=void setStyle ( Qt::PenStyle style )
$method=|void|setStyle|Qt::PenStyle

$prototype=void setWidth ( int width )
$method=|void|setWidth|int

$prototype=void setWidthF ( qreal width )
$method=|void|setWidthF|qreal

$prototype=Qt::PenStyle style () const
$method=|Qt::PenStyle|style|

$prototype=int width () const
$method=|int|width|

$prototype=qreal widthF () const
$method=|qreal|widthF|

$extraMethods

#pragma ENDDUMP
