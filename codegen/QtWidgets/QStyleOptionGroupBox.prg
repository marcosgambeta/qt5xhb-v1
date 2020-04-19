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

$beginClassFrom=QStyleOptionComplex

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionGroupBox()
$internalConstructor=|new1|

$prototype=QStyleOptionGroupBox(const QStyleOptionGroupBox &other)
$internalConstructor=|new2|const QStyleOptionGroupBox &

$prototype=QStyleOptionGroupBox(int version) [protected]

/*
[1]QStyleOptionGroupBox()
[2]QStyleOptionGroupBox(const QStyleOptionGroupBox &other)
[3]QStyleOptionGroupBox(int version) [protected]
*/

HB_FUNC_STATIC( QSTYLEOPTIONGROUPBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionGroupBox_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONGROUPBOX(1) )
  {
    QStyleOptionGroupBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=QStyleOptionFrame::FrameFeatures features
$variableMethod=|QStyleOptionFrame::FrameFeatures|features|
$variableMethod=|void|features,setFeatures|QStyleOptionFrame::FrameFeatures

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=Qt::Alignment textAlignment
$variableMethod=|Qt::Alignment|textAlignment|
$variableMethod=|void|textAlignment,setTextAlignment|Qt::Alignment

$prototype=QColor textColor
$variableMethod=|QColor|textColor|
$variableMethod=|void|textColor,setTextColor|QColor

$prototype=int lineWidth
$variableMethod=|int|lineWidth|
$variableMethod=|void|lineWidth,setLineWidth|int

$prototype=int midLineWidth
$variableMethod=|int|midLineWidth|
$variableMethod=|void|midLineWidth,setMidLineWidth|int

#pragma ENDDUMP
