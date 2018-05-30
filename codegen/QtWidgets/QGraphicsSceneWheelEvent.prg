%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsSceneEvent

   METHOD delete
   METHOD buttons
   METHOD delta
   METHOD modifiers
   METHOD orientation
   METHOD pos
   METHOD scenePos
   METHOD screenPos

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=Qt::MouseButtons buttons () const
$method=|Qt::MouseButtons|buttons|

$prototype=int delta () const
$method=|int|delta|

$prototype=Qt::KeyboardModifiers modifiers () const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=QPointF pos () const
$method=|QPointF|pos|

$prototype=QPointF scenePos () const
$method=|QPointF|scenePos|

$prototype=QPoint screenPos () const
$method=|QPoint|screenPos|

#pragma ENDDUMP
