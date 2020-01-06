%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QHelpEvent ( Type type, const QPoint & pos, const QPoint & globalPos )
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &

$deleteMethod

$prototype=const QPoint & globalPos () const
$method=|const QPoint &|globalPos|

$prototype=int globalX () const
$method=|int|globalX|

$prototype=int globalY () const
$method=|int|globalY|

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

$prototype=int x () const
$method=|int|x|

$prototype=int y () const
$method=|int|y|

#pragma ENDDUMP
