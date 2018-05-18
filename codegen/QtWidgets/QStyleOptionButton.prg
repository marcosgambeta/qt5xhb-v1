%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QStyleOption

   METHOD new
%%   METHOD delete

   METHOD features
   METHOD text
   METHOD icon
   METHOD iconSize

   METHOD setFeatures
   METHOD setText
   METHOD setIcon
   METHOD setIconSize

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionButton()
$internalConstructor=|new1|

$prototype=QStyleOptionButton(const QStyleOptionButton &other)
$internalConstructor=|new2|const QStyleOptionButton &

$prototype=QStyleOptionButton(int version) (protected)

//[1]QStyleOptionButton()
//[2]QStyleOptionButton(const QStyleOptionButton &other) : QStyleOption(Version, Type)
//[3]QStyleOptionButton(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionButton_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONBUTTON(1) )
  {
    QStyleOptionButton_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=ButtonFeatures features
$variableMethod=|QStyleOptionButton::ButtonFeatures|features|
$variableMethod=|void|features,setFeatures|QStyleOptionButton::ButtonFeatures

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=QIcon icon
$variableMethod=|QIcon|icon|
$variableMethod=|void|icon,setIcon|QIcon

$prototype=QSize iconSize
$variableMethod=|QSize|iconSize|
$variableMethod=|void|iconSize,setIconSize|QSize

#pragma ENDDUMP
