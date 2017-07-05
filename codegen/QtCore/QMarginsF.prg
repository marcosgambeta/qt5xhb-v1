$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMARGINS
#endif

CLASS QMarginsF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD left
   METHOD top
   METHOD right
   METHOD bottom
   METHOD setLeft
   METHOD setTop
   METHOD setRight
   METHOD setBottom
   METHOD toMargins

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
QMarginsF()
*/
void QMarginsF_new1 ()
{
  QMarginsF * o = new QMarginsF ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
*/
void QMarginsF_new2 ()
{
  QMarginsF * o = new QMarginsF ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QMarginsF(const QMargins &margins)
*/
void QMarginsF_new3 ()
{
  QMarginsF * o = new QMarginsF ( *PQMARGINS(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QMarginsF()
//[2]QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
//[3]QMarginsF(const QMargins &margins)

HB_FUNC_STATIC( QMARGINSF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMarginsF_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QMarginsF_new2();
  }
  else if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    QMarginsF_new3();
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
qreal left() const
*/
$method=|qreal|left|

/*
qreal top() const
*/
$method=|qreal|top|

/*
qreal right() const
*/
$method=|qreal|right|

/*
qreal bottom() const
*/
$method=|qreal|bottom|

/*
void setLeft(qreal left)
*/
$method=|void|setLeft|qreal

/*
void setTop(qreal top)
*/
$method=|void|setTop|qreal

/*
void setRight(qreal right)
*/
$method=|void|setRight|qreal

/*
void setBottom(qreal bottom)
*/
$method=|void|setBottom|qreal

/*
QMargins toMargins() const
*/
HB_FUNC_STATIC( QMARGINSF_TOMARGINS )
{
  QMarginsF * obj = (QMarginsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMargins * ptr = new QMargins( obj->toMargins () );
    _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}

$extraMethods

#pragma ENDDUMP
