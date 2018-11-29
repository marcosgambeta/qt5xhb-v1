%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGradient

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRadialGradient()
$internalConstructor=|new1|

$prototype=QRadialGradient(const QPointF & center, qreal radius, const QPointF & focalPoint)
$internalConstructor=|new2|const QPointF &,qreal,const QPointF &

$prototype=QRadialGradient(qreal cx, qreal cy, qreal radius, qreal fx, qreal fy)
$internalConstructor=|new3|qreal,qreal,qreal,qreal,qreal

$prototype=QRadialGradient(const QPointF & center, qreal radius)
$internalConstructor=|new4|const QPointF &,qreal

$prototype=QRadialGradient(qreal cx, qreal cy, qreal radius)
$internalConstructor=|new5|qreal,qreal,qreal

$prototype=QRadialGradient(const QPointF & center, qreal centerRadius, const QPointF & focalPoint, qreal focalRadius)
$internalConstructor=|new6|const QPointF &,qreal,const QPointF &,qreal

$prototype=QRadialGradient(qreal cx, qreal cy, qreal centerRadius, qreal fx, qreal fy, qreal focalRadius)
$internalConstructor=|new7|qreal,qreal,qreal,qreal,qreal,qreal

//[1]QRadialGradient()
//[2]QRadialGradient(const QPointF & center, qreal radius, const QPointF & focalPoint)
//[3]QRadialGradient(qreal cx, qreal cy, qreal radius, qreal fx, qreal fy)
//[4]QRadialGradient(const QPointF & center, qreal radius)
//[5]QRadialGradient(qreal cx, qreal cy, qreal radius)
//[6]QRadialGradient(const QPointF & center, qreal centerRadius, const QPointF & focalPoint, qreal focalRadius)
//[7]QRadialGradient(qreal cx, qreal cy, qreal centerRadius, qreal fx, qreal fy, qreal focalRadius)

HB_FUNC_STATIC( QRADIALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRadialGradient_new1();
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISQPOINTF(3) )
  {
    QRadialGradient_new2();
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QRadialGradient_new3();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    QRadialGradient_new4();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QRadialGradient_new5();
  }
  else if( ISNUMPAR(4) && ISQPOINTF(1) && ISNUM(2) && ISQPOINTF(3) && ISNUM(4) )
  {
    QRadialGradient_new6();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QRadialGradient_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QPointF center() const
$method=|QPointF|center|

$prototype=qreal centerRadius() const
$method=|qreal|centerRadius|

$prototype=QPointF focalPoint() const
$method=|QPointF|focalPoint|

$prototype=qreal focalRadius() const
$method=|qreal|focalRadius|

$prototype=qreal radius() const
$method=|qreal|radius|

$prototype=void setCenter(const QPointF & center)
$internalMethod=|void|setCenter,setCenter1|const QPointF &

$prototype=void setCenter(qreal x, qreal y)
$internalMethod=|void|setCenter,setCenter2|qreal,qreal

//[1]void setCenter(const QPointF & center)
//[2]void setCenter(qreal x, qreal y)

HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRadialGradient_setCenter1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRadialGradient_setCenter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCenter

$prototype=void setCenterRadius(qreal radius)
$method=|void|setCenterRadius|qreal

$prototype=void setFocalPoint(const QPointF & focalPoint)
$internalMethod=|void|setFocalPoint,setFocalPoint1|const QPointF &

$prototype=void setFocalPoint(qreal x, qreal y)
$internalMethod=|void|setFocalPoint,setFocalPoint2|qreal,qreal

//[1]void setFocalPoint(const QPointF & focalPoint)
//[2]void setFocalPoint(qreal x, qreal y)

HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALPOINT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRadialGradient_setFocalPoint1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRadialGradient_setFocalPoint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFocalPoint

$prototype=void setFocalRadius(qreal radius)
$method=|void|setFocalRadius|qreal

$prototype=void setRadius(qreal radius)
$method=|void|setRadius|qreal

#pragma ENDDUMP
