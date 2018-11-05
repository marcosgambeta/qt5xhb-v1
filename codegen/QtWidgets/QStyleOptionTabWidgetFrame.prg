%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #ifndef QT_NO_TABWIDGET
%% #endif // QT_NO_TABWIDGET

#include "hbclass.ch"

$addRequests

$beginClassFrom=QStyleOption

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionTabWidgetFrame()
$internalConstructor=|new1|

$prototype=QStyleOptionTabWidgetFrame(const QStyleOptionTabWidgetFrame &other)
$internalConstructor=|new2|const QStyleOptionTabWidgetFrame &

$prototype=QStyleOptionTabWidgetFrame(int version) [protected]

//[1]QStyleOptionTabWidgetFrame()
//[2]QStyleOptionTabWidgetFrame(const QStyleOptionTabWidgetFrame &other)
//[3]QStyleOptionTabWidgetFrame(int version) [protected]

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTabWidgetFrame_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTABWIDGETFRAME(1) )
  {
    QStyleOptionTabWidgetFrame_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=int lineWidth
$variableMethod=|int|lineWidth|
$variableMethod=|void|lineWidth,setLineWidth|int

$prototype=int midLineWidth
$variableMethod=|int|midLineWidth|
$variableMethod=|void|midLineWidth,setMidLineWidth|int

$prototype=QTabBar::Shape shape
$variableMethod=|QTabBar::Shape|shape|
$variableMethod=|void|shape,setShape|QTabBar::Shape

$prototype=QSize tabBarSize
$variableMethod=|QSize|tabBarSize|
$variableMethod=|void|tabBarSize,setTabBarSize|QSize

$prototype=QSize rightCornerWidgetSize
$variableMethod=|QSize|rightCornerWidgetSize|
$variableMethod=|void|rightCornerWidgetSize,setRightCornerWidgetSize|QSize

$prototype=QSize leftCornerWidgetSize
$variableMethod=|QSize|leftCornerWidgetSize|
$variableMethod=|void|leftCornerWidgetSize,setLeftCornerWidgetSize|QSize

$prototype=QRect tabBarRect
$variableMethod=|QRect|tabBarRect|
$variableMethod=|void|tabBarRect,setTabBarRect|QRect

$prototype=QRect selectedTabRect
$variableMethod=|QRect|selectedTabRect|
$variableMethod=|void|selectedTabRect,setSelectedTabRect|QRect

#pragma ENDDUMP
