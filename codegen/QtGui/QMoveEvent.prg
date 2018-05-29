%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

   METHOD new
   METHOD delete
   METHOD oldPos
   METHOD pos

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMoveEvent ( const QPoint & pos, const QPoint & oldPos )
$constructor=|new|const QPoint &,const QPoint &

$deleteMethod

$prototype=const QPoint & oldPos () const
$method=|const QPoint &|oldPos|

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

#pragma ENDDUMP
