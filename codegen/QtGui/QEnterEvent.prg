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

$prototype=QEnterEvent(const QPointF &localPos, const QPointF &windowPos, const QPointF &screenPos)
$constructor=|new|const QPointF &,const QPointF &,const QPointF &

$deleteMethod

$prototype=QPoint pos() const
$method=|QPoint|pos|

$prototype=QPoint globalPos() const
$method=|QPoint|globalPos|

$prototype=int x() const
$method=|int|x|

$prototype=int y() const
$method=|int|y|

$prototype=int globalX() const
$method=|int|globalX|

$prototype=int globalY() const
$method=|int|globalY|

$prototype=const QPointF &localPos() const
$method=|const QPointF &|localPos|

$prototype=const QPointF &windowPos() const
$method=|const QPointF &|windowPos|

$prototype=const QPointF &screenPos() const
$method=|const QPointF &|screenPos|

#pragma ENDDUMP
