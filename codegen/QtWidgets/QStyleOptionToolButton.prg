%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QStyleOptionToolButton INHERIT QStyleOptionComplex

   METHOD new
%%   METHOD delete

   METHOD features
   METHOD icon
   METHOD iconSize
   METHOD text
   METHOD arrowType
   METHOD toolButtonStyle
   METHOD pos
   METHOD font

   METHOD setFeatures
   METHOD setIcon
   METHOD setIconSize
   METHOD setText
   METHOD setArrowType
   METHOD setToolButtonStyle
   METHOD setPos
   METHOD setFont

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionToolButton()
$internalConstructor=|new1|

$prototype=QStyleOptionToolButton(const QStyleOptionToolButton &other)
$internalConstructor=|new2|const QStyleOptionToolButton &

$prototype=QStyleOptionToolButton(int version) (protected)

//[1]QStyleOptionToolButton()
//[2]QStyleOptionToolButton(const QStyleOptionToolButton &other)
//[3]QStyleOptionToolButton(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionToolButton_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBUTTON(1) )
  {
    QStyleOptionToolButton_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=ToolButtonFeatures features
$variableMethod=|QStyleOptionToolButton::ToolButtonFeatures|features|
$variableMethod=|void|features,setFeatures|QStyleOptionToolButton::ToolButtonFeatures

$prototype=QIcon icon
$variableMethod=|QIcon|icon|
$variableMethod=|void|icon,setIcon|QIcon

$prototype=QSize iconSize
$variableMethod=|QSize|iconSize|
$variableMethod=|void|iconSize,setIconSize|QSize

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=Qt::ArrowType arrowType
$variableMethod=|Qt::ArrowType|arrowType|
$variableMethod=|void|arrowType,setArrowType|Qt::ArrowType

$prototype=Qt::ToolButtonStyle toolButtonStyle
$variableMethod=|Qt::ToolButtonStyle|toolButtonStyle|
$variableMethod=|void|toolButtonStyle,setToolButtonStyle|Qt::ToolButtonStyle

$prototype=QPoint pos
$variableMethod=|QPoint|pos|
$variableMethod=|void|pos,setPos|QPoint

$prototype=QFont font
$variableMethod=|QFont|font|
$variableMethod=|void|font,setFont|QFont

#pragma ENDDUMP
