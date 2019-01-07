%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsSceneEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=Qt::MouseButton button () const
$method=|Qt::MouseButton|button|

$prototype=QPointF buttonDownPos ( Qt::MouseButton button ) const
$method=|QPointF|buttonDownPos|Qt::MouseButton

$prototype=QPointF buttonDownScenePos ( Qt::MouseButton button ) const
$method=|QPointF|buttonDownScenePos|Qt::MouseButton

$prototype=QPoint buttonDownScreenPos ( Qt::MouseButton button ) const
$method=|QPoint|buttonDownScreenPos|Qt::MouseButton

$prototype=Qt::MouseButtons buttons () const
$method=|Qt::MouseButtons|buttons|

$prototype=QPointF lastPos () const
$method=|QPointF|lastPos|

$prototype=QPointF lastScenePos () const
$method=|QPointF|lastScenePos|

$prototype=QPoint lastScreenPos () const
$method=|QPoint|lastScreenPos|

$prototype=Qt::KeyboardModifiers modifiers () const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=QPointF pos () const
$method=|QPointF|pos|

$prototype=QPointF scenePos () const
$method=|QPointF|scenePos|

$prototype=QPoint screenPos () const
$method=|QPoint|screenPos|

#pragma ENDDUMP
