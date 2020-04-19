%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDateTimeEdit

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTimeEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QTimeEdit ( const QTime & time, QWidget * parent = 0 )
$internalConstructor=|new2|const QTime &,QWidget *=0

/*
[1]QTimeEdit ( QWidget * parent = 0 )
[2]QTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QTIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QTimeEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && ISOPTQWIDGET(2) )
  {
    QTimeEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

#pragma ENDDUMP
