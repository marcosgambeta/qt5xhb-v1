$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QPOINTF
REQUEST QRECTF
#endif

CLASS QGraphicsDropShadowEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD blurRadius
   METHOD color
   METHOD offset
   METHOD xOffset
   METHOD yOffset
   METHOD boundingRectFor
   METHOD setBlurRadius
   METHOD setColor
   METHOD setOffset
   METHOD setXOffset
   METHOD setYOffset

   METHOD onBlurRadiusChanged
   METHOD onColorChanged
   METHOD onOffsetChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsDropShadowEffect ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
qreal blurRadius () const
*/
$method=|qreal|blurRadius|

/*
QColor color () const
*/
$method=|QColor|color|

/*
QPointF offset () const
*/
$method=|QPointF|offset|

/*
qreal xOffset () const
*/
$method=|qreal|xOffset|

/*
qreal yOffset () const
*/
$method=|qreal|yOffset|

/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
$method=|QRectF|boundingRectFor|const QRectF &

/*
void setBlurRadius ( qreal blurRadius )
*/
$method=|void|setBlurRadius|qreal

/*
void setColor ( const QColor & color )
*/
$method=|void|setColor|const QColor &

/*
void setOffset ( const QPointF & ofs )
*/
$internalMethod=|void|setOffset,setOffset1|const QPointF &

/*
void setOffset ( qreal dx, qreal dy )
*/
$internalMethod=|void|setOffset,setOffset2|qreal,qreal

/*
void setOffset ( qreal d )
*/
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

/*
void setXOffset ( qreal dx )
*/
$method=|void|setXOffset|qreal

/*
void setYOffset ( qreal dy )
*/
$method=|void|setYOffset|qreal

#pragma ENDDUMP
