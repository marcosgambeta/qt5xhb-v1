$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QPointF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD manhattanLength
   METHOD setX
   METHOD setY
   METHOD toPoint
   METHOD x
   METHOD y

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
QPointF()
*/
void QPointF_new1 ()
{
  QPointF * o = new QPointF ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPointF(const QPoint & point)
*/
void QPointF_new2 ()
{
  QPointF * o = new QPointF ( *PQPOINT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPointF(qreal xpos, qreal ypos)
*/
void QPointF_new3 ()
{
  QPointF * o = new QPointF ( PQREAL(1), PQREAL(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QPointF()
//[2]QPointF(const QPoint & point)
//[3]QPointF(qreal xpos, qreal ypos)

HB_FUNC_STATIC( QPOINTF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPointF_new1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPointF_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPointF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
qreal manhattanLength() const
*/
$method=|qreal|manhattanLength|

/*
void setX(qreal x)
*/
$method=|void|setX|qreal

/*
void setY(qreal y)
*/
$method=|void|setY|qreal

/*
QPoint toPoint() const
*/
HB_FUNC_STATIC( QPOINTF_TOPOINT )
{
  QPointF * obj = (QPointF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
qreal x() const
*/
$method=|qreal|x|

/*
qreal y() const
*/
$method=|qreal|y|

$extraMethods

#pragma ENDDUMP
