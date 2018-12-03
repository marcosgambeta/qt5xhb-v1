%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=SwipeDirection horizontalDirection() const
$method=|QSwipeGesture::SwipeDirection|horizontalDirection|

$prototype=void setSwipeAngle(qreal value)
$method=|void|setSwipeAngle|qreal

$prototype=qreal swipeAngle() const
$method=|qreal|swipeAngle|

$prototype=SwipeDirection verticalDirection() const
$method=|QSwipeGesture::SwipeDirection|verticalDirection|

#pragma ENDDUMP
