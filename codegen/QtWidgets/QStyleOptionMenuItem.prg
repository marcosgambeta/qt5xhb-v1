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

$beginClassFrom=QStyleOption

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionMenuItem()
$internalConstructor=|new1|

$prototype=QStyleOptionMenuItem(const QStyleOptionMenuItem &other)
$internalConstructor=|new2|const QStyleOptionMenuItem &

$prototype=QStyleOptionMenuItem(int version) [protected]

/*
[1]QStyleOptionMenuItem()
[2]QStyleOptionMenuItem(const QStyleOptionMenuItem &other)
[3]QStyleOptionMenuItem(int version) [protected]
*/

HB_FUNC_STATIC( QSTYLEOPTIONMENUITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionMenuItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONMENUITEM(1) )
  {
    QStyleOptionMenuItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=MenuItemType menuItemType
$variableMethod=|QStyleOptionMenuItem::MenuItemType|menuItemType|
$variableMethod=|void|menuItemType,setMenuItemType|QStyleOptionMenuItem::MenuItemType

$prototype=CheckType checkType
$variableMethod=|QStyleOptionMenuItem::CheckType|checkType|
$variableMethod=|void|checkType,setCheckType|QStyleOptionMenuItem::CheckType

$prototype=bool checked
$variableMethod=|bool|checked|
$variableMethod=|void|checked,setChecked|bool

$prototype=bool menuHasCheckableItems
$variableMethod=|bool|menuHasCheckableItems|
$variableMethod=|void|menuHasCheckableItems,setMenuHasCheckableItems|bool

$prototype=QRect menuRect
$variableMethod=|QRect|menuRect|
$variableMethod=|void|menuRect,setMenuRect|QRect

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=QIcon icon
$variableMethod=|QIcon|icon|
$variableMethod=|void|icon,setIcon|QIcon

$prototype=int maxIconWidth
$variableMethod=|int|maxIconWidth|
$variableMethod=|void|maxIconWidth,setMaxIconWidth|int

$prototype=int tabWidth
$variableMethod=|int|tabWidth|
$variableMethod=|void|tabWidth,setTabWidth|int

$prototype=QFont font
$variableMethod=|QFont|font|
$variableMethod=|void|font,setFont|QFont

#pragma ENDDUMP
