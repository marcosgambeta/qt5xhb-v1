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

$prototype=QScrollBar ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QScrollBar ( Qt::Orientation orientation, QWidget * parent = 0 )
$internalConstructor=|new2|Qt::Orientation,QWidget *=0

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

$prototype=virtual bool event ( QEvent * event )
$method=|bool|event|QEvent *

$prototype=virtual QSize sizeHint () const
$method=|QSize|sizeHint|

#pragma ENDDUMP
