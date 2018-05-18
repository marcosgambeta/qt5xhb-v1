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

   METHOD title
   METHOD closable
   METHOD movable
   METHOD floatable
   METHOD verticalTitleBar

   METHOD setTitle
   METHOD setClosable
   METHOD setMovable
   METHOD setFloatable
   METHOD setVerticalTitleBar

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionDockWidget()
$internalConstructor=|new1|

$prototype=QStyleOptionDockWidget(const QStyleOptionDockWidget &other)
$internalConstructor=|new2|const QStyleOptionDockWidget &

$prototype=QStyleOptionDockWidget(int version) (protected)

//[1]QStyleOptionDockWidget()
//[2]QStyleOptionDockWidget(const QStyleOptionDockWidget &other)
//[3]QStyleOptionDockWidget(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionDockWidget_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONDOCKWIDGET(1) )
  {
    QStyleOptionDockWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=QString title
$variableMethod=|QString|title|
$variableMethod=|void|title,setTitle|QString

$prototype=bool closable
$variableMethod=|bool|closable|
$variableMethod=|void|closable,SetClosable|bool

$prototype=bool movable
$variableMethod=|bool|movable|
$variableMethod=|void|movable,setMovable|bool

$prototype=bool floatable
$variableMethod=|bool|floatable|
$variableMethod=|void|floatable,setFloatable|bool

$prototype=bool verticalTitleBar
$variableMethod=|bool|verticalTitleBar|
$variableMethod=|void|verticalTitleBar,setVerticalTitleBar|bool

#pragma ENDDUMP
