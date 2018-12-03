%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QStyleOptionFocusRect()
$internalConstructor=|new1|

$prototype=QStyleOptionFocusRect(const QStyleOptionFocusRect &other)
$internalConstructor=|new2|const QStyleOptionFocusRect &

$prototype=QStyleOptionFocusRect(int version) [protected]

//[1]QStyleOptionFocusRect()
//[2]QStyleOptionFocusRect(const QStyleOptionFocusRect &other)
//[3]QStyleOptionFocusRect(int version) [protected]

HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionFocusRect_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONFOCUSRECT(1) )
  {
    QStyleOptionFocusRect_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=QColor backgroundColor
$variableMethod=|QColor|backgroundColor|
$variableMethod=|void|backgroundColor,setBackgroundColor|QColor

#pragma ENDDUMP
