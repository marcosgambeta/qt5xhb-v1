%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QStyleOptionComboBox()
$internalConstructor=|new1|

$prototype=QStyleOptionComboBox(const QStyleOptionComboBox &other)
$internalConstructor=|new2|const QStyleOptionComboBox &

$prototype=QStyleOptionComboBox(int version) [protected]

//[1]QStyleOptionComboBox()
//[2]QStyleOptionComboBox(const QStyleOptionComboBox &other)
//[3]QStyleOptionComboBox(int version) [protected]

HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionComboBox_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONCOMBOBOX(1) )
  {
    QStyleOptionComboBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=bool editable
$variableMethod=|bool|editable|
$variableMethod=|void|editable,setEditable|bool

$prototype=QRect popupRect
$variableMethod=|QRect|popupRect|
$variableMethod=|void|popupRect,setPopupRect|QRect

$prototype=bool frame
$variableMethod=|bool|frame|
$variableMethod=|void|frame,setFrame|bool

$prototype=QString currentText
$variableMethod=|QString|currentText|
$variableMethod=|void|currentText,setCurrentText|QString

$prototype=QIcon currentIcon
$variableMethod=|QIcon|currentIcon|
$variableMethod=|void|currentIcon,setCurrentIcon|QIcon

$prototype=QSize iconSize
$variableMethod=|QSize|iconSize|
$variableMethod=|void|iconSize,seticonSize|QSize

#pragma ENDDUMP
