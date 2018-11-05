%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QStyleOption

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionProgressBar()
$internalConstructor=|new1|

$prototype=QStyleOptionProgressBar(const QStyleOptionProgressBar &other)
$internalConstructor=|new2|const QStyleOptionProgressBar &

$prototype=QStyleOptionProgressBar(int version) [protected]

//[1]QStyleOptionProgressBar()
//[2]QStyleOptionProgressBar(const QStyleOptionProgressBar &other)
//[3]QStyleOptionProgressBar(int version) [protected]

HB_FUNC_STATIC( QSTYLEOPTIONPROGRESSBAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionProgressBar_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONPROGRESSBAR(1) )
  {
    QStyleOptionProgressBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=int minimum
$variableMethod=|int|minimum|
$variableMethod=|void|minimum,setMinimum|int

$prototype=int maximum
$variableMethod=|int|maximum|
$variableMethod=|void|maximum,setMaximum|int

$prototype=int progress
$variableMethod=|int|progress|
$variableMethod=|void|progress,setProgress|int

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=Qt::Alignment textAlignment
$variableMethod=|Qt::Alignment|textAlignment|
$variableMethod=|void|textAlignment,setTextAlignment|Qt::Alignment

$prototype=bool textVisible
$variableMethod=|bool|textVisible|
$variableMethod=|void|textVisible,setTextVisible|bool

$prototype=Qt::Orientation orientation
$variableMethod=|Qt::Orientation|orientation|
$variableMethod=|void|orientation,setOrientation|Qt::Orientation

$prototype=bool invertedAppearance
$variableMethod=|bool|invertedAppearance|
$variableMethod=|void|invertedAppearance,setInvertedAppearance|bool

$prototype=bool bottomToTop
$variableMethod=|bool|bottomToTop|
$variableMethod=|void|bottomToTop,setBottomToTop|bool

#pragma ENDDUMP
