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

$beginClassFrom=QGesture

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=qreal acceleration() const
$method=|qreal|acceleration|

$prototype=QPointF delta() const
$method=|QPointF|delta|

$prototype=QPointF lastOffset() const
$method=|QPointF|lastOffset|

$prototype=QPointF offset() const
$method=|QPointF|offset|

$prototype=void setAcceleration(qreal value)
$method=|void|setAcceleration|qreal

$prototype=void setLastOffset(const QPointF & value)
$method=|void|setLastOffset|const QPointF &

$prototype=void setOffset(const QPointF & value)
$method=|void|setOffset|const QPointF &

#pragma ENDDUMP
