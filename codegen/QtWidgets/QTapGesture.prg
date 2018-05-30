%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGesture

   METHOD delete
   METHOD position
   METHOD setPosition

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QPointF position() const
$method=|QPointF|position|

$prototype=void setPosition(const QPointF & pos)
$method=|void|setPosition|const QPointF &

#pragma ENDDUMP
