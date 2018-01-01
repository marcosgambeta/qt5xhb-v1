%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QSlider ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QSlider ( Qt::Orientation orientation, QWidget * parent = 0 )
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

$prototype=int tickInterval () const
$method=|int|tickInterval|

$prototype=void setTickInterval ( int ti )
$method=|void|setTickInterval|int

$prototype=TickPosition tickPosition () const
$method=|QSlider::TickPosition|tickPosition|

$prototype=void setTickPosition ( TickPosition position )
$method=|void|setTickPosition|QSlider::TickPosition

$prototype=virtual bool event ( QEvent * event )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
