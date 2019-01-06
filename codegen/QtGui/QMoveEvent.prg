%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

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
