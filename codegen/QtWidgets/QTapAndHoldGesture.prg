%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

$beginClassFrom=QGesture

   METHOD delete
   METHOD position
   METHOD setPosition
   METHOD setTimeout
   METHOD timeout

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QPointF position() const
$method=|QPointF|position|

$prototype=void setPosition(const QPointF & pos)
$method=|void|setPosition|const QPointF &

$prototype=static void setTimeout(int msecs)
$staticMethod=|void|setTimeout|int

$prototype=static int timeout()
$staticMethod=|int|timeout|

#pragma ENDDUMP
