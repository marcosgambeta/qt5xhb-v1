$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QRadialGradient INHERIT QGradient

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD center
   METHOD centerRadius
   METHOD focalPoint
   METHOD focalRadius
   METHOD radius
   METHOD setCenter
   METHOD setCenterRadius
   METHOD setFocalPoint
   METHOD setFocalRadius
   METHOD setRadius

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QRadialGradient()
*/
$internalConstructor=|new1|

/*
QRadialGradient(const QPointF & center, qreal radius, const QPointF & focalPoint)
*/
$internalConstructor=|new2|const QPointF &,qreal,const QPointF &

/*
QRadialGradient(qreal cx, qreal cy, qreal radius, qreal fx, qreal fy)
*/
$internalConstructor=|new3|qreal,qreal,qreal,qreal,qreal

/*
QRadialGradient(const QPointF & center, qreal radius)
*/
$internalConstructor=|new4|const QPointF &,qreal

/*
QRadialGradient(qreal cx, qreal cy, qreal radius)
*/
$internalConstructor=|new5|qreal,qreal,qreal

/*
QRadialGradient(const QPointF & center, qreal centerRadius, const QPointF & focalPoint, qreal focalRadius)
*/
$internalConstructor=|new6|const QPointF &,qreal,const QPointF &,qreal

/*
QRadialGradient(qreal cx, qreal cy, qreal centerRadius, qreal fx, qreal fy, qreal focalRadius)
*/
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

/*
QPointF center() const
*/
$method=|QPointF|center|

/*
qreal centerRadius() const
*/
$method=|qreal|centerRadius|

/*
QPointF focalPoint() const
*/
$method=|QPointF|focalPoint|

/*
qreal focalRadius() const
*/
$method=|qreal|focalRadius|

/*
qreal radius() const
*/
$method=|qreal|radius|

/*
void setCenter(const QPointF & center)
*/
$internalMethod=|void|setCenter,setCenter1|const QPointF &

/*
void setCenter(qreal x, qreal y)
*/
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

/*
void setCenterRadius(qreal radius)
*/
$method=|void|setCenterRadius|qreal

/*
void setFocalPoint(const QPointF & focalPoint)
*/
$internalMethod=|void|setFocalPoint,setFocalPoint1|const QPointF &

/*
void setFocalPoint(qreal x, qreal y)
*/
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

/*
void setFocalRadius(qreal radius)
*/
$method=|void|setFocalRadius|qreal

/*
void setRadius(qreal radius)
*/
$method=|void|setRadius|qreal

#pragma ENDDUMP
