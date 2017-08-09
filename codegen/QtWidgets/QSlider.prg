$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSlider INHERIT QAbstractSlider

   METHOD new
   METHOD delete
   METHOD tickInterval
   METHOD setTickInterval
   METHOD tickPosition
   METHOD setTickPosition
   METHOD event
   METHOD minimumSizeHint
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSlider ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QSlider ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
$internalConstructor=|new2|Qt::Orientation,QWidget *=0

//[1]QSlider ( QWidget * parent = 0 )
//[2]QSlider ( Qt::Orientation orientation, QWidget * parent = 0 )

HB_FUNC_STATIC( QSLIDER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QSlider_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QSlider_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int tickInterval () const
*/
$method=|int|tickInterval|

/*
void setTickInterval ( int ti )
*/
$method=|void|setTickInterval|int

/*
TickPosition tickPosition () const
*/
$method=|QSlider::TickPosition|tickPosition|

/*
void setTickPosition ( TickPosition position )
*/
$method=|void|setTickPosition|QSlider::TickPosition

/*
virtual bool event ( QEvent * event )
*/
$method=|bool|event|QEvent *

/*
virtual QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

#pragma ENDDUMP
