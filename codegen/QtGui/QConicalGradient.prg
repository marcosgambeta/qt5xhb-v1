$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QConicalGradient INHERIT QGradient

   METHOD new
   METHOD delete
   METHOD angle
   METHOD center
   METHOD setAngle
   METHOD setCenter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QConicalGradient ()
$internalConstructor=|new1|

$prototype=QConicalGradient ( const QPointF & center, qreal angle )
$internalConstructor=|new2|const QPointF &,qreal

$prototype=QConicalGradient ( qreal cx, qreal cy, qreal angle )
$internalConstructor=|new3|qreal,qreal,qreal

//[1]QConicalGradient ()
//[2]QConicalGradient ( const QPointF & center, qreal angle )
//[3]QConicalGradient ( qreal cx, qreal cy, qreal angle )

HB_FUNC_STATIC( QCONICALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QConicalGradient_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    QConicalGradient_new2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QConicalGradient_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=qreal angle () const
$method=|qreal|angle|

$prototype=QPointF center () const
$method=|QPointF|center|

$prototype=void setAngle ( qreal angle )
$method=|void|setAngle|qreal

$prototype=void setCenter ( const QPointF & center )
$internalMethod=|void|setCenter,setCenter1|const QPointF &

$prototype=void setCenter ( qreal x, qreal y )
$internalMethod=|void|setCenter,setCenter2|qreal,qreal

//[1]void setCenter ( const QPointF & center )
//[2]void setCenter ( qreal x, qreal y )

HB_FUNC_STATIC( QCONICALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QConicalGradient_setCenter1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QConicalGradient_setCenter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
