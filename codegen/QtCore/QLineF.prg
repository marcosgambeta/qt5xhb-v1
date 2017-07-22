$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QLINE
#endif

CLASS QLineF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD p1
   METHOD p2
   METHOD x1
   METHOD x2
   METHOD y1
   METHOD y2
   METHOD angle
   METHOD angleTo
   METHOD dx
   METHOD dy
   METHOD intersect
   METHOD isNull
   METHOD length
   METHOD normalVector
   METHOD pointAt
   METHOD setP1
   METHOD setP2
   METHOD setAngle
   METHOD setLength
   METHOD setLine
   METHOD setPoints
   METHOD toLine
   METHOD translate
   METHOD translated
   METHOD unitVector
   METHOD fromPolar

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
QLineF()
*/
$internalConstructor=|new1|

/*
QLineF(const QPointF & p1, const QPointF & p2)
*/
$internalConstructor=|new2|const QPointF &,const QPointF &

/*
QLineF(qreal x1, qreal y1, qreal x2, qreal y2)
*/
$internalConstructor=|new3|qreal,qreal,qreal,qreal

/*
QLineF(const QLine & line)
*/
$internalConstructor=|new4|const QLine &

//[1]QLineF()
//[2]QLineF(const QPointF & p1, const QPointF & p2)
//[3]QLineF(qreal x1, qreal y1, qreal x2, qreal y2)
//[4]QLineF(const QLine & line)

HB_FUNC_STATIC( QLINEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QLineF_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QLineF_new2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLineF_new3();
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    QLineF_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QPointF p1() const
*/
$method=|QPointF|p1|

/*
QPointF p2() const
*/
$method=|QPointF|p2|

/*
qreal x1() const
*/
$method=|qreal|x1|

/*
qreal x2() const
*/
$method=|qreal|x2|

/*
qreal y1() const
*/
$method=|qreal|y1|

/*
qreal y2() const
*/
$method=|qreal|y2|

/*
qreal angle() const
*/
$method=|qreal|angle|

/*
qreal angleTo(const QLineF & line) const
*/
$method=|qreal|angleTo|const QLineF &

/*
qreal dx() const
*/
$method=|qreal|dx|

/*
qreal dy() const
*/
$method=|qreal|dy|

/*
IntersectType intersect(const QLineF & line, QPointF * intersectionPoint) const
*/
$method=|QLineF::IntersectType|intersect|const QLineF &,QPointF *

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
qreal length() const
*/
$method=|qreal|length|

/*
QLineF normalVector() const
*/
$method=|QLineF|normalVector|

/*
QPointF pointAt(qreal t) const
*/
$method=|QPointF|pointAt|qreal

/*
void setP1(const QPointF & p1)
*/
$method=|void|setP1|const QPointF &

/*
void setP2(const QPointF & p2)
*/
$method=|void|setP2|const QPointF &

/*
void setAngle(qreal angle)
*/
$method=|void|setAngle|qreal

/*
void setLength(qreal length)
*/
$method=|void|setLength|qreal

/*
void setLine(qreal x1, qreal y1, qreal x2, qreal y2)
*/
$method=|void|setLine|qreal,qreal,qreal,qreal

/*
void setPoints(const QPointF & p1, const QPointF & p2)
*/
$method=|void|setPoints|const QPointF &,const QPointF &

/*
QLine toLine() const
*/
$method=|QLine|toLine|

/*
void translate(const QPointF & offset)
*/
$internalMethod=|void|translate,translate1|const QPointF &

/*
void translate(qreal dx, qreal dy)
*/
$internalMethod=|void|translate,translate2|qreal,qreal

//[1]void translate(const QPointF & offset)
//[2]void translate(qreal dx, qreal dy)

HB_FUNC_STATIC( QLINEF_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QLineF_translate1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLineF_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QLineF translated(const QPointF & offset) const
*/
$internalMethod=|QLineF|translated,translated1|const QPointF &

/*
QLineF translated(qreal dx, qreal dy) const
*/
$internalMethod=|QLineF|translated,translated2|qreal,qreal

//[1]QLineF translated(const QPointF & offset) const
//[2]QLineF translated(qreal dx, qreal dy) const

HB_FUNC_STATIC( QLINEF_TRANSLATED )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QLineF_translated1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLineF_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QLineF unitVector() const
*/
$method=|QLineF|unitVector|

/*
static QLineF fromPolar(qreal length, qreal angle)
*/
$staticMethod=|QLineF|fromPolar|qreal,qreal

$extraMethods

#pragma ENDDUMP
