%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD manhattanLength
   METHOD setX
   METHOD setY
   METHOD x
   METHOD y

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPoint()
$internalConstructor=|new1|

$prototype=QPoint(int xpos, int ypos)
$internalConstructor=|new2|int,int

//[1]QPoint()
//[2]QPoint(int xpos, int ypos)

HB_FUNC_STATIC( QPOINT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPoint_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPoint_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=int manhattanLength() const
$method=|int|manhattanLength|

$prototype=void setX(int x)
$method=|void|setX|int

$prototype=void setY(int y)
$method=|void|setY|int

$prototype=int x() const
$method=|int|x|

$prototype=int y() const
$method=|int|y|

$extraMethods

#pragma ENDDUMP
