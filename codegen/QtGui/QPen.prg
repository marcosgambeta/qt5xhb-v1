$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
#endif

CLASS QPen

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD brush
   METHOD capStyle
   METHOD color
   METHOD dashOffset
   METHOD isCosmetic
   METHOD isSolid
   METHOD joinStyle
   METHOD miterLimit
   METHOD setBrush
   METHOD setCapStyle
   METHOD setColor
   METHOD setCosmetic
   METHOD setDashOffset
   METHOD setJoinStyle
   METHOD setMiterLimit
   METHOD setStyle
   METHOD setWidth
   METHOD setWidthF
   METHOD style
   METHOD width
   METHOD widthF

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
QPen ()
*/
$internalConstructor=|new1|

/*
QPen ( Qt::PenStyle style )
*/
$internalConstructor=|new2|Qt::PenStyle

/*
QPen ( const QColor & color )
*/
$internalConstructor=|new3|const QColor &

/*
QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
*/
$internalConstructor=|new4|const QBrush &,qreal,Qt::PenStyle=Qt::SolidLine,Qt::PenCapStyle=Qt::SquareCap,Qt::PenJoinStyle=Qt::BevelJoin

/*
QPen ( const QPen & pen )
*/
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

/*
QBrush brush () const
*/
$method=|QBrush|brush|

/*
Qt::PenCapStyle capStyle () const
*/
$method=|Qt::PenCapStyle|capStyle|

/*
QColor color () const
*/
$method=|QColor|color|

/*
qreal dashOffset () const
*/
$method=|qreal|dashOffset|

/*
bool isCosmetic () const
*/
$method=|bool|isCosmetic|

/*
bool isSolid () const
*/
$method=|bool|isSolid|

/*
Qt::PenJoinStyle joinStyle () const
*/
$method=|Qt::PenJoinStyle|joinStyle|

/*
qreal miterLimit () const
*/
$method=|qreal|miterLimit|

/*
void setBrush ( const QBrush & brush )
*/
$method=|void|setBrush|const QBrush &

/*
void setCapStyle ( Qt::PenCapStyle style )
*/
$method=|void|setCapStyle|Qt::PenCapStyle

/*
void setColor ( const QColor & color )
*/
$method=|void|setColor|const QColor &

/*
void setCosmetic ( bool cosmetic )
*/
$method=|void|setCosmetic|bool

/*
void setDashOffset ( qreal offset )
*/
$method=|void|setDashOffset|qreal

/*
void setJoinStyle ( Qt::PenJoinStyle style )
*/
$method=|void|setJoinStyle|Qt::PenJoinStyle

/*
void setMiterLimit ( qreal limit )
*/
$method=|void|setMiterLimit|qreal

/*
void setStyle ( Qt::PenStyle style )
*/
$method=|void|setStyle|Qt::PenStyle

/*
void setWidth ( int width )
*/
$method=|void|setWidth|int

/*
void setWidthF ( qreal width )
*/
$method=|void|setWidthF|qreal

/*
Qt::PenStyle style () const
*/
$method=|Qt::PenStyle|style|

/*
int width () const
*/
$method=|int|width|

/*
qreal widthF () const
*/
$method=|qreal|widthF|

$extraMethods

#pragma ENDDUMP
