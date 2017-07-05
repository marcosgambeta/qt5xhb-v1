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
void QLineF_new1 ()
{
  QLineF * o = new QLineF ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QLineF(const QPointF & p1, const QPointF & p2)
*/
void QLineF_new2 ()
{
  QLineF * o = new QLineF ( *PQPOINTF(1), *PQPOINTF(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QLineF(qreal x1, qreal y1, qreal x2, qreal y2)
*/
void QLineF_new3 ()
{
  QLineF * o = new QLineF ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QLineF(const QLine & line)
*/
void QLineF_new4 ()
{
  QLineF * o = new QLineF ( *PQLINE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

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
HB_FUNC_STATIC( QLINEF_P1 )
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->p1 () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF p2() const
*/
HB_FUNC_STATIC( QLINEF_P2 )
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->p2 () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

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
HB_FUNC_STATIC( QLINEF_INTERSECT )
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQLINEF(1) && ISQPOINTF(2) )
    {
      QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
      hb_retni( obj->intersect ( *PQLINEF(1), par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QLINEF_NORMALVECTOR )
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineF * ptr = new QLineF( obj->normalVector () );
    _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}

/*
QPointF pointAt(qreal t) const
*/
HB_FUNC_STATIC( QLINEF_POINTAT )
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QPointF * ptr = new QPointF( obj->pointAt ( PQREAL(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QLINEF_TOLINE )
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLine * ptr = new QLine( obj->toLine () );
    _qt5xhb_createReturnClass ( ptr, "QLINE", true );
  }
}

/*
void translate(const QPointF & offset)
*/
void QLineF_translate1 ()
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate(qreal dx, qreal dy)
*/
void QLineF_translate2 ()
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QLineF_translated1 ()
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineF * ptr = new QLineF( obj->translated ( *PQPOINTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}

/*
QLineF translated(qreal dx, qreal dy) const
*/
void QLineF_translated2 ()
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineF * ptr = new QLineF( obj->translated ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}

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
HB_FUNC_STATIC( QLINEF_UNITVECTOR )
{
  QLineF * obj = (QLineF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineF * ptr = new QLineF( obj->unitVector () );
    _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}

/*
static QLineF fromPolar(qreal length, qreal angle)
*/
HB_FUNC_STATIC( QLINEF_FROMPOLAR )
{
  if( ISNUM(1) && ISNUM(2) )
  {
    QLineF * ptr = new QLineF( QLineF::fromPolar ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
