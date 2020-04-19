%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

%% TODO:
%% #ifndef QT_NO_TOOLBAR
%% #endif // QT_NO_TOOLBAR

#include "hbclass.ch"

$addRequests

$beginClassFrom=QStyleOption

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionToolBar()
$internalConstructor=|new1|

$prototype=QStyleOptionToolBar(const QStyleOptionToolBar &other)
$internalConstructor=|new2|const QStyleOptionToolBar &

$prototype=QStyleOptionToolBar(int version) [protected]

/*
[1]QStyleOptionToolBar()
[2]QStyleOptionToolBar(const QStyleOptionToolBar &other)
[3]QStyleOptionToolBar(int version) [protected]
*/

HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionToolBar_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBAR(1) )
  {
    QStyleOptionToolBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=ToolBarPosition positionOfLine
$variableMethod=|QStyleOptionToolBar::ToolBarPosition|positionOfLine|
$variableMethod=|void|positionOfLine,setPositionOfLine|QStyleOptionToolBar::ToolBarPosition

$prototype=ToolBarPosition positionWithinLine
$variableMethod=|QStyleOptionToolBar::ToolBarPosition|positionWithinLine|
$variableMethod=|void|positionWithinLine,setPositionWithinLine|QStyleOptionToolBar::ToolBarPosition

$prototype=Qt::ToolBarArea toolBarArea
$variableMethod=|Qt::ToolBarArea|toolBarArea|
$variableMethod=|void|toolBarArea,setToolBarArea|Qt::ToolBarArea

$prototype=ToolBarFeatures features
$variableMethod=|QStyleOptionToolBar::ToolBarFeatures|features|
$variableMethod=|void|features,setFeatures|QStyleOptionToolBar::ToolBarFeatures

$prototype=int lineWidth
$variableMethod=|int|lineWidth|
$variableMethod=|void|lineWidth,setLineWidth|int

$prototype=int midLineWidth
$variableMethod=|int|midLineWidth|
$variableMethod=|void|midLineWidth,setMidLineWidth|int

#pragma ENDDUMP
