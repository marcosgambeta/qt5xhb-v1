%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMargins()
$internalConstructor=|new1|

$prototype=QMargins(int left, int top, int right, int bottom)
$internalConstructor=|new2|int,int,int,int

//[1]QMargins()
//[2]QMargins(int left, int top, int right, int bottom)

HB_FUNC_STATIC( QMARGINS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMargins_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QMargins_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=int left() const
$method=|int|left|

$prototype=int top() const
$method=|int|top|

$prototype=int right() const
$method=|int|right|

$prototype=int bottom() const
$method=|int|bottom|

$prototype=void setLeft(int left)
$method=|void|setLeft|int

$prototype=void setTop(int top)
$method=|void|setTop|int

$prototype=void setRight(int right)
$method=|void|setRight|int

$prototype=void setBottom(int bottom)
$method=|void|setBottom|int

$extraMethods

#pragma ENDDUMP
