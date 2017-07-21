$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QScrollBar INHERIT QAbstractSlider

   METHOD new
   METHOD delete
   METHOD event
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QScrollBar ( QWidget * parent = 0 )
*/
void QScrollBar_new1 ()
{
  QScrollBar * o = new QScrollBar ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScrollBar ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
void QScrollBar_new2 ()
{
  QScrollBar * o = new QScrollBar ( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QScrollBar ( QWidget * parent = 0 )
//[2]QScrollBar ( Qt::Orientation orientation, QWidget * parent = 0 )

HB_FUNC_STATIC( QSCROLLBAR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QScrollBar_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QScrollBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual bool event ( QEvent * event )
*/
$method=|bool|event|QEvent *

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSCROLLBAR_SIZEHINT )
{
  QScrollBar * obj = (QScrollBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
